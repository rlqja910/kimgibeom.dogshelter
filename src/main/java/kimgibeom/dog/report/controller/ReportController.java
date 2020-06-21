package kimgibeom.dog.report.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import kimgibeom.dog.report.domain.Report;
import kimgibeom.dog.report.domain.ReportReply;
import kimgibeom.dog.report.service.ReportReplyService;
import kimgibeom.dog.report.service.ReportService;

@Controller
@RequestMapping("/admin/report")
public class ReportController {
	@Autowired
	private ReportService reportService;
	@Autowired
	private ReportReplyService reportReplyService;

	@RequestMapping("/reportListView")
	public void readReports(Model model) {
		model.addAttribute("reports", reportService.readReports());
	}

	@RequestMapping("read/{reportNum}")
	public String readReport(@PathVariable String reportNum, Model model) {
		// 게시글
		int reportNo = Integer.parseInt(reportNum);
		Report report = reportService.readReport(reportNo);
		model.addAttribute("report", report);

		// 댓글
		List<ReportReply> replies = reportReplyService.readReportReplies();
		List<ReportReply> repliesOfReport = new ArrayList<ReportReply>();
		for (int idx = 0; idx < replies.size(); idx++) {
			if (replies.get(idx).getReportNum() == reportNo) {
				repliesOfReport.add(replies.get(idx));
			}
		}
		model.addAttribute("replies", repliesOfReport);

		return "admin/report/reportView";
	}

	@ResponseBody
	@RequestMapping("/remove")
	public int removeReport(String reportNum) {
		int reportNo = Integer.parseInt(reportNum);
		return reportService.removeReport(reportNo);
	}

	@ResponseBody
	@RequestMapping("/removeReply")
	public void removeReply(String replyNum) {
		int replyNo = Integer.parseInt(replyNum);
		reportReplyService.removeReportReply(replyNo);
	}
}
