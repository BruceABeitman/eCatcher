.class  Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "PrivacyControlsFragment.java"
.field final synthetic this$0:Lco/vine/android/PrivacyControlsFragment;
.method constructor <init>(Lco/vine/android/PrivacyControlsFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onUpdateAcceptOonComplete(Ljava/lang/String;ILjava/lang/String;Z)V
.registers 8
iget-object v2, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
#getter for: Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v2}, Lco/vine/android/PrivacyControlsFragment;->access$000(Lco/vine/android/PrivacyControlsFragment;)Landroid/app/ProgressDialog;
move-result-object v2
if-eqz v2, :cond_11
iget-object v2, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
#getter for: Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v2}, Lco/vine/android/PrivacyControlsFragment;->access$000(Lco/vine/android/PrivacyControlsFragment;)Landroid/app/ProgressDialog;
move-result-object v2
invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
iget-object v2, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
invoke-virtual {v2}, Lco/vine/android/PrivacyControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/16 v2, 0xc8
if-ne p2, v2, :cond_2c
invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "accept_out_of_network_messages"
invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
:goto_2b
return-void
:cond_2c
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_36
invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
goto :goto_2b
:cond_36
const v2, 0x7f0e0189
invoke-static {v0, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_2b
.end method
.method public onUpdateDiscoverability(Ljava/lang/String;ILjava/lang/String;IZ)V
.registers 10
iget-object v3, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
#getter for: Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v3}, Lco/vine/android/PrivacyControlsFragment;->access$000(Lco/vine/android/PrivacyControlsFragment;)Landroid/app/ProgressDialog;
move-result-object v3
if-eqz v3, :cond_11
iget-object v3, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
#getter for: Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v3}, Lco/vine/android/PrivacyControlsFragment;->access$000(Lco/vine/android/PrivacyControlsFragment;)Landroid/app/ProgressDialog;
move-result-object v3
invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
iget-object v3, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
invoke-virtual {v3}, Lco/vine/android/PrivacyControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/16 v3, 0xc8
if-ne p2, v3, :cond_37
if-nez p4, :cond_34
const-string v2, "email_discoverable"
:goto_1f
iget-object v3, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
invoke-virtual {v3}, Lco/vine/android/PrivacyControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v3
invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-interface {v1, v2, p5}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
:goto_33
return-void
:cond_34
const-string v2, "phone_discoverable"
goto :goto_1f
:cond_37
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_41
invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
goto :goto_33
:cond_41
const v3, 0x7f0e0189
invoke-static {v0, v3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_33
.end method
.method public onUpdateEnableAddressBookComplete(Ljava/lang/String;ILjava/lang/String;Z)V
.registers 8
iget-object v2, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
#getter for: Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v2}, Lco/vine/android/PrivacyControlsFragment;->access$000(Lco/vine/android/PrivacyControlsFragment;)Landroid/app/ProgressDialog;
move-result-object v2
if-eqz v2, :cond_11
iget-object v2, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
#getter for: Lco/vine/android/PrivacyControlsFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v2}, Lco/vine/android/PrivacyControlsFragment;->access$000(Lco/vine/android/PrivacyControlsFragment;)Landroid/app/ProgressDialog;
move-result-object v2
invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
iget-object v2, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
invoke-virtual {v2}, Lco/vine/android/PrivacyControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/16 v2, 0xc8
if-ne p2, v2, :cond_3b
iget-object v2, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
invoke-virtual {v2}, Lco/vine/android/PrivacyControlsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v2
invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
const-string v2, "enable_address_book"
invoke-interface {v1, v2, p4}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V
if-eqz p4, :cond_3a
iget-object v2, p0, Lco/vine/android/PrivacyControlsFragment$ContentControlsListener;->this$0:Lco/vine/android/PrivacyControlsFragment;
iget-object v2, v2, Lco/vine/android/PrivacyControlsFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2}, Lco/vine/android/client/AppController;->sendAddressBook()Ljava/lang/String;
:goto_3a
:cond_3a
return-void
:cond_3b
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_45
invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
goto :goto_3a
:cond_45
const v2, 0x7f0e0189
invoke-static {v0, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_3a
.end method