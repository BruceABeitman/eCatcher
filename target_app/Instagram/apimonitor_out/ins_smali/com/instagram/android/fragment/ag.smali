.class final Lcom/instagram/android/fragment/ag;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/ab;
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ag;->a:Lcom/instagram/android/fragment/ab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/ag; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/base/a/a/a;
iget-object v1, p0, Lcom/instagram/android/fragment/ag;->a:Lcom/instagram/android/fragment/ab;
invoke-virtual {v1}, Lcom/instagram/android/fragment/ab;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/android/fragment/o;
invoke-direct {v1}, Lcom/instagram/android/fragment/o;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
const-string v1, " - Lcom/instagram/android/fragment/ag; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method