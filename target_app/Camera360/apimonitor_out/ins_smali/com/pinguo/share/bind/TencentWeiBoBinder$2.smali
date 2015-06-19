.class  Lcom/pinguo/share/bind/TencentWeiBoBinder$2;
.super Ljava/lang/Object;
.source "TencentWeiBoBinder.java"
.implements Lcom/tencent/weibo/sdk/android/component/sso/OnAuthListener;
.field final synthetic this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
.method constructor <init>(Lcom/pinguo/share/bind/TencentWeiBoBinder;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$2;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onAuthFail(ILjava/lang/String;)V
.registers 4
const/4 v0, 0x0
sput-boolean v0, Lcom/pinguo/share/bind/TencentWeiBoBinder;->needCallback:Z
return-void
.end method
.method public onAuthPassed(Ljava/lang/String;Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;)V
.registers 9
iget-object v1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$2;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
#getter for: Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->access$1(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
const-string/jumbo v1, "ACCESS_TOKEN"
iget-object v2, p2, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->accessToken:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "EXPIRES_IN"
iget-wide v2, p2, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->expiresIn:J
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "OPEN_ID"
iget-object v2, p2, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->openID:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "OPEN_KEY"
iget-object v2, p2, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->omasKey:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "REFRESH_TOKEN"
iget-object v2, p2, Lcom/tencent/weibo/sdk/android/component/sso/WeiboToken;->refreshToken:Ljava/lang/String;
invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "NAME"
invoke-static {v0, v1, p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "NICK"
invoke-static {v0, v1, p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "CLIENT_ID"
invoke-static {}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getConfig()Ljava/util/Properties;
move-result-object v2
const-string/jumbo v3, "APP_KEY"
invoke-virtual {v2, v3}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "AUTHORIZETIME"
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/tencent/weibo/sdk/android/api/util/Util;->saveSharePersistent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
const/4 v1, 0x1
sput-boolean v1, Lcom/pinguo/share/bind/TencentWeiBoBinder;->needCallback:Z
return-void
.end method
.method public onWeiBoNotInstalled()V
.registers 4
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$2;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
#getter for: Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->access$1(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Landroid/app/Activity;
move-result-object v1
const-class v2, Lcom/tencent/weibo/sdk/android/component/Authorize;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$2;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
#getter for: Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->access$1(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public onWeiboVersionMisMatch()V
.registers 4
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$2;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
#getter for: Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->access$1(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Landroid/app/Activity;
move-result-object v1
const-class v2, Lcom/tencent/weibo/sdk/android/component/Authorize;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/pinguo/share/bind/TencentWeiBoBinder$2;->this$0:Lcom/pinguo/share/bind/TencentWeiBoBinder;
#getter for: Lcom/pinguo/share/bind/TencentWeiBoBinder;->mActivity:Landroid/app/Activity;
invoke-static {v1}, Lcom/pinguo/share/bind/TencentWeiBoBinder;->access$1(Lcom/pinguo/share/bind/TencentWeiBoBinder;)Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
return-void
.end method