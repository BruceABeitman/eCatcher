.class final Lcom/instagram/android/login/fragment/cu;
.super Ljava/lang/Object;
.source "VerifyFragment.java"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/cs;
.method constructor <init>(Lcom/instagram/android/login/fragment/cs;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/cu;->a:Lcom/instagram/android/login/fragment/cs;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/cu; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/cu;->a:Lcom/instagram/android/login/fragment/cs;
iget-object v0, v0, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->p()Landroid/support/v4/app/s;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->b(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/base/a/a/a;
iget-object v1, p0, Lcom/instagram/android/login/fragment/cu;->a:Lcom/instagram/android/login/fragment/cs;
iget-object v1, v1, Lcom/instagram/android/login/fragment/cs;->a:Lcom/instagram/android/login/fragment/ci;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ci;->p()Landroid/support/v4/app/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v1, Lcom/instagram/android/fragment/ab;
invoke-direct {v1}, Lcom/instagram/android/fragment/ab;-><init>()V
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
const-string v1, " - Lcom/instagram/android/login/fragment/cu; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method