package com.mox.impl.system;

import org.springframework.stereotype.Service;

import com.mox.base.BaseServiceImpl;
import com.mox.entity.system.AoaTypeList;
import com.mox.mapper.system.AoaTypeListMapper;
import com.mox.service.system.AoaTypeListService;
@Service
public class AoaTypeListServiceImpl extends BaseServiceImpl<AoaTypeListMapper, AoaTypeList>
		implements AoaTypeListService {

}
