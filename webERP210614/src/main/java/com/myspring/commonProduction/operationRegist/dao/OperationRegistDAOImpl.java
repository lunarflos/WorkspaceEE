package com.myspring.commonProduction.operationRegist.dao;

import java.sql.Date;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.myspring.commonProduction.commitOperationInstruction.vo.CommitOperationInstructionVO;
import com.myspring.commonProduction.operationRegist.vo.DepartmentViewVO;
import com.myspring.commonProduction.operationRegist.vo.FactoryViewVO;
import com.myspring.commonProduction.operationRegist.vo.OperationRegistVO;
import com.myspring.productionBaseInfo.BOM.vo.bomVO;



@Repository("OperationRegistDAO")
public class OperationRegistDAOImpl implements OperationRegistDAO{
	@Autowired
	private SqlSession sqlSession;
	
	@Override
	public List selectAllOperationInfo(String startDate, String endDate) throws DataAccessException, ParseException {
		List<OperationRegistVO> infoList = null;
		
		if(startDate != null && startDate !=  "" && endDate != null && endDate != "") {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date start = new Date(sdf.parse(startDate).getTime());
		Date end = new Date(sdf.parse(endDate).getTime());
		CommitOperationInstructionVO COIvo = new CommitOperationInstructionVO();
		COIvo.setStartDate(start);
		COIvo.setEndDate(end);
		infoList = sqlSession.selectList("mappers.erp.selectAllOperationRegistInfoCondition", COIvo);
		} else {
			infoList = sqlSession.selectList("mappers.erp.selectAllOperationRegistInfo");
		}
		
		return infoList;
	}
	
	@Override
	public List viewPop() throws DataAccessException {
		List<FactoryViewVO> popList = null;
		popList = sqlSession.selectList("mappers.erp.selectFactoryList");
		return popList;
	}
	
	@Override
	public List departmentViewPop() throws DataAccessException {
		List<DepartmentViewVO> popList = null;
		popList = sqlSession.selectList("mappers.erp.selectDepartmentList");
		return popList;
	}
	
	@Override
	public List productionPlanPop(String startDate, String endDate) throws DataAccessException, ParseException {
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
		Date start = new Date(sdf.parse(startDate).getTime());
		Date end = new Date(sdf.parse(endDate).getTime());
		CommitOperationInstructionVO COIvo = new CommitOperationInstructionVO();
		COIvo.setStartDate(start);
		COIvo.setEndDate(end);
		List<CommitOperationInstructionVO> COIList = null;
		COIList = sqlSession.selectList("mappers.erp.selectProductionPlanList", COIvo);
		return COIList;
	}
	
	@Override
	public int addOperationInstruction(OperationRegistVO ORVO) throws DataAccessException {
		int idx = ORVO.getListVO().size()-1;
		int result = sqlSession.insert("mappers.erp.insertOperationInstruction",ORVO.getListVO().get(idx));
		return 0;
	}
	
	@Override
	public void delOperationInstruction(String[] numberAry) throws DataAccessException{
		for(String obj: numberAry) {
			sqlSession.delete("mappers.erp.deleteOperationInstruction", obj);		
			System.out.println("DAO.delBOM");
		}
	}
}
