.class public final Lcom/instagram/common/a/b/d;
.super Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;
.source "HttpPatch.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Lch/boye/httpclientandroidlib/client/methods/HttpEntityEnclosingRequestBase;-><init>()V
invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/instagram/common/a/b/d;->setURI(Ljava/net/URI;)V
return-void
.end method
.method public final getMethod()Ljava/lang/String;
.registers 2
const-string v0, "PATCH"
return-object v0
.end method