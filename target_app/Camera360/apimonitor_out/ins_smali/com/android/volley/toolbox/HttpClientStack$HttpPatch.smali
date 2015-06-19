.class public final Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;
.super Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpClientStack.java"
.field public static final METHOD_NAME:Ljava/lang/String; = "PATCH"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V
invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->setURI(Ljava/net/URI;)V
return-void
.end method
.method public constructor <init>(Ljava/net/URI;)V
.registers 2
invoke-direct {p0}, Lorg/apache/http/client/methods/HttpEntityEnclosingRequestBase;-><init>()V
invoke-virtual {p0, p1}, Lcom/android/volley/toolbox/HttpClientStack$HttpPatch;->setURI(Ljava/net/URI;)V
return-void
.end method
.method public getMethod()Ljava/lang/String;
.registers 2
const-string/jumbo v0, "PATCH"
return-object v0
.end method