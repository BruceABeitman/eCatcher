.class public final Lcom/instagram/android/h/b/a;
.super Ljava/lang/Object;
.source "UserBlockRequestHelper.java"
.method public static a(Lcom/instagram/user/c/a;Landroid/content/Context;Landroid/support/v4/app/an;)V
.registers 6
invoke-virtual {p0}, Lcom/instagram/user/c/a;->v()Z
move-result v0
if-eqz v0, :cond_23
const-string v0, "unblock"
:goto_8
invoke-virtual {p0}, Lcom/instagram/user/c/a;->v()Z
move-result v1
if-nez v1, :cond_26
const/4 v1, 0x1
:goto_f
invoke-virtual {p0, v1}, Lcom/instagram/user/c/a;->c(Z)V
invoke-virtual {p0}, Lcom/instagram/user/c/a;->D()V
new-instance v1, Lcom/instagram/android/h/b/b;
invoke-direct {v1, p1, p0}, Lcom/instagram/android/h/b/b;-><init>(Landroid/content/Context;Lcom/instagram/user/c/a;)V
new-instance v2, Lcom/instagram/android/c/a/a;
invoke-direct {v2, p1, p2, v1}, Lcom/instagram/android/c/a/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/api/j/a;)V
invoke-virtual {v2, p0, v0}, Lcom/instagram/android/c/a/a;->a(Lcom/instagram/user/c/a;Ljava/lang/String;)V
return-void
:cond_23
const-string v0, "block"
goto :goto_8
:cond_26
const/4 v1, 0x0
goto :goto_f
.end method