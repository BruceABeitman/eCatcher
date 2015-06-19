.class public final Lcom/instagram/creation/c/a;
.super Ljava/lang/Object;
.source "VideoFeatureUtil.java"
.method public static a()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_16
invoke-static {}, Lcom/instagram/common/o/a;->d()Z
move-result v0
if-nez v0, :cond_18
invoke-static {}, Lcom/instagram/k/a/a;->a()Lcom/instagram/k/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/a;->d()Z
move-result v0
if-eqz v0, :cond_18
:cond_16
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public static a(Landroid/content/Context;)Z
.registers 2
invoke-static {p0}, Lcom/instagram/common/u/g/a;->b(Landroid/content/Context;)Z
move-result v0
if-nez v0, :cond_c
invoke-static {}, Lcom/instagram/creation/c/a;->c()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static b()Z
.registers 1
invoke-static {}, Lcom/instagram/creation/c/a;->a()Z
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static c()Z
.registers 2
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v1
invoke-static {}, Lcom/instagram/creation/c/a;->a()Z
move-result v0
if-nez v0, :cond_10
const/4 v0, 0x1
:goto_b
invoke-virtual {v1, v0}, Lcom/instagram/k/b/a;->d(Z)Z
move-result v0
return v0
:cond_10
const/4 v0, 0x0
goto :goto_b
.end method
.method public static d()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0xe
if-lt v0, v1, :cond_e
invoke-static {}, Lcom/instagram/creation/c/a;->h()Z
move-result v0
if-nez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public static e()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x10
if-lt v0, v1, :cond_16
invoke-static {}, Lcom/instagram/common/o/a;->d()Z
move-result v0
if-nez v0, :cond_18
invoke-static {}, Lcom/instagram/k/a/a;->a()Lcom/instagram/k/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/a/a;->e()Z
move-result v0
if-eqz v0, :cond_18
:cond_16
const/4 v0, 0x1
:goto_17
return v0
:cond_18
const/4 v0, 0x0
goto :goto_17
.end method
.method public static f()Z
.registers 2
sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;
const-string v1, "nokia"
invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
const/4 v0, 0x1
goto :goto_b
.end method
.method public static g()Z
.registers 2
sget v0, Landroid/os/Build$VERSION;->SDK_INT:I
const/16 v1, 0x12
if-lt v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private static h()Z
.registers 2
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v1, "LG-E61"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
return v0
.end method