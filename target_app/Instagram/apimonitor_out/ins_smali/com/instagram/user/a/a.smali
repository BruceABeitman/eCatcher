.class public final Lcom/instagram/user/a/a;
.super Ljava/lang/Object;
.source "UserHelper.java"
.method public static a(Lcom/instagram/user/c/a;)Z
.registers 3
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_1c
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public static a(Ljava/lang/String;)Z
.registers 3
invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/service/a/a;->c()Ljava/lang/String;
move-result-object v0
invoke-static {p0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1c
invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1c
invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public static b(Lcom/instagram/user/c/a;)Z
.registers 4
const/4 v0, 0x1
invoke-static {p0}, Lcom/instagram/user/a/a;->a(Lcom/instagram/user/c/a;)Z
move-result v1
if-eqz v1, :cond_8
:cond_7
:goto_7
return v0
:cond_8
invoke-virtual {p0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v1
if-eqz v1, :cond_7
invoke-virtual {p0}, Lcom/instagram/user/c/a;->s()Lcom/instagram/user/c/e;
move-result-object v1
sget-object v2, Lcom/instagram/user/c/e;->c:Lcom/instagram/user/c/e;
invoke-virtual {v1, v2}, Lcom/instagram/user/c/e;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_7
invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v1
if-eqz v1, :cond_7
invoke-virtual {p0}, Lcom/instagram/user/c/a;->t()Lcom/instagram/user/c/c;
move-result-object v1
sget-object v2, Lcom/instagram/user/c/c;->d:Lcom/instagram/user/c/c;
invoke-virtual {v1, v2}, Lcom/instagram/user/c/c;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_7
const/4 v0, 0x0
goto :goto_7
.end method