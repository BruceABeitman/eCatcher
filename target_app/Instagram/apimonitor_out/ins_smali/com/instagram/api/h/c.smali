.class public final Lcom/instagram/api/h/c;
.super Ljava/lang/Object;
.source "UrlHelper.java"
.method public static a()Ljava/lang/String;
.registers 2
const-string v0, "i.instagram.com"
invoke-static {}, Lcom/instagram/api/h/c;->b()Z
move-result v1
if-eqz v1, :cond_10
invoke-static {}, Lcom/instagram/k/a/a;->a()Lcom/instagram/k/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/a;->c()Ljava/lang/String;
move-result-object v0
:cond_10
return-object v0
.end method
.method public static a(Ljava/lang/String;Z)Ljava/lang/String;
.registers 6
if-eqz p1, :cond_23
const-string v0, "https"
:goto_4
invoke-static {}, Lcom/instagram/api/h/c;->b()Z
move-result v1
if-eqz v1, :cond_c
const-string v0, "http"
:cond_c
const-string v1, "%s://%s%s"
const/4 v2, 0x3
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
const/4 v0, 0x1
invoke-static {}, Lcom/instagram/api/h/c;->a()Ljava/lang/String;
move-result-object v3
aput-object v3, v2, v0
const/4 v0, 0x2
aput-object p0, v2, v0
invoke-static {v1, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
:cond_23
const-string v0, "http"
goto :goto_4
.end method
.method public static b()Z
.registers 1
invoke-static {}, Lcom/instagram/common/o/a;->d()Z
move-result v0
if-nez v0, :cond_12
invoke-static {}, Lcom/instagram/k/a/a;->a()Lcom/instagram/k/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/a;->b()Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method