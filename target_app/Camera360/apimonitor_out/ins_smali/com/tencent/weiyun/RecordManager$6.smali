.class  Lcom/tencent/weiyun/RecordManager$6;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Lcom/tencent/tauth/IUiListener;
.field final synthetic a:Lcom/tencent/tauth/IUiListener;
.field final synthetic b:Lcom/tencent/weiyun/RecordManager;
.method constructor <init>(Lcom/tencent/weiyun/RecordManager;Lcom/tencent/tauth/IUiListener;)V
.registers 3
iput-object p1, p0, Lcom/tencent/weiyun/RecordManager$6;->b:Lcom/tencent/weiyun/RecordManager;
iput-object p2, p0, Lcom/tencent/weiyun/RecordManager$6;->a:Lcom/tencent/tauth/IUiListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onCancel()V
.registers 2
iget-object v0, p0, Lcom/tencent/weiyun/RecordManager$6;->a:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0}, Lcom/tencent/tauth/IUiListener;->onCancel()V
return-void
.end method
.method public onComplete(Ljava/lang/Object;)V
.registers 7
check-cast p1, Lorg/json/JSONObject;
:try_start_2
const-string/jumbo v0, "ret"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I
move-result v0
if-nez v0, :cond_13
iget-object v0, p0, Lcom/tencent/weiyun/RecordManager$6;->a:Lcom/tencent/tauth/IUiListener;
sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:goto_12
return-void
:cond_13
iget-object v0, p0, Lcom/tencent/weiyun/RecordManager$6;->a:Lcom/tencent/tauth/IUiListener;
sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:try_end_1a
.catch Lorg/json/JSONException; {:try_start_2 .. :try_end_1a} :catch_1b
goto :goto_12
:catch_1b
move-exception v0
iget-object v1, p0, Lcom/tencent/weiyun/RecordManager$6;->a:Lcom/tencent/tauth/IUiListener;
new-instance v2, Lcom/tencent/tauth/UiError;
const/4 v3, -0x4
invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;
move-result-object v0
const/4 v4, 0x0
invoke-direct {v2, v3, v0, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v2}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
goto :goto_12
.end method
.method public onError(Lcom/tencent/tauth/UiError;)V
.registers 3
iget-object v0, p0, Lcom/tencent/weiyun/RecordManager$6;->a:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
return-void
.end method