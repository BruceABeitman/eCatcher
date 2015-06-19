.class final Lcom/instagram/android/login/fragment/ag;
.super Ljava/lang/Object;
.source "PhoneNumberEntryFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/ad;
.method constructor <init>(Lcom/instagram/android/login/fragment/ad;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/ag;->a:Lcom/instagram/android/login/fragment/ad;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/ag; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/android/e/d;
invoke-direct {v0}, Lcom/instagram/android/e/d;-><init>()V
iget-object v1, p0, Lcom/instagram/android/login/fragment/ag;->a:Lcom/instagram/android/login/fragment/ad;
invoke-virtual {v0, v1}, Lcom/instagram/base/a/a;->a(Landroid/support/v4/app/Fragment;)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/ag;->a:Lcom/instagram/android/login/fragment/ad;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ad;->p()Landroid/support/v4/app/s;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/instagram/base/a/a;->a(Landroid/support/v4/app/s;Ljava/lang/String;)V
const-string v1, " - Lcom/instagram/android/login/fragment/ag; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method