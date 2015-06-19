.class public final Lcom/instagram/common/e/a/e;
.super Ljava/lang/Object;
.source "DefaultCacheHttpClientFactory.java"
.implements Lcom/instagram/common/e/a/c;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)Lch/boye/httpclientandroidlib/client/HttpClient;
.registers 4
new-instance v0, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;
invoke-direct {v0, p1, p2}, Lch/boye/httpclientandroidlib/impl/client/DefaultHttpClient;-><init>(Lch/boye/httpclientandroidlib/conn/ClientConnectionManager;Lch/boye/httpclientandroidlib/params/HttpParams;)V
return-object v0
.end method