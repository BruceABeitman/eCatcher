.class abstract Lcom/tencent/open/LocationApi$b;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Lcom/tencent/tauth/IRequestListener;
.field final synthetic b:Lcom/tencent/open/LocationApi;
.method private constructor <init>(Lcom/tencent/open/LocationApi;)V
.registers 2
iput-object p1, p0, Lcom/tencent/open/LocationApi$b;->b:Lcom/tencent/open/LocationApi;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/tencent/open/LocationApi;Lcom/tencent/open/LocationApi$3;)V
.registers 3
invoke-direct {p0, p1}, Lcom/tencent/open/LocationApi$b;-><init>(Lcom/tencent/open/LocationApi;)V
return-void
.end method
.method protected abstract a(Ljava/lang/Exception;)V
.end method
.method public onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$b;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onHttpStatusException(Lcom/tencent/utils/HttpUtils$HttpStatusException;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$b;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onIOException(Ljava/io/IOException;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$b;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onJSONException(Lorg/json/JSONException;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$b;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onMalformedURLException(Ljava/net/MalformedURLException;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$b;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onNetworkUnavailableException(Lcom/tencent/utils/HttpUtils$NetworkUnavailableException;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$b;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$b;->a(Ljava/lang/Exception;)V
return-void
.end method
.method public onUnknowException(Ljava/lang/Exception;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/tencent/open/LocationApi$b;->a(Ljava/lang/Exception;)V
return-void
.end method