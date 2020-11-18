package com.mithun.controller;

import org.springframework.http.MediaType;

import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.sql.Blob;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.Month;
import java.time.Period;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.*;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.mithun.bean.*;
import com.mithun.dao.*;
import com.mithun.services.DocStorageService;
import com.mithun.services.Travel_diary_Trip_service;

@Controller
public class Travel_diary_controller {
	
	@Autowired 
	DocStorageService docStorageService;
	
	@Autowired 
	DocRepository docRepository;

	@Autowired
	Travel_diary_Trip_service tds;
	
	@Autowired 
	Travel_diary_Expenditure tdexpdao;
	
	@Autowired 
	Travel_diary_Expenditure_JPA tdexpjpadao;
	
	@Autowired 
	Travel_diary_Gallery tdgldao;
	
	@Autowired 
	Travel_diary_No_of_stops_JPA tdnfsjpadao;
	
	@Autowired 
	Travel_diary_No_of_stops tdnfsdao;
	
	@Autowired 
	Travel_diary_Stay tdstdao;
	
	@Autowired 
	Travel_diary_Timeline_map tdtmlndao;
	
	@Autowired 
	Travel_diary_Timeline_map_JPA tdtmlnjpadao;
	
	@Autowired 
	Travel_diary_Total_time tdttdao;
	
	@Autowired 
	Travel_diary_Travel_JPA tdtrvljpadao;
	
	@Autowired 
	Travel_diary_Travel tdtrvldao;
	
	@Autowired 
	Travel_diary_Trip tdtpdao;
	
	@Autowired 
	Travel_diary_Trip_JPA tdtpjpadao;
	
	@RequestMapping("/")
	public ModelAndView Home() {
		ModelAndView mv=new ModelAndView("Index");
		List<Doc> docs = docStorageService.getFiles();
		Collections.reverse(docs);
		mv.addObject("img", docs);
		return mv;
	}
	
	@RequestMapping("/Travel log")
	public ModelAndView Travel_log() {
		ModelAndView mv=new ModelAndView("Travel log");
		List<Trip> travel=(List<Trip>) tdtpjpadao.findAll();
		System.out.println(travel);
		Collections.reverse( travel);
		mv.addObject("travel", travel);
		return mv;
	}
	
	@RequestMapping("/Insert into SQL")
	public ModelAndView CallSQL() {
		ModelAndView mv=new ModelAndView("Insert into SQL");
		return mv;
	}
	
	@RequestMapping("/Timeline/{source}/{destination}")
	public ModelAndView Timeline(@PathVariable String source, @PathVariable String destination)
	{
		ModelAndView mv=new ModelAndView("Timeline");
		String trip_id=tds.getTrip_id(source, destination);
		String exp_id=tds.getExpenditureID(trip_id);
		String travel_id=tds.getTravelId(trip_id, exp_id);
		String descp=tds.getDescription(travel_id, trip_id);
		String timeline_id=tds.getTimelineId(source, destination);
		String stop_name=tds.getStopName(trip_id, timeline_id);
		float dis_cov=tds.getDistanceCovered(travel_id, trip_id);
		float food_tot=tds.getFoodTotal(exp_id);
		double fuel_tot=tds.getFuelTotal(exp_id);
		double fuel_used=tds.getFuelUsed(travel_id, trip_id);
		float msc_tot=tds.getMiscellaneousTotal(exp_id);
		double stay_tot=tds.getStayTotal(exp_id);
		float tot_time=tds.getTotalTime(travel_id, trip_id);
		double total_expns= food_tot+ fuel_tot+ msc_tot+ stay_tot;
		
		mv.addObject("source", source);
		mv.addObject("destination", destination);
		
		List<String> timelineList=new ArrayList<String>();
		timelineList.add("s");
		String[] str=stop_name.split(":");
		for(int i=0;i<str.length;i++)
		{
			timelineList.add(str[i]);
		}
		timelineList.add("d");
		
		mv.addObject("timelineList", timelineList);
		
		mv.addObject("description", descp);
		
		mv.addObject("food", food_tot);
		
		mv.addObject("fuel_tot", fuel_tot);
		
		mv.addObject("miscl", msc_tot);
		
		mv.addObject("stay", stay_tot);
		
		mv.addObject("total_expns", total_expns);
		
		mv.addObject("dist_cov", dis_cov);
		
		mv.addObject("fuel_used", fuel_used);
		
		mv.addObject("total_time", tot_time);

		mv.addObject("tid",trip_id);
		
		List<Doc> docs = docStorageService.getFiles(trip_id);
		
		mv.addObject("docs", docs);
		
		return mv;
		
	}
	@RequestMapping("/Doc")
	public ModelAndView Docs() {
		ModelAndView mv=new ModelAndView("Doc");
		return mv;
	}
	SimpleDateFormat formatter = new SimpleDateFormat("dd-MM-yyyyHH:mm:ss");  
    Date date = new Date(); 
	@RequestMapping("/inserttosql")
	public ModelAndView InsertIntoSQL(
			@RequestParam("Trip_start_date") String Trip_start_date,
			@RequestParam("Trip_end_date") String Trip_end_date,
			@RequestParam("Trip_source") String Trip_source,
			@RequestParam("Trip_destination") String Trip_destination,
			@RequestParam("No_of_stops") String No_of_stops,
			@RequestParam("Distance_covered") String Distance_covered,
			@RequestParam("Fuel_total") String Fuel_total,
			@RequestParam("Total_time") String Total_time,
			@RequestParam("Description") String Description,
			@RequestParam("Stop_name") String Stop_name,
			@RequestParam("Stay_location") String Stay_location,
			@RequestParam("Time") String Time,
			@RequestParam("Total_expenditure") String Total_expenditure,
			@RequestParam("Food_total") String Food_total,
			@RequestParam("Stay_total") String Stay_total,
			@RequestParam("Miscellaneous_total") String Miscellaneous_total,
			@RequestParam("Fuel_price") String Fuel_price
			)
	{
		ModelAndView mv=new ModelAndView(); 
	    String time=formatter.format(date);
	    String Travel_id=time+"trv";
	    String Trip_id=time+"tp";
	    String Timeline_id=time+"tmln";
	    String gid=time+"glry";
	    String Stay_id=time+"sty";
	    String TT_id=time+"tt";
	    String Exp_id=time+"exp";
	    String Nfs_id=time+"nfs"; 
	    String s="";
	    int j=0;
	    for(int i=Trip_start_date.length()-1;i>=0;i--)
	    {
	    	s+=Trip_start_date.charAt(i);
	    	j++;
	    }
	    Trip_start_date=s;
	    j=0;
	    for(int i=Trip_end_date.length()-1;i>=0;i--)
	    {
	    	s+=Trip_end_date.charAt(i);
	    	j++;
	    }
	    Trip_end_date=s;
		float food_tot=Float.parseFloat(Food_total);
		float sty_tot=Float.parseFloat(Stay_total);
		float msc_tot=Float.parseFloat(Miscellaneous_total);
		double fuel_tot_p=Double.parseDouble(Fuel_price);
		double exp_tot=food_tot+sty_tot+msc_tot+fuel_tot_p;
	    
		Expenditure exp=new Expenditure(Exp_id, Trip_id, Timeline_id, exp_tot, food_tot, sty_tot, msc_tot, fuel_tot_p);
		tdexpjpadao.save(exp);
		
		Gallery gl=new Gallery(gid,Trip_id);
		tdgldao.save(gl);
		
		No_of_stops nfs=new No_of_stops(Nfs_id,Trip_id,Timeline_id,Stop_name);
		tdnfsjpadao.save(nfs);
		
		float stime=Float.parseFloat(Time);
		Stay st=new Stay(Stay_id,Trip_id,Timeline_id,Trip_source,Trip_destination,stime);
		tdstdao.save(st);
		
		int ns=Integer.parseInt(No_of_stops);
		Timeline_map tmlnm=new Timeline_map(Timeline_id,Trip_id,Trip_source,ns,Trip_destination);
		tdtmlnjpadao.save(tmlnm);
		
		float tot_time=Float.parseFloat(Total_time);
		Total_time tt=new Total_time(TT_id,Trip_id,Timeline_id,Trip_source,Trip_destination,tot_time);
		tdttdao.save(tt);
		
		float dc=Float.parseFloat(Distance_covered);
		double fuel_tot=Double.parseDouble(Fuel_total);
		Travel trv=new Travel(Travel_id,Trip_id,Timeline_id,Exp_id,gid,Stay_id,TT_id,Nfs_id,dc,fuel_tot,exp_tot,tot_time,Description);
		tdtrvljpadao.save(trv);
		
		Trip trp=new Trip(Trip_id,Trip_start_date,Trip_end_date,Trip_source,Trip_destination,Description);
		tdtpjpadao.save(trp);
		
		
		mv.addObject("msg", "Successfully Added Data to Database");
		mv.addObject("T_id", Trip_id);
		mv.setViewName("Doc");
		return mv;
		
	}
	
	@RequestMapping("/AboutMe")
	public ModelAndView AboutME() {
		ModelAndView mv=new ModelAndView("AboutMe");
		
		LocalDate today = LocalDate.now();                          
		LocalDate birthday = LocalDate.of(2020, Month.SEPTEMBER, 1); 
		 
		Period period = Period.between(birthday, today);

		if(period.getMonths()==0 && period.getYears()==0)
			mv.addObject("experience", String.valueOf(period.getDays())+" days");
		else if(period.getYears()==0)
			mv.addObject("experience", String.valueOf(period.getMonths())+" months");
		else
			mv.addObject("experience",String.valueOf(period.getYears())+" years");
		
		return mv;
	}
	
	@PostMapping("/get_files/{Trip_id}")
	public String get(Model model, @PathVariable String Trip_id) {
		List<Doc> docs = docStorageService.getFiles(Trip_id);
		model.addAttribute("docs", docs);
		return "Doc";
	}
	
	@RequestMapping("/getall_img")
	public String getimg(Model model) {
		List<Doc> docs = docStorageService.getFiles();
		
		model.addAttribute("doc", docs);
		return "Doc";
	}
	
	@RequestMapping(value = "/getStudentPhoto/{id}")
	public void getStudentPhoto(HttpServletResponse response, @PathVariable("id") int id) throws Exception {
		response.setContentType("image/jpeg");

		Blob ph = docRepository.getPhotoById(id);

		byte[] bytes = ph.getBytes(1, (int) ph.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
		System.out.println("\n\n\n\n\n\n\n\t\t\t\t\tPrint image\n\n\n\n");
	}
	@RequestMapping(value = "/getStudentPhotoAll/{id}/{did}")
	public void getStudentPhotoAll(HttpServletResponse response, @PathVariable("id") String id, @PathVariable("did") int did) throws Exception {
		response.setContentType("image/jpeg");

		Blob ph = docRepository.getPhotoByIdAll(id,did);

		byte[] bytes = ph.getBytes(1, (int) ph.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
		System.out.println("\n\n\n\n\n\n\n\t\t\t\t\tPrint image\n\n\n\n");
	}
	
	@RequestMapping(value = "/getTravelPhoto/{id}")
	public void getTravelPhoto(HttpServletResponse response, @PathVariable("id") String id) throws Exception {
		response.setContentType("image/jpeg");

		Blob ph = docRepository.getPhotoById(id);
		byte[] bytes = ph.getBytes(1, (int) ph.length());
		InputStream inputStream = new ByteArrayInputStream(bytes);
		IOUtils.copy(inputStream, response.getOutputStream());
		System.out.println("\n\n\n\n\n\n\n\t\t\t\t\tPrint image\n\n\n\n");
	}
	
	
	  @PostMapping("/uploadFiles/{T_id}") 
	  public String uploadMultipleFiles(@RequestParam("files") MultipartFile[] files, @PathVariable("T_id") String Trip_id) 
	  { for(MultipartFile file: files) { 
		  docStorageService.saveFile(file,Trip_id);
	  	  }
	  
	  return "Doc"; 
	  }
	  
	  @GetMapping("/downloadFile/{fileId}") 
	  public ResponseEntity<ByteArrayResource> downloadFile(@PathVariable Integer fileId){
	  Doc doc = docStorageService.getFile(fileId).get(); 
	  return ResponseEntity.ok()
	  .contentType(MediaType.parseMediaType(doc.getDocType()))
	  .header(HttpHeaders.CONTENT_DISPOSITION,"attachment:filename=\""+doc.getDocName()+"\"") 
	  .body(new ByteArrayResource(doc.getData())); 
	  }
	 
	@RequestMapping("/searching")
	public ModelAndView Searching() {
		ModelAndView mv=new ModelAndView("search");
		return mv;
	}
	
}
