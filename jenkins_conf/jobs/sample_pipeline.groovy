pipelineJob("pipeline_sample") {
    parameters {
        stringParam("str1", "0", "サンプルフラグ")
    }
    definition {
        cps: {
            script("str")
            sandbox()
        }
    }
}
