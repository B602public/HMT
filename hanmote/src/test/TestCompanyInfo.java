package test;

import java.util.Date;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import com.hanmote.entity.CompanyBaseInfo;
import com.hanmote.service.ISupplierBaseInfoServ;

public class TestCompanyInfo {
	
	@Test
	public void testAddComInfo(){
		ApplicationContext ac = new ClassPathXmlApplicationContext(new String[] {"classpath:applicationContext.xml" });
		ISupplierBaseInfoServ sbis = (ISupplierBaseInfoServ)ac.getBean("SupplierBaseInfoServ");
		CompanyBaseInfo sbi = new CompanyBaseInfo();
		sbi.setSupplierChineseName("东风汽车");
		sbi.setSupplierEnglishName("dongfeng");
		sbi.setCompanyWebsite("www.dongfeng.com");
		sbi.setCompanyRegisterDate(new Date());
		
		sbis.save(sbi);
		
	}
}
