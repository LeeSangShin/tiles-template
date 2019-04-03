package com.my;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

@Service("myservice")
public class MyServiceImpl implements MyService {

	@Resource(name="mymapper")
	private MyMapper mapper;

	@Override
	public String test_my() {
		return mapper.test_my();
	}

}
