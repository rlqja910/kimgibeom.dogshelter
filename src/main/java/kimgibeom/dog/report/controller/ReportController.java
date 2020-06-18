package kimgibeom.dog.report.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dog.report.domain.Report;
import kimgibeom.dog.report.service.ReportService;

@Controller
public class ReportController {
	@Autowired private ReportService reportService;
	/* 사용자 페이지 */
	
	/* 관리자 페이지 */
	@RequestMapping
	public String report() {
		return "/admin/main";
	}
	
	@RequestMapping("/report/list")
	public @ModelAttribute("reports") List<Report> list() {
		return reportService.readReports();
	}
	
	@RequestMapping("/report/post/{postNum}")
	public String user(@PathVariable String postNum, Model model) {
		int postNo = Integer.parseInt(postNum);
		Report report = reportService.readReport(postNo);
		model.addAttribute("report", report);
		return "/report/post";
	}
	
	@RequestMapping("/report/write")
	public String write() {
		return "/report/write";
	}
	
	@ResponseBody
	@RequestMapping("/write")
	public int writeReport(String title) {
		return reportService.writeReport(title);
	}
	
	@ResponseBody
	@RequestMapping("/update")
	public int updateReport(Report post) {
		return reportService.updateReport(post);
	}
	
	@ResponseBody
	@RequestMapping("/remove")
	public int removeReport(int postNum) {
		return reportService.removeReport(postNum);
	}
}
