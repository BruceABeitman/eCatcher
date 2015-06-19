.class public Lch/boye/httpclientandroidlib/conn/ssl/BrowserCompatHostnameVerifier;
.super Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;
.source "BrowserCompatHostnameVerifier.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lch/boye/httpclientandroidlib/conn/ssl/AbstractVerifier;-><init>()V
return-void
.end method
.method public final toString()Ljava/lang/String;
.registers 2
const-string v0, "BROWSER_COMPATIBLE"
return-object v0
.end method
.method public final verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
.registers 5
const/4 v0, 0x0
invoke-virtual {p0, p1, p2, p3, v0}, Lch/boye/httpclientandroidlib/conn/ssl/BrowserCompatHostnameVerifier;->verify(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Z)V
return-void
.end method