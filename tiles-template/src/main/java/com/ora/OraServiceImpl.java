package com.ora;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("oraservice")
public class OraServiceImpl implements OraService {

	@Resource(name="oramapper")
	private OraMapper mapper;

	@Override
	public String test() {
		return mapper.test();
	}

}
