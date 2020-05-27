package com.zjitc.alipay.config;

import java.io.FileWriter;
import java.io.IOException;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *修改日期：2017-04-05
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 */

public class AlipayConfig {

//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓

    // 应用ID,您的APPID，收款账号既是您的APPID对应支付宝账号
    public static String app_id = "2016091400509165";

    // 商户私钥，您的PKCS8格式RSA2私钥

    public static String merchant_private_key = "MIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQCw9RYvEpuTQBZ7APueYkf29iq5faQih1FqrTeXyGV9cXAkdq/zHFD0/3o6FdawLOPV/hXLTaXbt4uq8KCq0ag+VACCvlHt5fZUdgQ3aHXIjj8Vwbajb7updMMlO3h1Mi5fVZuuQpg4P6JguHh6pO4y6+fJJ/G9nuhgCzqh9kyxtZ9hbIzXRZ1Mkf5ipuAt6xWQoKsD9iI3cP07wDxYFHTkdeTaV4mXSAZCD8Teru7lyQcLUb48+z7cGtjbjW3VkwBgRq5q69uKI0cPg+PqPHquTt06xMxNYiVNQ1dbYzzOOGjONvuMluIC2gWuGHQg33D4lrIpa16Zm5qi4VXUbhulAgMBAAECggEAEUy0kX+JNBkU2YucDbzf+jXQsXel/zYpcHtkrvMJcP0REI+F3geLppf/VARki66ny3jempSJvXQxNFH38xsyDn3Z2u5ORiqwLUuoV95ffW7infblKw82Une2yEILIbH5NJrC8INULFOURU5jgOH044eKjnDYQkhxwUn3vnO8xbao+Ukb0fCsvdik1u4fgnDBV9NvRh5gy7s5IvC41jEGjCie+CFYSTbb/S0XAL0TZvd7WuEeevl2Zm8dk4p2JSh1XYfe/aD7ISR52ErCUToAuccSCOy/l2Xu5VZqjRy6K3hpzA64z8wNsewWiKINlGAstCsPDqkJuIgrAVg5YCbD9QKBgQDsS0NRFIT79aCcFmtMTKXchKkyqaIFXU8aNsHNm+Z8oZxUtzIqNOz/VOeDVgd5vVknFH8OBO1Zsi1FkQYFqC+M1GMmZ6QQ2OYHqtEr5WLPQCkgtaWZ9ywO9xMQKgZebO1zKbGGm5te2cN8CB5FDuVhTWgb45w140eq9HgI1bUEdwKBgQC/twWWlFfq4NtM+mdaKRnrOoZPVehGKZrMwd95r8I30wFk9Fg4Z4tJQJ9wP+P8Xk1/5RA/I48ZT5YSFhCW5sL3SGSmMyYyu82wrcEJ7g/439TK3VBm9A7CLYpiTVIwZwXxv4LTLXEVhXnFWq0ZhEL6cC0PRYaVSmkNOn0rk5gzwwKBgQCi+PHv7Rgfc3UX0rqkgETxSCougCL4Ujfpm5Sli/43PXvGTifyRlijblrTEbXMOFVSB+ftsmZFtAdXcMPXiP1qw12zMk5NNFvLM/xaqzYwPU9geQhDnd+sXqquPl3wKG7JPBtt/Mr3a3hRhoPiG3kHWE0S1zR5Uk2u0jgr18Gm1wKBgCCqr/ITftOP0u5P8JJlVHxHcaFNExH5ft4K3uheMWrPsnogRHP/+LTXpRM8X72d1/jF8DnB9l0quXiFd/gug+Qc2sGTD5wvcgH76Vumy+PtR9X1VgDk7yrZFa5gXHPQ6itiJYmUQaOYJcKiC8LATaVcveDPSPphPns5jyCAurt/AoGBAOuD5uoMiel24OcMFVii+i4sbARgsNnFMDkfTKGMRQ7wy/eEowBOrgRJmBWZ4dj2Nb4SDR+M9YhcOZO7huG2vjIVeEzn68xTnp6lCOD1+ukS4j0gOQQzlfBi1i+wSZhcSbTHzu8usbTzpMI9n8ZMt0xKldApSOrV7hVxaqyqwLy9";

    // 支付宝公钥,查看地址：https://openhome.alipay.com/platform/keyManage.htm 对应APPID下的支付宝公钥。

    public static String alipay_public_key = "MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAqJbe8Suv8wz+sH3hpCG7G9phMR33eDEUg92+SU8HtdGqoBM0eDpWeVATDliJOVwARVdgpYz4zfJKsfdAccKswPUpG23Q/SNGp+fJS05kCwEsNmNjSMMRiLRBMSH2KDp4dLxxFbS52HU6LCCBNFbRHb62odIREwI8eILiyMWeNpv2l1hznHSrfRHJkctxkjyKSaPLF/umsvrJ9+ezzB9QF1BFe7508rbhoTY61qDU33FE179TmFa/2cNjfFt8nOZzEllMd+c4fVh+K7Pr2oRsXYnZOWh3U6nJcuOAG6wGovxSFXlUfxMz2R+QXbp12jOtxkS9s2lzs9IHmvAIfJ9cawIDAQAB";

    // 服务器异步通知页面路径  需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String notify_url = "http://localhost:8080/user/alipay/notify_url.jsp";

    // 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    public static String return_url = "http://localhost:8080/myOrders.do";

    // 签名方式
    public static String sign_type = "RSA2";

    // 字符编码格式
    public static String charset = "utf-8";

    // 支付宝网关
    public static String gatewayUrl = "https://openapi.alipaydev.com/gateway.do";

    // 支付宝网关
    public static String log_path = "C:\\";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑

    /**
     * 写日志，方便测试（看网站需求，也可以改成把记录存入数据库）
     *
     * @param sWord 要写入日志里的文本内容
     */
    public static void logResult(String sWord) {
        FileWriter writer = null;
        try {
            writer = new FileWriter(log_path + "alipay_log_" + System.currentTimeMillis() + ".txt");
            writer.write(sWord);
        } catch (Exception e) {
            e.printStackTrace();
        } finally {
            if (writer != null) {
                try {
                    writer.close();
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }
    }
}

