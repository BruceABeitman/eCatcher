.class final Lcom/instagram/api/f/c;
.super Ljava/lang/Object;
.source "ProxyUtil.java"
.method static a()Lch/boye/httpclientandroidlib/HttpHost;
.registers 4
const/4 v1, 0x0
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v2, 0xe
if-lt v0, v2, :cond_2b
const-string v0, "http.proxyHost"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
const-string v0, "http.proxyPort"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_28
:goto_15
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
invoke-static {v2}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_2b
const/4 v0, -0x1
if-eq v3, v0, :cond_2b
new-instance v0, Lch/boye/httpclientandroidlib/HttpHost;
invoke-direct {v0, v2, v3}, Lch/boye/httpclientandroidlib/HttpHost;-><init>(Ljava/lang/String;I)V
:goto_27
return-object v0
:cond_28
const-string v0, "-1"
goto :goto_15
:cond_2b
move-object v0, v1
goto :goto_27
.end method