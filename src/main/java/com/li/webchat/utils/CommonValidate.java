package com.li.webchat.utils;

import java.io.File;

//公共验证工具类
public class CommonValidate {

    //判断字符串是否为空，非空返回true，空返回false
    public static boolean validateEmpty(String str){
        try{
            return str != null && str.length() != 0;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    //判断字符串长度是否长于或者等于指定值，大于或者等于返回true, 小于返回false
    public static boolean validateLonth(String str, int n){
        try {
            return str.length() >= n;
        } catch (Exception e){
            e.printStackTrace();
            return false;
        }
    }

    //补全路径尾部
    public String checkPathEnd(String path){
        return path.endsWith("\\") ? path : path + "\\";
    }

    //补全字符串后缀斜杠
    public String checkStringEnd(String str){
        return str.endsWith("/") ? str : str + "/";
    }

    //判断文件是否存在
    public boolean validateFileExist(String path, String fileName){
        return new File(checkPathEnd(path) + fileName).exists();
    }

    //判断文件是否存在
    public boolean validateFileExist(String path){
        return new File(path).exists();
    }

    //循环判断文件是否存在，如果存在添加标记
    public String validateRepeatFileName(String path, String fileName, String mark){
        if(fileName.contains(".")){    //如果文件有后缀名
            while(validateFileExist(path,fileName)){
                String name = fileName.substring(0, fileName.lastIndexOf("."));
                String prefix=fileName.substring(fileName.lastIndexOf(".")+1);
                fileName = name + mark + "." + prefix;
                validateRepeatFileName(path, fileName, mark);
            }
        }else{      //如果没有后缀名
            while(validateFileExist(path, fileName)){
                fileName = fileName + mark;
                validateRepeatFileName(path, fileName, mark);
            }
        }
        return fileName;
    }


}
