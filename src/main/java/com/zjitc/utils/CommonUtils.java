package com.zjitc.utils;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;

public class CommonUtils {
    public static String getUUID() {
        return UUID.randomUUID().toString().replace("-", "");
    }

    //日期转成格式化字符串
    public static String dateToString(Date date) {
        SimpleDateFormat sf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sf.format(date);
    }
}
