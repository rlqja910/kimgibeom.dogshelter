package kimgibeom.dog.report.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dog.report.domain.Criteria;
import kimgibeom.dog.report.domain.PageMaker;
import kimgibeom.dog.report.domain.Report;
import kimgibeom.dog.report.domain.ReportReply;
import kimgibeom.dog.report.service.ReportReplyService;
import kimgibeom.dog.report.service.ReportService;

@Controller
@RequestMapping("/report")
public class ReportController {
	@Autowired
	private ReportService reportService;
	@Autowired
	private ReportReplyService reportReplyService;
	
	// 게시물 목록 
	@RequestMapping("/reportListView")
	public void readReports(Model model, Criteria cri) {
		model.addAttribute("reports", reportService.readReports(cri));
		
		PageMaker pageMaker = new PageMaker();
		pageMaker.setCri(cri);
		pageMaker.setTotalCount(reportService.readListCnt());
		
		model.addAttribute("pageMaker", pageMaker);
	}

	// 게시물 상세 조회
	@RequestMapping("/reportView/{reportNum}")
	public String readReport(@PathVariable String reportNum, Model model) {
		// 게시글 조회
		int reportNo = Integer.parseInt(reportNum);
		Report report = reportService.readReport(reportNo);
		model.addAttribute("report", report);

		// 댓글 조회
		List<ReportReply> replies = reportReplyService.readReportReplies();
		List<ReportReply> repliesOfReport = new ArrayList<ReportReply>();

		for (int idx = 0; idx < replies.size(); idx++) {
			if (replies.get(idx).getReportNum() == reportNo) {
				repliesOfReport.add(replies.get(idx));
			}
		}
		model.addAttribute("replies", repliesOfReport);

		return "report/reportView";
	}
	
	// 게시물 등록
	@RequestMapping("/reportRegister")
	public String reportIn() {
		return "report/reportRegister";
	}
	
	@RequestMapping(value="/reportRegister", method=RequestMethod.POST)
	public String reportOut(Report report) {
		reportService.writeReport(report);
		return "redirect:reportListView";
	}
	
	// 게시물 수정
	@RequestMapping("/reportModify/{reportNum}")
	public String modifyIn(@PathVariable String reportNum, Model model) {
		int reportNo = Integer.parseInt(reportNum);
		Report report = reportService.readReport(reportNo);
		model.addAttribute("report", report);
		return "report/reportModify";
	}
	
	@RequestMapping(value="/reportModify", method=RequestMethod.POST)
	public String modifyOut(Report report) {
		reportService.updateReport(report);
		int reportNum = report.getReportNum();
		return "redirect:reportView/" + reportNum;
	}
	
	// 게시물 삭제
	@ResponseBody
	@RequestMapping("/remove")
	public int removeReport(String reportNum) {
		int reportNo = Integer.parseInt(reportNum);
		return reportService.removeReport(reportNo);
	}
	
	// 댓글 등록
	@ResponseBody
	@RequestMapping("/replyView")
	public void registerReply(ReportReply reply) {
		reportReplyService.writeReportReply(reply);
	}
	
	// 댓글 삭제
	@ResponseBody
	@RequestMapping("/removeReply")
	public void removeReply(String replyNum) {
		int replyNo = Integer.parseInt(replyNum);
		reportReplyService.removeReportReply(replyNo);
	}
}