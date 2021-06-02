package com.mox.service.system;

import java.util.List;
import com.mox.base.BaseService;
import com.mox.entity.system.AoaSysMenu;

public interface AoaSysMenuService extends BaseService<AoaSysMenu> {
	List<AoaSysMenu> myselect(int id);
}
