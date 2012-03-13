<cfcomponent extends="Basis.App" output="false">
	
	<cfset this.name = "codedayspa_0_1" />
	<cfset this.applicationTimeout = createTimeSpan(0, 2, 0, 0) />
	<cfset this.clientManagement = false />
	<cfset this.sessionManagement = false />
	
	<cfset variables.frameworkSettings.reloadFrameworkEveryRequest = false />
	<cfset variables.frameworkSettings.flushBufferBeforeOutput = false />

	<cffunction name="applicationStart" output="false">
		<cfset application.version = "0.1" />
	</cffunction>

	<cffunction name="preRequest" output="false">
		<!---
			Register MongoDB
		--->
		<cfset request.dbName = "codedayspa" />
		<cfset mongoRegister(name = "codedayspa", server = "127.0.0.1", db = request.dbName) />
	</cffunction>

</cfcomponent>