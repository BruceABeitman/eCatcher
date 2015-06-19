.class public final Lcom/instagram/api/h/b;
.super Ljava/lang/Object;
.source "InstagramURLUtil.java"
.method public static a(Ljava/lang/String;)Z
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v0
:cond_4
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getHost()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/instagram/api/h/b;->b(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_18
invoke-static {v1}, Lcom/instagram/api/h/b;->c(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3
:cond_18
const/4 v0, 0x1
goto :goto_3
.end method
.method public static b(Ljava/lang/String;)Z
.registers 2
if-eqz p0, :cond_14
const-string v0, "instagram.com"
invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
const-string v0, ".instagram.com"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method private static c(Ljava/lang/String;)Z
.registers 2
invoke-static {}, Lcom/instagram/api/h/c;->b()Z
move-result v0
if-eqz v0, :cond_10
const-string v0, ".sb.facebook.com"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method