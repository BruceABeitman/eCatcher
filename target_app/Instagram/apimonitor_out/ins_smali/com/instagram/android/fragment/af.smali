.class final Lcom/instagram/android/fragment/af;
.super Ljava/lang/Object;
.source "EditProfileFragment.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/instagram/android/fragment/ab;
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ab;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/instagram/android/fragment/af; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_IS_EDIT_PROFILE_FLOW"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
iget-object v1, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v1}, Lcom/instagram/android/fragment/ab;->e(Lcom/instagram/android/fragment/ab;)Z
move-result v1
if-eqz v1, :cond_31
const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_COUNTRY_CODE"
iget-object v2, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v2}, Lcom/instagram/android/fragment/ab;->f(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/h/b/c;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/h/b/c;->g()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "com.instagram.android.login.fragment.PhoneNumberEntryFragment.ARGUMENT_NATIONAL_NUMBER"
iget-object v2, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v2}, Lcom/instagram/android/fragment/ab;->f(Lcom/instagram/android/fragment/ab;)Lcom/instagram/android/h/b/c;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/h/b/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_31
new-instance v1, Lcom/instagram/base/a/a/a;
iget-object v2, p0, Lcom/instagram/android/fragment/af;->a:Lcom/instagram/android/fragment/ab;
invoke-virtual {v2}, Lcom/instagram/android/fragment/ab;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/base/a/a/a;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/login/fragment/ad;
invoke-direct {v2}, Lcom/instagram/android/login/fragment/ad;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/base/a/a/a;->a(Landroid/support/v4/app/Fragment;Landroid/os/Bundle;)Lcom/instagram/base/a/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/base/a/a/a;->a()V
const-string v1, " - Lcom/instagram/android/fragment/af; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method