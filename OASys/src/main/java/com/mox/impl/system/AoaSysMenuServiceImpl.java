package com.mox.impl.system;

import java.util.List;

import org.springframework.stereotype.Service;

import com.mox.base.BaseServiceImpl;
import com.mox.entity.system.AoaSysMenu;
import com.mox.mapper.system.AoaSysMenuMapper;
import com.mox.service.system.AoaSysMenuService;
@Service
public class AoaSysMenuServiceImpl extends BaseServiceImpl<AoaSysMenuMapper, AoaSysMenu> implements AoaSysMenuService {
	@Override
	public List<AoaSysMenu> myselect(int id) {
		return m.myselect(id);
	}
}
