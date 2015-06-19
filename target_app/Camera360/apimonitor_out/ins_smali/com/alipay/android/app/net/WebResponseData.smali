.class public Lcom/alipay/android/app/net/WebResponseData;
.super Ljava/lang/Object;
.source "WebResponseData.java"
.field private charset:Ljava/lang/String;
.field private contentType:Ljava/lang/String;
.field private response:Ljava/lang/String;
.field private status:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/alipay/android/app/net/WebResponseData;->response:Ljava/lang/String;
iput-object p2, p0, Lcom/alipay/android/app/net/WebResponseData;->contentType:Ljava/lang/String;
iput-object p3, p0, Lcom/alipay/android/app/net/WebResponseData;->charset:Ljava/lang/String;
iput-object p4, p0, Lcom/alipay/android/app/net/WebResponseData;->status:Ljava/lang/String;
return-void
.end method
.method public getCharset()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/WebResponseData;->charset:Ljava/lang/String;
return-object v0
.end method
.method public getContentType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/WebResponseData;->contentType:Ljava/lang/String;
return-object v0
.end method
.method public getResponse()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/WebResponseData;->response:Ljava/lang/String;
return-object v0
.end method
.method public getStatus()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/alipay/android/app/net/WebResponseData;->status:Ljava/lang/String;
return-object v0
.end method
.method public setCharset(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/WebResponseData;->charset:Ljava/lang/String;
return-void
.end method
.method public setContentType(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/WebResponseData;->contentType:Ljava/lang/String;
return-void
.end method
.method public setResponse(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/WebResponseData;->response:Ljava/lang/String;
return-void
.end method
.method public setStatus(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/alipay/android/app/net/WebResponseData;->status:Ljava/lang/String;
return-void
.end method