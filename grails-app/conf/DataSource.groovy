dataSource {
    pooled = true
    driverClassName = "com.mysql.jdbc.Driver"
    username = "root"
    password = "123"
}
hibernate {
    cache.use_second_level_cache = true
    cache.use_query_cache = false
    cache.region.factory_class = 'net.sf.ehcache.hibernate.EhCacheRegionFactory'
}
// environment specific settings
environments {
    development {
        dataSource {
            dbCreate = "create-drop" // one of 'create', 'create-drop', 'update', 'validate', ''
            url = "jdbc:mysql://localhost/lajiaowawa?useUnicode=true&&characterEncoding=utf-8&autoReconnect=true"
        }
    }
    test {
        dataSource {
            dbCreate = "update"
            url = "jdbc:mysql://localhost/lajiaowawa?useUnicode=true&&characterEncoding=utf-8&autoReconnect=true"
        }
    }
    production {
		dataSource {
			pooled = true
			driverClassName = "com.mysql.jdbc.Driver"
			username = "root"
			password = "xxxxmmm"
			dbCreate = "update" // one of 'create', 'create-drop', 'update', 'validate', ''
			url = "jdbc:mysql://localhost/lajiaowawa?useUnicode=true&&characterEncoding=utf-8&autoReconnect=true"
			pooled = true
			properties {
			   maxActive = -1
			   minEvictableIdleTimeMillis=1800000
			   timeBetweenEvictionRunsMillis=1800000
			   numTestsPerEvictionRun=3
			   testOnBorrow=true
			   testWhileIdle=true
			   testOnReturn=true
			   validationQuery="SELECT 1"
			}
		}
    }
}
