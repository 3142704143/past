package com.mox.mapper.system;

import org.springframework.stereotype.Repository;
import java.util.List;
import com.mox.entity.system.AoaSysMenu;
import tk.mybatis.mapper.common.Mapper;

@Repository
public interface AoaSysMenuMapper extends Mapper<AoaSysMenu> {
	List<AoaSysMenu> myselect(int id);
}