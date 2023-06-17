package com.kh.kgv.store.model.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.kgv.items.model.vo.Store;
import com.kh.kgv.store.model.dao.StoreDAO;

@Service
public class StoreServiceImpl implements StoreService {
	
	
	@Autowired
	private StoreDAO dao;

	@Override
	public Map<String, Object> getStoreMap() {
		
		List<Store> storeList = dao.getStoreList();
		
		Map<String, Object> storeMap = new HashMap<String, Object>();
		
		storeMap.put("storeList", storeList);
		
		return storeMap;
	}
}