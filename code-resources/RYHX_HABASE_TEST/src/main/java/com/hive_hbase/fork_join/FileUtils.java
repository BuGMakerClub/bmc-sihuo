package com.hive_hbase.fork_join;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.File;
import java.io.IOException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.nio.file.*;
import java.nio.file.attribute.BasicFileAttributes;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by d on 2015/10/24.
 *文件操作
 */
public class FileUtils {
    private static final Logger LOGGER = LoggerFactory.getLogger(FileUtils.class);

    /**
     * 安全删除文件
     * @param path
     */
    public static void removeFile(String path){
        if(path == null || Files.notExists(Paths.get(path))) return;
        Path p  = Paths.get(path);
        try {
            Files.deleteIfExists(p);
        } catch (IOException e) {
            LOGGER.error("delete file is error...." , e);
        }
    }

    /**
     * 创建一个新的文件，并未该文件首次添加内容
     * @param path 文件的路径
     * @param data 首次追加的内容
     */
    public static  void newFile(String path , String data ){
        Path filepath = createFile(path);
        BufferedWriter bw = null;
        try {
        	bw= Files.newBufferedWriter(filepath, Charset.forName("UTF-8"), StandardOpenOption.WRITE);
            bw.write(data);
            bw.flush();
        } catch (IOException e) {
            LOGGER.error("new File is error.." , e);
        }finally{
        	try {
        		if(bw != null)
				bw.close();
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
    }


    /**
     * 创建文件
     * @param path 文件路径
     * @return
     */
    public  static Path createFile(String path){
        Path filepath  = Paths.get(path);
        if(!Files.exists(filepath)){
            try {
                Files.createDirectories(filepath.getParent());
                filepath = Files.createFile(filepath);
            } catch (IOException e) {
                LOGGER.error("create File is error...." , e);
            }
        }
        return filepath;
    }


    /**
     * 追加内容到文件中
     * @param data  追加的内容
     * @param path 文件路径
     */
    public  static void appendLogFile(String data , String path  ){
    	BufferedWriter bw = null;
    	try{
    		bw = Files.newBufferedWriter(Paths.get(path), StandardCharsets.UTF_8,StandardOpenOption.APPEND);
            bw.append(data);
            bw.flush();
        } catch (IOException e) {
           LOGGER.error("append file is error..." , e);
        }finally{
        	try {
        		if(bw != null){
        			bw.close();
        		}
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
    }

    /**
     * 得到父目录下的所有子目录
     * @param folderPath 父目录的路径
     * @return
     */
    public static List<String> takeChidrenFolder(String folderPath){
        final Path parentFolder = Paths.get(folderPath);
        final List<String> childrenPath = new ArrayList<String>();
        try {
            Files.walkFileTree(parentFolder,
                    new SimpleFileVisitor<Path>(){
                        @Override
                        public FileVisitResult preVisitDirectory(Path dir, BasicFileAttributes attrs) throws IOException {
                            if(dir.getParent().endsWith(parentFolder)){
                                childrenPath.add(dir.toString());
                            }
                            return super.preVisitDirectory(dir, attrs);
                        }
                    });
        } catch (IOException e) {
            LOGGER.error("takeChidrenFolder folder is error..." , e);
        }
        return childrenPath;

    }

    /**
     * 移动文件
     * @param sourcePath 文件路径
     * @param targetPath 移动到目标的路径
     */
    public static void moveFile(Path sourcePath , Path targetPath){
        try {
            Path fileName = sourcePath.getFileName();
            if(!Files.exists(targetPath)){
                Files.createDirectories(targetPath);
            }
            Path targetFile = Paths.get(targetPath.toString()+ File.separatorChar + fileName.toString());
            Files.move(sourcePath, targetFile, StandardCopyOption.REPLACE_EXISTING);//�ļ��ƶ�
        } catch (IOException e) {
            LOGGER.error("move File is error..." ,e);
        }
    }

    /**
     * 读取文件的内容
     * @param filePath 文件的路径
     * @return
     */
    public static  String readFileCtx(Path filePath){
        StringBuilder builder = new StringBuilder();
        BufferedReader br = null;
        try {
        	br= Files.newBufferedReader(filePath, StandardCharsets.UTF_8);
            String temp = "";
            while((temp = br.readLine()) != null) {
                builder.append(temp);
            }
        }catch (Exception e){
            LOGGER.error("read File is error..." , e);
        }finally{
        	try {
        		if(br != null){
        			br.close();
        		}
			} catch (IOException e) {
				e.printStackTrace();
			}
        }
        return builder.toString();
    }

    /**
     * 遍历文件夹下的所有文件，不包括文件夹
     * @param path 文件夹路径
     * @return
     */
    public static  List<Path> walkingPath(Path path) {
        final List<Path> filepaths = new ArrayList<Path>();
        try {
            Files.walkFileTree(path,
                    new SimpleFileVisitor<Path>(){
                        @Override
                        public FileVisitResult visitFile(Path file, BasicFileAttributes attrs) throws IOException {
                            filepaths.add(file);
                            return super.visitFile(file, attrs);
                        }
                    });
        } catch (IOException e) {
            LOGGER.error("walking folder is error..." , e);
        }
        return filepaths;
    }
}
