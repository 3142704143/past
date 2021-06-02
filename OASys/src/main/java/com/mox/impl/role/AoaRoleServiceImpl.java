package com.mox.impl.role;

import org.springframework.stereotype.Service;
import com.mox.base.BaseServiceImpl;
import com.mox.entity.role.AoaRole;
import com.mox.mapper.role.AoaRoleMapper;
import com.mox.service.role.AoaRoleService;

@Service
public class AoaRoleServiceImpl extends BaseServiceImpl<AoaRoleMapper, AoaRole> implements AoaRoleService {

	public AoaRole selectMemu(Integer roleId) {
		return m.selectMemu(roleId);
	}
}
