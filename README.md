# jenkins-configuration-as-code

プラグインリストの取得は「Jenkinsの管理」から「スクリプトコンソール」で以下を実行

```groovy
list = []
Jenkins.instance.pluginManager.plugins.each {
  p-> list.push("${p.getShortName()}:${p.getVersion()}")
}
list.sort().each {
  e-> println(e)
}
```
