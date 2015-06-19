.class  Lco/vine/android/StartActivity$StartSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "StartActivity.java"
.field final synthetic this$0:Lco/vine/android/StartActivity;
.method constructor <init>(Lco/vine/android/StartActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onCheckTwitterComplete(Ljava/lang/String;ILjava/lang/String;IZLco/vine/android/api/VineUser;Lco/vine/android/api/VineLogin;)V
.registers 19
if-eqz p5, :cond_52
const/16 v1, 0xc8
if-ne p2, v1, :cond_52
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-virtual {v1}, Lco/vine/android/StartActivity;->dismissDialog()V
:try_start_b
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
iget-object v1, v1, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v2, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
iget-object v2, v2, Lco/vine/android/StartActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v2
move-object/from16 v0, p6
iget-object v4, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;
const/4 v5, 0x0
move-object/from16 v0, p6
iget-object v7, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;
move v3, p2
move-object/from16 v6, p7
invoke-virtual/range {v1 .. v7}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;
:try_end_26
.catch Lco/vine/android/VineLoggingException; {:try_start_b .. :try_end_26} :catch_3a
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
#getter for: Lco/vine/android/StartActivity;->mLoginRequest:Z
invoke-static {v1}, Lco/vine/android/StartActivity;->access$300(Lco/vine/android/StartActivity;)Z
move-result v1
if-eqz v1, :cond_4c
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
const/4 v2, -0x1
invoke-virtual {v1, v2}, Lco/vine/android/StartActivity;->setResult(I)V
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-virtual {v1}, Lco/vine/android/StartActivity;->finish()V
:goto_39
return-void
:catch_3a
move-exception v8
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
const v2, 0x7f0e00d7
invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-static {v8}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-virtual {v1}, Lco/vine/android/StartActivity;->finish()V
goto :goto_39
:cond_4c
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-static {v1}, Lco/vine/android/StartActivity;->toStart(Landroid/content/Context;)V
goto :goto_39
:cond_52
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-virtual {v1}, Lco/vine/android/StartActivity;->dismissDialog()V
const/16 v1, 0x190
if-ne p2, v1, :cond_73
new-instance v9, Landroid/os/Bundle;
invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
const-string v1, "user"
move-object/from16 v0, p7
invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
iget-object v2, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-static {v2, v9}, Lco/vine/android/SignUpPagerActivity;->getIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {v1, v2}, Lco/vine/android/StartActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_39
:cond_73
sget-object v1, Lco/vine/android/api/VineError$VineKnownErrors;->ACCOUNT_DEACTIVATED:Lco/vine/android/api/VineError$VineKnownErrors;
iget v1, v1, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
if-ne p4, v1, :cond_a0
const/4 v1, 0x1
invoke-static {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
move-result-object v10
const v1, 0x7f0e01ce
invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e01cf
invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e0057
invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
const v1, 0x7f0e01cd
invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-virtual {v1}, Lco/vine/android/StartActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v1
invoke-virtual {v10, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V
goto :goto_39
:cond_a0
iget-object v1, p0, Lco/vine/android/StartActivity$StartSessionListener;->this$0:Lco/vine/android/StartActivity;
invoke-static {v1, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
goto :goto_39
.end method