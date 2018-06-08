package com.shopping.utils;

import java.util.Properties;

import javax.mail.Authenticator;
import javax.mail.Message;
import javax.mail.Message.RecipientType;
import javax.mail.MessagingException;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.AddressException;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;


/*
 * 邮件发送工具类
 */
public class MailUtils {
	/*
	 * 发送邮件的方法
	 */
	public static void sendMail(String to,String code){
		/*
		 * 1.获得一个session对象
		 * 2.创建一个代表邮件的对象message
		 * 3.发送邮件Transport
		 */
		//1.获得连接对象
		Properties props=new Properties();
		props.setProperty("mail.host", "localhost");
		Session session=Session.getInstance(props, new Authenticator() {
			@Override
			protected PasswordAuthentication getPasswordAuthentication(){
				return new PasswordAuthentication("service@shop.com", "service");
			}
		});
		//2.创建邮件对象
		Message message=new MimeMessage(session);
		
		try {
			//设置发件人
			message.setFrom(new InternetAddress("service@shop.com"));
			//设置收件人
			message.addRecipient(RecipientType.TO,new InternetAddress(to) );
			//设置发送标题
			message.setSubject("这是一封来自在线购物系统的官方激活邮件^_^");
			//设置邮件正文
			message.setContent("<h1>在线购物系统官方激活邮件！请点击下面的链接完成激活哦(*^▽^*)</h1><h3><a href='http://192.168.43.248:8080/shopping/user_active.action?code="+code+"'>http://192.168.43.248:8080/shopping/user_active.action?code="+code+"</a></h3>", "text/html;charset=UTF-8");
			//发送邮件
			Transport.send(message);
		} catch (AddressException e) {
			e.printStackTrace();
		}catch (MessagingException e) {
			e.printStackTrace();
		}
	}
	public static void main(String[] args) {
		sendMail("aaa@shop.com", "11111111111");
	}
}
