.class public Lch/boye/httpclientandroidlib/client/methods/HttpHead;
.super Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;
.source "HttpHead.java"
.field public static final METHOD_NAME:Ljava/lang/String; = "HEAD"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;-><init>()V
invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v0
invoke-virtual {p0, v0}, Lch/boye/httpclientandroidlib/client/methods/HttpHead;->setURI(Ljava/net/URI;)V
return-void
.end method
.method public constructor <init>(Ljava/net/URI;)V
.registers 2
invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpRequestBase;-><init>()V
invoke-virtual {p0, p1}, Lch/boye/httpclientandroidlib/client/methods/HttpHead;->setURI(Ljava/net/URI;)V
return-void
.end method
.method public getMethod()Ljava/lang/String;
.registers 2
const-string v0, "HEAD"
return-object v0
.end method