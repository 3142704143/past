package com.mox.impl.paper;

import org.springframework.stereotype.Service;

import com.mox.base.BaseServiceImpl;
import com.mox.entity.paper.AoaNotepaper;
import com.mox.mapper.paper.AoaNotepaperMapper;
import com.mox.service.paper.NotePaperService;

@Service
public class NotePaperServiceImpl extends BaseServiceImpl<AoaNotepaperMapper, AoaNotepaper>
		implements NotePaperService {

}
