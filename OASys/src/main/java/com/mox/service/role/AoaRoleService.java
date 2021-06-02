package com.mox.service.role;

import com.mox.base.BaseService;
import com.mox.entity.role.AoaRole;

public interface AoaRoleService extends BaseService<AoaRole> {
	AoaRole selectMemu(Integer roleId);
}
