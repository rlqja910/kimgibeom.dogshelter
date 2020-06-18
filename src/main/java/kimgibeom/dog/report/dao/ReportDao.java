package kimgibeom.dog.report.dao;

import java.util.List;

import kimgibeom.dog.report.domain.Report;

public interface ReportDao {
	List<Report> getReports();
	Report getReport(int postNum);
	int addReport(String title);
	int modifyReport(Report post);
	int delReport(int postNum);
}
