package com.tuto.common.util;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MD5Utils {

//    public static String getMd5(String inStr)
//    {
//        String outStr=null;
//        if(inStr ==null)
//        {
//            outStr = null;
//        }
//        else if("".equals(inStr))
//        {
//            outStr = "";
//        }
//        else
//        {
//            try
//            {
//                MessageDigest md = MessageDigest.getInstance("MD5");
//                md.update(inStr.getBytes());
//                byte b[] = md.digest();
//                StringBuffer buf = new StringBuffer();
//                for(int i=1;i<b.length;i++)
//                {
//                    int c = b[i]>>>4 & 0xf;
//                    buf.append(Integer.toHexString(c));
//                    c = b[i]& 0xf;
//                    buf.append(Integer.toHexString(c));
//                }
//                outStr = buf.toString();
//            }
//            catch (NoSuchAlgorithmException e)
//            {
//                // TODO Auto-generated catch block
//                e.printStackTrace();
//            }
//        }
//        return outStr;
//    }
//    /** 16进制的字符数组 */
//    private final static String[] hexDigits = { "0", "1", "2", "3", "4", "5", "6", "7", "8", "9", "a", "b", "c", "d",
//            "e", "f" };
//
//    /**
//     *
//     *
//     * @param source
//     *            需要加密的原字符串
//     * @param encoding
//     *            指定编码类型
//     * @param uppercase
//     *            是否转为大写字符串
//     * @return
//     */
//    public static String MD5Encode(String source, String encoding, boolean uppercase) {
//        String result = null;
//        try {
//            result = source;
//            // 获得MD5摘要对象
//            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
//            // 使用指定的字节数组更新摘要信息
//            messageDigest.update(result.getBytes(encoding));
//            // messageDigest.digest()获得16位长度
//            result = byteArrayToHexString(messageDigest.digest());
//
//        } catch (Exception e) {
//            e.printStackTrace();
//        }
//        return uppercase ? result.toUpperCase() : result;
//    }
//
//    /**
//     * 转换字节数组为16进制字符串
//     *
//     * @param bytes
//     *            字节数组
//     * @return
//     */
//    private static String byteArrayToHexString(byte[] bytes) {
//        StringBuilder stringBuilder = new StringBuilder();
//        for (byte tem : bytes) {
//            stringBuilder.append(byteToHexString(tem));
//        }
//        return stringBuilder.toString();
//    }
//
//    /**
//     * 转换byte到16进制
//     *
//     * @param b
//     *            要转换的byte
//     * @return 16进制对应的字符
//     */
//    private static String byteToHexString(byte b) {
//        int n = b;
//        if (n < 0) {
//            n = 256 + n;
//        }
//        int d1 = n / 16;
//        int d2 = n % 16;
//        return hexDigits[d1] + hexDigits[d2];
//    }

    /**
     * 32位MD5加密方法
     * 16位小写加密只需getMd5Value("xxx").substring(8, 24);即可
     *
     * @param sSecret
     * @return
     */
    public static String getMd5Value(String sSecret) {
        try {
            MessageDigest bmd5 = MessageDigest.getInstance("MD5");
            bmd5.update(sSecret.getBytes());
            int i;
            StringBuffer buf = new StringBuffer();
            byte[] b = bmd5.digest();// 加密
            for (int offset = 0; offset < b.length; offset++) {
                i = b[offset];
                if (i < 0)
                    i += 256;
                if (i < 16)
                    buf.append("0");
                buf.append(Integer.toHexString(i));
            }
            return buf.toString();
        } catch (NoSuchAlgorithmException e) {
            e.printStackTrace();
        }
        return "";
    }

}

