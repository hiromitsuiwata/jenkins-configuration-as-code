# jenkins-configuration-as-code

プラグインリストの取得は「Jenkinsの管理」から「スクリプトコンソール」で以下を実行
```
Jenkins.instance.pluginManager.plugins.each {
  p-> println ("${p.getShortName()}:${p.getVersion()}")
}
```