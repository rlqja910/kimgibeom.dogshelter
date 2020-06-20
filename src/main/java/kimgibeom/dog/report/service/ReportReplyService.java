package kimgibeom.dog.report.service;

import java.util.List;

import kimgibeom.dog.report.domain.ReportReply;

public interface ReportReplyService {
	List<ReportReply> readReportReplies();

	ReportReply readReportReply(int replyNum);

	int writeReportReply(String content);

	int updateReportReply(ReportReply reply);

	int removeReportReply(int replyNum);
}
