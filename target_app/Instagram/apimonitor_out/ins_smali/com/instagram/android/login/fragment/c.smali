.class final Lcom/instagram/android/login/fragment/c;
.super Ljava/lang/Object;
.source "ForgotPasswordFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/login/fragment/a;
.method constructor <init>(Lcom/instagram/android/login/fragment/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/c;->a:Lcom/instagram/android/login/fragment/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/login/fragment/c; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/instagram/o/b;->ak:Lcom/instagram/o/b;
invoke-virtual {v0}, Lcom/instagram/o/b;->c()V
new-instance v0, Lcom/instagram/android/login/fragment/ad;
invoke-direct {v0}, Lcom/instagram/android/login/fragment/ad;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_SMS_RESET_FLOW"
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
new-instance v2, Lcom/instagram/base/a/a/a;
iget-object v3, p0, Lcom/instagram/android/login/fragment/c;->a:Lcom/instagram/android/login/fragment/a;
invoke-virtual {v3}, Lcom/instagram/android/login/fragment/a;->p()Landroid/support/v4/app/s;
move-result-object v3
invoke-direct {v2, v3}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
invoke-virtual {v2, v0, v1}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
const-string v1, " - Lcom/instagram/android/login/fragment/c; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method