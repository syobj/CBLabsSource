package com.cblabs.server.config;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.context.annotation.Configuration;

import com.cblabs.server.dao.ApplicationLibraryMapper;

@Configuration
@MapperScan(basePackageClasses = { ApplicationLibraryMapper.class })
public class DataSourceConfig {

}
