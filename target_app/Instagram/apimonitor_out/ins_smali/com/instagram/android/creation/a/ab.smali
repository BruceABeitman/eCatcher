.class final Lcom/instagram/android/creation/a/ab;
.super Ljava/lang/Object;
.source "FollowersShareFragment.java"
.implements Landroid/view/View$OnFocusChangeListener;
.field final synthetic a:Lcom/instagram/android/creation/a/t;
.method constructor <init>(Lcom/instagram/android/creation/a/t;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/creation/a/ab;->a:Lcom/instagram/android/creation/a/t;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onFocusChange(Landroid/view/View;Z)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/creation/a/ab; onFocusChange "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-eqz p2, :cond_7
iget-object v0, p0, Lcom/instagram/android/creation/a/ab;->a:Lcom/instagram/android/creation/a/t;
invoke-static {v0}, Lcom/instagram/android/creation/a/t;->h(Lcom/instagram/android/creation/a/t;)Z
:cond_7
const-string v1, " - Lcom/instagram/android/creation/a/ab; onFocusChange"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method