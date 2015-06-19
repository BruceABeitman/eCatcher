.class public final Lch/boye/httpclientandroidlib/impl/conn/SchemeRegistryFactory;
.super Ljava/lang/Object;
.source "SchemeRegistryFactory.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static createDefault()Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
.registers 5
new-instance v0, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;
invoke-direct {v0}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;-><init>()V
new-instance v1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
const-string v2, "http"
const/16 v3, 0x50
invoke-static {}, Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;->getSocketFactory()Lch/boye/httpclientandroidlib/conn/scheme/PlainSocketFactory;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->register(Lch/boye/httpclientandroidlib/conn/scheme/Scheme;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
new-instance v1, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
const-string v2, "https"
const/16 v3, 0x1bb
invoke-static {}, Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;->getSocketFactory()Lch/boye/httpclientandroidlib/conn/ssl/SSLSocketFactory;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lch/boye/httpclientandroidlib/conn/scheme/Scheme;-><init>(Ljava/lang/String;ILch/boye/httpclientandroidlib/conn/scheme/SchemeSocketFactory;)V
invoke-virtual {v0, v1}, Lch/boye/httpclientandroidlib/conn/scheme/SchemeRegistry;->register(Lch/boye/httpclientandroidlib/conn/scheme/Scheme;)Lch/boye/httpclientandroidlib/conn/scheme/Scheme;
return-object v0
.end method