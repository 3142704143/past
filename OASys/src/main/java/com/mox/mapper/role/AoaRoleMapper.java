package com.mox.mapper.role;

import org.springframework.stereotype.Repository;
import com.mox.entity.role.AoaRole;
import tk.mybatis.mapper.common.Mapper;

@Repository
public interface AoaRoleMapper extends Mapper<AoaRole> {
	AoaRole selectMemu(Integer roleId);
}