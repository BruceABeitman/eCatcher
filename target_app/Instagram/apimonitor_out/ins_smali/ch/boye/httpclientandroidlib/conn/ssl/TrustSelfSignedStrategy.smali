.class public Lch/boye/httpclientandroidlib/conn/ssl/TrustSelfSignedStrategy;
.super Ljava/lang/Object;
.source "TrustSelfSignedStrategy.java"
.implements Lch/boye/httpclientandroidlib/conn/ssl/TrustStrategy;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
.registers 5
const/4 v0, 0x1
array-length v1, p1
if-ne v1, v0, :cond_5
:goto_4
return v0
:cond_5
const/4 v0, 0x0
goto :goto_4
.end method