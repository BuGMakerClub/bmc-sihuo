package com.pateo.code.generator.run;

import java.util.List;

import com.pateo.code.generator.CodeGenerator;
import com.pateo.code.generator.Module;

public class GeneratorRun {

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
        List<Module> modules = generator.loadModules(moduleConfigFile);
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
}
