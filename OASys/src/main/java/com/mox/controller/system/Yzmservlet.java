package com.mox.controller.system;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class Yzmservlet {
	
	@RequestMapping("YZM")
	protected void LoginYZM(HttpServletRequest req,HttpServletResponse resp) throws Exception {
		//定义验证码的宽高
				int width = 100,height=55;
				//生成一张图片
				BufferedImage img = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);
				//为图片添加一只画笔
				Graphics2D g = img.createGraphics();
				//设置画笔颜色
				g.setColor(Color.WHITE);
				//填充图片
				g.fillRect(0, 0, width, height);
				
				//生成4个随机字母或数字
				Random ran = new Random();
				String s = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPASDFGHJKLZXCVBNM1234567890";
				char[] c = s.toCharArray();
				//设置系统的验证码
				String yzm = "";
				//设置字体
				g.setFont(new Font("微软雅黑", Font.ITALIC, 36));
				
				for (int i = 0; i < 4; i++) {
					char a = c[ran.nextInt(c.length)];
					yzm +=a;
					//设置随机颜色
					int r= ran.nextInt(200);
					int e = ran.nextInt(200);
					int b = ran.nextInt(200);
					g.setColor(new Color(r,e,b));
					
					//把随机字母写在img纸上面
					g.drawString(String.valueOf(a), i*25, 35);
				}
				
				//再画10个干扰字
				g.setFont(new Font("楷体", Font.BOLD, 10));
				g.setColor(Color.GRAY);
				for (int i = 0; i < 10; i++) {
					char a = c[ran.nextInt(c.length)];
					g.drawString(String.valueOf(a), ran.nextInt(width), ran.nextInt(height));
				}
				//把验证码字符串放到session中, 届时登录去和文本框的值验证
				req.getSession().setAttribute("yzm", yzm);
				System.out.println(yzm);
				//释放画笔资源
				g.dispose();
				//创建响应流(从后台 画图片 到前台页面)
				ServletOutputStream out = resp.getOutputStream();
				//利用图片IO流进行发送
				ImageIO.write(img, "jpg", out);
				//关闭
				out.close();
	}
}
