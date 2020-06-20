package kimgibeom.dog.report.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kimgibeom.dog.report.dao.map.ReportMap;
import kimgibeom.dog.report.domain.Report;

@Repository
public class ReportDaoImpl implements ReportDao{
	@Autowired private ReportMap reportMap;
	
	@Override
	public List<Report> getReports() {
		return reportMap.getReports();
	}
	
	@Override
	public Report getReport(int reportNum) {
		return reportMap.getReport(reportNum);
	}
	
	@Override
	public int addReport(String title) {
		return reportMap.addReport(title);
	}
	
	@Override
	public int modifyReport(Report post) {
		return reportMap.modifyReport(post);
	}
	
	@Override
	public int delReport(int reportNum) {
		return reportMap.delReport(reportNum);
	}
}
