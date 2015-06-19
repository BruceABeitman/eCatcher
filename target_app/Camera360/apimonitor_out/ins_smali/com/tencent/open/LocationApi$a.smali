.class  Lcom/tencent/open/LocationApi$a;
.super Lcom/tencent/open/LocationApi$b;
.source "ProGuard"
.field final synthetic a:Lcom/tencent/open/LocationApi;
.field private c:Lcom/tencent/tauth/IUiListener;
.method public constructor <init>(Lcom/tencent/open/LocationApi;Lcom/tencent/tauth/IUiListener;)V
.registers 4
iput-object p1, p0, Lcom/tencent/open/LocationApi$a;->a:Lcom/tencent/open/LocationApi;
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/tencent/open/LocationApi$b;-><init>(Lcom/tencent/open/LocationApi;Lcom/tencent/open/LocationApi$3;)V
iput-object p2, p0, Lcom/tencent/open/LocationApi$a;->c:Lcom/tencent/tauth/IUiListener;
return-void
.end method
.method protected a(Ljava/lang/Exception;)V
.registers 7
iget-object v0, p0, Lcom/tencent/open/LocationApi$a;->c:Lcom/tencent/tauth/IUiListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/tencent/open/LocationApi$a;->c:Lcom/tencent/tauth/IUiListener;
new-instance v1, Lcom/tencent/tauth/UiError;
const/16 v2, 0x64
invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-direct {v1, v2, v3, v4}, Lcom/tencent/tauth/UiError;-><init>(ILjava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Lcom/tencent/tauth/IUiListener;->onError(Lcom/tencent/tauth/UiError;)V
:cond_15
return-void
.end method
.method public onComplete(Lorg/json/JSONObject;)V
.registers 3
iget-object v0, p0, Lcom/tencent/open/LocationApi$a;->c:Lcom/tencent/tauth/IUiListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/tencent/open/LocationApi$a;->c:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:cond_9
return-void
.end method