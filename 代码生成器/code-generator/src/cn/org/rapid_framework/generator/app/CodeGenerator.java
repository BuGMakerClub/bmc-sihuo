package cn.org.rapid_framework.generator.app;

import cn.org.rapid_framework.generator.GeneratorFacade;
import cn.org.rapid_framework.generator.GeneratorProperties;
import org.w3c.dom.*;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import java.lang.System;
import java.net.URL;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/**
 * Created with IntelliJ IDEA.
 * User: shiw
 * Date: 12-6-12
 * Time: 上午12:14
 * To change this template use File | Settings | File Templates.
 */
public class CodeGenerator {
	
    final private static String moduleConfigFile = "/generatorConfig.xml";

    public static void main(String[] args) throws Exception {

    	//指定的模块
        String[] expectedModules =  null;

        if(args != null &&args.length!=0&& (args[0].equals("?")||args[0].equals("/?")||args[0].equals("-help")||args[0].equals("--help")))
        {
            System.out.println("Usage: Generator [module1,module2,...], \r\n if you want to generate all modules, just type \"Generator\" and return.");
            return;
        }

        //Get modules to be genarated
        if(args == null || args.length==0)
        {
            System.out.println("Generate all modules.");
        }else
        {
            //modules from the command line
            System.out.println("Generate module:"+args[0]);
            expectedModules = args[0].split(",");
        }


        //generate tables
        CodeGenerator generator = new CodeGenerator();

        //加载所有配置的模块
        List<Module> modules = generator.loadModules();
        if(expectedModules == null)
        {
            //generate all
            for(int i=0;i<modules.size();i++)
            {
            	//生成模块
                generator.generateModule(modules.get(i));
            }
        }else
        {
            //generate expected module
            for(String str:expectedModules)
            {
                Module module = null;
                for(int i=0;i<modules.size();i++)
                {
                    if((""+str).equals(modules.get(i).getName()))
                        module = modules.get(i);
                }

                if(module != null)
                {
                    generator.generateModule(module);
                }else
                {
                    System.out.println("Module: \""+str+"\" not found, just ignored");
                }

            }
        }
    }


    private void generateModule(Module module)
            throws Exception
    {
        if(module == null ) return;

        //set additional properties
        System.out.println("Begin generate module:"+module.getName());
        if(module.getProperties() != null )
        {
            GeneratorProperties.getProperties().putAll(module.getProperties());
        }

        GeneratorFacade gf = new GeneratorFacade();

        //backup the output dir
        try{
        	gf.deleteOutRootDir();
        }catch (Exception e){
        	e.printStackTrace();
        }

        //remove prefix
        String tableRemovePrefixes = GeneratorProperties.getProperties().get("tableRemovePrefixes").toString();
        String [] tableRemovePrefixesList = tableRemovePrefixes.split(",");

        String tableNames[] = module.getTables();
        for(int i=0;tableNames!=null && i<tableNames.length;i++)
        {
            if(tableNames[i] != null && !"".endsWith(tableNames[i].trim()))
            {
                System.out.println("Process table["+tableNames[i].trim()+"]");
                String tableName =  tableNames[i].trim().toUpperCase();
                //remove prefix
                for(String prefix:tableRemovePrefixesList)
                {
                    if(tableName.startsWith(prefix.toUpperCase()))
                    {
                        //remove
                        tableName = tableName.substring(tableName.indexOf(prefix.toUpperCase())+prefix.length());
                        break;
                    }
                }

                GeneratorProperties.setProperty("tablename",tableName);
                GeneratorProperties.setProperty("jspBaseName",tableName.toLowerCase().replace("_","-"));
                gf.generateByTable(tableNames[i].trim(),module.getTemplateRoot());
            }
        }

    }


    private List<Module> loadModules()
    {
        List<Module> modulesRet = new ArrayList<Module>();

        URL file = this.getClass().getResource(moduleConfigFile);
        Document doc;
      	DocumentBuilder builder;
      	DocumentBuilderFactory fac = DocumentBuilderFactory.newInstance();
      	try
      	{

      	  builder = fac.newDocumentBuilder();
      	  doc = builder.parse(file.openStream());
      	  //get the document root
      	  Element el = doc.getDocumentElement();

      	  if(el != null)
      	  {
      	    el.normalize();
            //get url
      	    NodeList modules = el.getElementsByTagName("module");

      	    //No url privileges configed
      	    if(modules == null) return modulesRet;

      	    if(modules.getLength()<=0)
      	          System.out.println("Cannot find any configured module");

      	    System.out.println("No. of module configured:"+modules.getLength());
      	    for(int i=0;i<modules.getLength();i++)
      	    {
                Module moduleConfig = new Module();

      	        NamedNodeMap attrL  = modules.item(i).getAttributes();
                String name = attrL.getNamedItem("name").getNodeValue();
                String templateRoot = attrL.getNamedItem("templateRoot")!=null ?attrL.getNamedItem("templateRoot").getNodeValue():"template";

                Properties properties = new Properties() ;
                String  tables[];

                System.out.println("\n****Config for module \""+name+"\":");
                System.out.println(" **name:"+name);
                //get properties from config
                String propertiesStr ="" ;
                String tablesStr = "";
                NodeList childList =  modules.item(i).getChildNodes();
                for(int j=0;childList!=null && j<childList.getLength();j++)
                {
                    Node node = childList.item(j);
                    if("properties".equals(node.getNodeName()))
                    {
                        propertiesStr = (""+node.getFirstChild().getNodeValue()).replace("\r","");
                    }else if("tables".equals(node.getNodeName()))
                    {
                        tablesStr = (""+node.getFirstChild().getNodeValue()).replace("\r","");
                    }
                }

                //Parse properties
                System.out.println(" **Properties:");
                String[]  p = propertiesStr.split("\n");
                String keyPair[];
                for(int k=0;p!=null&&k<p.length;k++)
                {
                    keyPair = p[k].split("=");
                    if(keyPair!=null && keyPair.length>=2)
                    {
                        keyPair[0] = keyPair[0] != null?keyPair[0].trim():"";
                        keyPair[1] = keyPair[1] != null?keyPair[1].trim():"";
                        if(!"".equals(keyPair[0]))
                        {
                            properties.put(keyPair[0],keyPair[1]);
                            properties.put(keyPair[0]+"_dir",keyPair[1].replace(".","/"));
                            System.out.println("   property:"+keyPair[0].trim()+"="+keyPair[1].trim());
                        }
                    }
                    else if(keyPair!=null && keyPair.length==1)
                    {
                        keyPair[0] = keyPair[0] != null?keyPair[0].trim():"";
                        if(!"".equals(keyPair[0]))
                        {
                            properties.put(keyPair[0],"");
                            properties.put(keyPair[0]+"_dir","");
                            System.out.println("   property:"+keyPair[0]+"=");
                        }
                    }

                }

                //parse tables
                System.out.println(" **Tables");
                String[]  t = tablesStr.split("\n");
                tables = new String[t.length] ;
                for(int k=0;t!=null&&k<t.length;k++)
                {
                    if(!"".equals((t[k]+"").trim()))
                    {
                        tables[k] = (t[k]+"").trim();
                        System.out.println("   table:"+tables[k]);
                    }
                }

                //set values to  moduleConfig
                moduleConfig.setName(name);
                moduleConfig.setProperties(properties);
                moduleConfig.setTables(tables);
                moduleConfig.setTemplateRoot(templateRoot);

                //add module to module list
                modulesRet.add(moduleConfig);
              }
      	  }
      	  else
      	  {
      	      System.out.println("No document element!");
      	  }

      	}
      	catch (Exception ex)
      	{
      	    System.out.println(moduleConfigFile+"file parse exception");
            ex.printStackTrace();
      	}

        return modulesRet;
    }
}
