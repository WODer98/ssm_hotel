package com.wod.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Random;

/**
 * @author 童达
 * @create 2021-06-19-8:43
 **/
public class BookIdUtils {

    public static String bookId(){
        SimpleDateFormat dmDate = new SimpleDateFormat("yyyyMMddHHmmss"); // 获取当前时间

        Random random = new Random(); // 定义随机数
        int ran = random.nextInt(1000000); // 随机数长度位数

        Date date = new Date();
        String dateran = dmDate.format(date);
        String randomMath = dateran+ran;

        return randomMath;
    }
}
