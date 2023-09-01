package bankers.fisa.controller;


import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.util.LinkedMultiValueMap;
import org.springframework.util.MultiValueMap;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.util.UriComponentsBuilder;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletResponse;

@RestController
public class MainController {
	
	@GetMapping("/")
	public ModelAndView indexPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("index");
		return mv;
	}
	
	@PostMapping("/login")
	public ModelAndView loginPage(@RequestParam("loginID") String id, @RequestParam("loginPW") String pw,
			HttpServletResponse response) {
		System.out.println("salesLogin 실행");
		ModelAndView mv = new ModelAndView();
		if (!login(id, pw)) {
			mv.setViewName("index");
			return mv;
		}
		
		Cookie cookie = new Cookie("id", id);
		cookie.setDomain("localhost");
		cookie.setPath("/");
		cookie.setMaxAge(30 * 60);
		cookie.setSecure(true);
		response.addCookie(cookie);
		
		mv.setViewName("mainpage");
		return mv;
	
	}
	
	private boolean login(String id, String pw) {
		URI uri = UriComponentsBuilder.fromUriString("http://localhost:7070").path("/center/salesLogin").encode()
				.build().toUri();

		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
		parameters.add("loginID", id);
		parameters.add("loginPW", pw);
		
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> responseEntity = restTemplate.postForEntity(uri, parameters, String.class);
		
		if (responseEntity.getBody().equals("true")) {
			return true;
		} else {
			return false;
		}
	}

	@GetMapping("/newcustomer")
	public ModelAndView newCustomerPage() {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("newcustomer");
		return mv;
	}

	@PostMapping("/registration")
	public ModelAndView registration(@RequestParam("companyName") String companyName,
			@RequestParam("companyAddress") String companyAddress, @RequestParam("companyNumber") String companyNumber,
			@RequestParam("phoneNumber") String phoneNumber, @RequestParam("company") String company,
			@RequestParam("credits") String credits, @RequestParam("companyEmail") String companyEmail,
			@RequestParam("tableJob") LinkedList<String> tableJob, @RequestParam("tableID") LinkedList<String> tableID,
			@RequestParam("tablePW") LinkedList<String> tablePW,
			@RequestParam("tableEmail") LinkedList<String> tableEmail) {

		ModelAndView mv = new ModelAndView();
		URI uri = UriComponentsBuilder.fromUriString("http://localhost:7070").path("/center/getcustmaxnumber").encode()
				.build().toUri();
		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> responseEntity = restTemplate.postForEntity(uri, parameters, String.class);

		String responseBody = responseEntity.getBody();
		int maxEmpNumberInt = Integer.parseInt(responseBody);
		maxEmpNumberInt++;

		if (tableCust(tableJob, tableID, tablePW, tableEmail, maxEmpNumberInt) && createCust(companyName,
				companyAddress, companyNumber, phoneNumber, company, credits, companyEmail)) {
			mv.setViewName("mainpage");
			return mv;
		}

		mv.setViewName("newcustomer");
		return mv;
	}

	private boolean createCust(String companyName, String companyAddress, String companyNumber, String phoneNumber,
			String company, String credits, String companyEmail) {

		URI uri = UriComponentsBuilder.fromUriString("http://localhost:7070").path("/center/createCust").encode()
				.build().toUri();

		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();

		parameters.add("companyName", companyName);
		parameters.add("companyAddress", companyAddress);
		parameters.add("companyNumber", companyNumber);
		parameters.add("phoneNumber", phoneNumber);
		parameters.add("company", company);
		parameters.add("credits", credits);
		parameters.add("companyEmail", companyEmail);

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> responseEntity = restTemplate.postForEntity(uri, parameters, String.class);

		if (responseEntity.getBody().equals("true")) {
			return true;
		} else {
			return false;
		}
	}

	private boolean tableCust(LinkedList<String> tableJob, LinkedList<String> tableID, LinkedList<String> tablePW,
			LinkedList<String> tableEmail, int maxEmpNumberInt) {
		int maxNumber = maxEmpNumberInt;
		String maxEmpNumberStr = String.valueOf(maxNumber);

		URI uri = UriComponentsBuilder.fromUriString("http://localhost:7070").path("/center/tableCust").encode().build()
				.toUri();
		RestTemplate restTemplate = new RestTemplate();
		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();

		for (int i = 0; i < tableJob.size(); i++) {
			System.out.println(tableJob.get(i));
			parameters.add("tableJob", tableJob.get(i));
			parameters.add("tableID", tableID.get(i));
			parameters.add("tablePW", tablePW.get(i));
			parameters.add("tableEmail", tableEmail.get(i));
			parameters.add("maxEmpNumberStr", maxEmpNumberStr);

			ResponseEntity<String> responseEntity = restTemplate.postForEntity(uri, parameters, String.class);
			parameters = new LinkedMultiValueMap<>();
		}
		return true;
	}

	@GetMapping("/retaincustomer")
	public ModelAndView retaincustomer(@RequestParam("companyName") String companyName) {
		ArrayList<String> number = new ArrayList<String>();
		ArrayList<String> custnumber = new ArrayList<String>();
		ArrayList<String> custpos = new ArrayList<String>();
		ArrayList<String> custid = new ArrayList<String>();
		ArrayList<String> custpw = new ArrayList<String>();
		ArrayList<String> custemail = new ArrayList<String>();

		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
		parameters.add("companyName", companyName);
		URI uri = UriComponentsBuilder.fromUriString("http://localhost:7070").path("/center/retaincustomer").encode()
				.build().toUri();

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> responseEntity = restTemplate.postForEntity(uri, parameters, String.class);
		ModelAndView mv = new ModelAndView();

		String[] custlist = responseEntity.getBody().toString().split(",");

		for (int i = 0; i < custlist.length; i++) {
			String[] custInfo = custlist[i].split("_");
			number.add(custInfo[0]);
			custnumber.add(custInfo[1]);
			custemail.add(custInfo[2]);
			custid.add(custInfo[3]);
			custpw.add(custInfo[4]);
			custpos.add(custInfo[5]);
		}

		mv.addObject("number", number);
		mv.addObject("custnumber", custnumber);
		mv.addObject("custpos", custpos);
		mv.addObject("custid", custid);
		mv.addObject("custpw", custpw);
		mv.addObject("custemail", custemail);

		mv.setViewName("customermanagement");

		mv = custInfo(companyName, mv);
		return mv;
	}

	private ModelAndView custInfo(String companyName, ModelAndView mv) {
		
		URI uri = UriComponentsBuilder.fromUriString("http://localhost:7070").path("/center/custInfo").encode().build()
				.toUri();

		MultiValueMap<String, String> parameters = new LinkedMultiValueMap<>();
		parameters.add("companyName", companyName); // 파라미터 설정 위치를 여기로 이동

		RestTemplate restTemplate = new RestTemplate();
		ResponseEntity<String> responseEntity = restTemplate.postForEntity(uri, parameters, String.class);
		String cust = responseEntity.getBody().toString();

		
		String[] custInfo = cust.split("_");
		String number = custInfo[0];
		String companyname = custInfo[1];
		String companyEmail = custInfo[4]; 
		String companyAddress = custInfo[3];
		String companyNumber = custInfo[6];
		String phoneNumber = custInfo[5];
		String company = custInfo[2];
		String custtotalcredit = custInfo[7];
		String custmaxcredit = custInfo[8];
		String custcredit = custInfo[9];
		String submitdate = custInfo[10];
		
		mv.addObject("number", number);
		mv.addObject("companyname", companyname);
		mv.addObject("companyEmail", companyEmail);
		mv.addObject("companyAddress", companyAddress);
		mv.addObject("companyNumber", companyNumber);
		mv.addObject("phoneNumber", phoneNumber);
		mv.addObject("company", company);
		mv.addObject("custtotalcredit", custtotalcredit);
		mv.addObject("custmaxcredit", custmaxcredit);
		mv.addObject("custcredit", custcredit);
		mv.addObject("submitdate", submitdate);
		return mv;
	}
}
