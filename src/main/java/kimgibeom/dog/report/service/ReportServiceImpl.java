package kimgibeom.dog.report.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kimgibeom.dog.report.dao.ReportDao;
import kimgibeom.dog.report.domain.Report;

@Service
public class ReportServiceImpl implements ReportService{
	@Autowired private ReportDao reportDao;
	
	@Override
	public List<Report> readReports() {
		return reportDao.getReports();
	}
	
	@Override
	public Report readReport(int reportNum) {
		return reportDao.getReport(reportNum);
	}
	
	@Override
	public int writeReport(String title) {
		return reportDao.addReport(title);
	}
	
	@Override
	public int updateReport(Report post) {
		return reportDao.modifyReport(post);
	}
	
	@Override
	public int removeReport(int reportNum) {
		return reportDao.delReport(reportNum);
	}
}
