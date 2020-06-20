package kimgibeom.dog.report.dao;

import java.util.List;

import kimgibeom.dog.report.domain.ReportReply;

public interface ReportReplyDao {
	List<ReportReply> getReportReplies();
	ReportReply getReportReply(int replyNum);
	int addReportReply(String content);
	int modifyReportReply(ReportReply reply);
	int delReportReply(int replyNum);
}
