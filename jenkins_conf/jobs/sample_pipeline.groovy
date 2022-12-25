myScript = new File('/var/jenkins_conf/jobs/sample_pipeline_script.groovy').getText('UTF-8')

pipelineJob('example') {
    description('サンプル')
    parameters {
        stringParam('str_param1','0','フラグ')
    }
    definition {
        cps {
            script(myScript)
            sandbox()
        }
    }
}