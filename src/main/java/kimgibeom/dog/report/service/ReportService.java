package kimgibeom.dog.report.service;

import java.util.List;

import kimgibeom.dog.report.domain.Report;

public interface ReportService {
	List<Report> readReports();
	Report readReport(int reportNum);
	int writeReport(String title);
	int updateReport(Report post);
	int removeReport(int reportNum);
}
