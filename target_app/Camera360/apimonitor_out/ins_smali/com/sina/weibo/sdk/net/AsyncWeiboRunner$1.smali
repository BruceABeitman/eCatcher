.class  Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;
.super Ljava/lang/Thread;
.source "AsyncWeiboRunner.java"
.field private final synthetic val$httpMethod:Ljava/lang/String;
.field private final synthetic val$listener:Lcom/sina/weibo/sdk/net/RequestListener;
.field private final synthetic val$params:Lcom/sina/weibo/sdk/net/WeiboParameters;
.field private final synthetic val$url:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Lcom/sina/weibo/sdk/net/RequestListener;)V
.registers 5
iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$url:Ljava/lang/String;
iput-object p2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$httpMethod:Ljava/lang/String;
iput-object p3, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$params:Lcom/sina/weibo/sdk/net/WeiboParameters;
iput-object p4, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
return-void
.end method
.method public run()V
.registers 6
:try_start_0
iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$url:Ljava/lang/String;
iget-object v3, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$httpMethod:Ljava/lang/String;
iget-object v4, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$params:Lcom/sina/weibo/sdk/net/WeiboParameters;
invoke-static {v2, v3, v4}, Lcom/sina/weibo/sdk/net/HttpManager;->openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;
if-eqz v2, :cond_13
iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;
invoke-interface {v2, v1}, Lcom/sina/weibo/sdk/net/RequestListener;->onComplete(Ljava/lang/String;)V
:cond_13
:try_end_13
.catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_13} :catch_14
:goto_13
return-void
:catch_14
move-exception v0
iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;
if-eqz v2, :cond_13
iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->val$listener:Lcom/sina/weibo/sdk/net/RequestListener;
invoke-interface {v2, v0}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V
goto :goto_13
.end method