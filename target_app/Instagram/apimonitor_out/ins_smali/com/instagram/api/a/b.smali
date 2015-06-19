.class public final Lcom/instagram/api/a/b;
.super Ljava/lang/Object;
.source "IgSSLResponseInterceptor.java"
.implements Lch/boye/httpclientandroidlib/HttpResponseInterceptor;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Z)V
.registers 2
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->J()Z
move-result v0
if-eq v0, p0, :cond_11
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/k/b/a;->j(Z)V
:cond_11
return-void
.end method
.method public final process(Lch/boye/httpclientandroidlib/HttpResponse;Lch/boye/httpclientandroidlib/protocol/HttpContext;)V
.registers 5
if-eqz p1, :cond_17
const-string v0, "X-Instagram-Ssl-Everywhere"
invoke-interface {p1, v0}, Lch/boye/httpclientandroidlib/HttpResponse;->getFirstHeader(Ljava/lang/String;)Lch/boye/httpclientandroidlib/Header;
move-result-object v0
if-eqz v0, :cond_17
invoke-interface {v0}, Lch/boye/httpclientandroidlib/Header;->getValue()Ljava/lang/String;
move-result-object v0
const-string v1, "True"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
invoke-static {v0}, Lcom/instagram/api/a/b;->a(Z)V
:cond_17
return-void
.end method