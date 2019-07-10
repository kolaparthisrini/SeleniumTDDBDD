package com.capgemini.sel.SeleniumUS;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;

import cucumber.api.java.en.*;

public class GoogleStepDefExample {

	WebDriver driver = new ChromeDriver();

	static
	{
		System.setProperty("webdriver.chrome.driver",
				"C:\\soft\\chromedriver_win32\\chromedriver.exe");

	}
	@When("I type query as {string}")
	public void i_type_query_as(String string) {

		// driver.get("http://www.google.com");
		driver.get(string);
		driver.findElement(By.id("twotabsearchtextbox")).sendKeys("Apple");
	}

	@Then("Iclick submit Button")
	public void iclick_submit_Button() {
		// Write code here that turns the phrase above into concrete actions
		driver.findElement(By.className("nav-input")).submit();
	}

	@Then("Page should Redrect and the Title{string} Should be Displayed")
	public void page_should_Redrect_and_the_Title_Should_be_Displayed() {
		// Write code here that turns the phrase above into concrete actions
		System.out.print(driver.getTitle());
		driver.close();
	}

	public static void main(String... a) {

		String name = "http://www.amazon.com";
		GoogleStepDefExample ex = new GoogleStepDefExample();
		ex.i_type_query_as(name);
		ex.iclick_submit_Button();
		ex.page_should_Redrect_and_the_Title_Should_be_Displayed();
	}

}
