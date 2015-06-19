.class public Lcom/tencent/open/g;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Lcom/tencent/tauth/IRequestListener;
.field private a:Lcom/tencent/tauth/IUiListener;
.method public constructor <init>(Lcom/tencent/tauth/IUiListener;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/tencent/open/g;->a:Lcom/tencent/tauth/IUiListener;
return-void
.end method
.method private a(Ljava/lang/Exception;)V
.registers 7
iget-object v0, p0, Lcom/tencent/open/g;->a:Lcom/tencent/tauth/IUiListener;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/tencent/open/g;->a:Lcom/tencent/tauth/IUiListener;
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
iget-object v0, p0, Lcom/tencent/open/g;->a:Lcom/tencent/tauth/IUiListener;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/tencent/open/g;->a:Lcom/tencent/tauth/IUiListener;
invoke-interface {v0, p1}, Lcom/tencent/tauth/IUiListener;->onComplete(Ljava/lang/Object;)V
:cond_9
return-void
.end method
.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/g;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onHttpStatusException(Lcom/tencent/utils/HttpUtils$HttpStatusException;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/g;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onIOException(Ljava/io/IOException;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/g;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onJSONException(Lorg/json/JSONException;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/g;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/g;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onNetworkUnavailableException(Lcom/tencent/utils/HttpUtils$NetworkUnavailableException;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/g;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/g;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onUnknowException(Ljava/lang/Exception;)V
.registers 2
invoke-direct {p0, p1}, Lcom/tencent/open/g;->a(Ljava/lang/Exception;)V
return-void
.end method