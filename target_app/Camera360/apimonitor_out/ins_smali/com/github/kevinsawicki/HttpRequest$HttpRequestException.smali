.class public Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;
.super Ljava/lang/RuntimeException;
.source "HttpRequest.java"
.field private static final serialVersionUID:J = -0x103e55869b430237L
.method protected constructor <init>(Ljava/io/IOException;)V
.registers 2
invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
return-void
.end method
.method public getCause()Ljava/io/IOException;
.registers 2
invoke-super {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;
move-result-object v0
check-cast v0, Ljava/io/IOException;
return-object v0
.end method
.method public bridge synthetic getCause()Ljava/lang/Throwable;
.registers 2
invoke-virtual {p0}, Lcom/github/kevinsawicki/HttpRequest$HttpRequestException;->getCause()Ljava/io/IOException;
move-result-object v0
return-object v0
.end method