.class  Lco/vine/android/SignUpPagerActivity$SignUpListener;
.super Lco/vine/android/client/AppSessionListener;
.source "SignUpPagerActivity.java"
.field final synthetic this$0:Lco/vine/android/SignUpPagerActivity;
.method constructor <init>(Lco/vine/android/SignUpPagerActivity;)V
.registers 2
iput-object p1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onCheckTwitterComplete(Ljava/lang/String;ILjava/lang/String;IZLco/vine/android/api/VineUser;Lco/vine/android/api/VineLogin;)V
.registers 19
if-eqz p5, :cond_94
const/16 v1, 0xc8
if-ne p2, v1, :cond_94
:try_start_6
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v1, v1, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v2, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v2, v2, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
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
:try_end_21
.catch Lco/vine/android/VineLoggingException; {:try_start_6 .. :try_end_21} :catch_3a
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v1}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mFinish:Z
invoke-static {v1}, Lco/vine/android/SignUpPagerActivity;->access$300(Lco/vine/android/SignUpPagerActivity;)Z
move-result v1
if-eqz v1, :cond_51
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const/4 v2, -0x1
invoke-virtual {v1, v2}, Lco/vine/android/SignUpPagerActivity;->setResult(I)V
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v1}, Lco/vine/android/SignUpPagerActivity;->finish()V
:goto_39
return-void
:catch_3a
move-exception v8
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const v2, 0x7f0e00d7
invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-static {v8}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v1}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v1}, Lco/vine/android/SignUpPagerActivity;->finish()V
goto :goto_39
:cond_51
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_7f
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v1, v1, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v2, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v2}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lco/vine/android/ConfirmationFlowActivity;->requestPhoneVerification(Lco/vine/android/client/AppController;Ljava/lang/String;)V
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v2, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v3, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v3}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x1
invoke-static {v2, v3, v4}, Lco/vine/android/ConfirmationFlowActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
move-result-object v2
const/16 v3, 0x675
invoke-virtual {v1, v2, v3}, Lco/vine/android/SignUpPagerActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_39
:cond_7f
new-instance v10, Landroid/content/Intent;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const-class v2, Lco/vine/android/FindFriendsNUXActivity;
invoke-direct {v10, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "is_twitter_reg"
const/4 v2, 0x1
invoke-virtual {v10, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v1, v10}, Lco/vine/android/SignUpPagerActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_39
:cond_94
if-nez p5, :cond_b2
const/16 v1, 0x190
if-ne p2, v1, :cond_b2
new-instance v9, Landroid/os/Bundle;
invoke-direct {v9}, Landroid/os/Bundle;-><init>()V
const-string v1, "user"
move-object/from16 v0, p7
invoke-virtual {v9, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v2, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-static {v2, v9}, Lco/vine/android/SignUpPagerActivity;->getIntent(Landroid/content/Context;Landroid/os/Bundle;)Landroid/content/Intent;
move-result-object v2
invoke-virtual {v1, v2}, Lco/vine/android/SignUpPagerActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_39
:cond_b2
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-static {v1, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
goto :goto_39
.end method
.method public onLoginComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILco/vine/android/api/VineLogin;)V
.registers 11
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V
const/16 v0, 0xc8
if-ne p3, v0, :cond_66
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const v2, 0x7f0e0126
invoke-virtual {v1, v2}, Lco/vine/android/SignUpPagerActivity;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mFinish:Z
invoke-static {v0}, Lco/vine/android/SignUpPagerActivity;->access$300(Lco/vine/android/SignUpPagerActivity;)Z
move-result v0
if-eqz v0, :cond_2b
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setResult(I)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->finish()V
:goto_2a
return-void
:cond_2b
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v0}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_59
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v0, v0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lco/vine/android/ConfirmationFlowActivity;->requestPhoneVerification(Lco/vine/android/client/AppController;Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v2, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v2}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-static {v1, v2, v3}, Lco/vine/android/ConfirmationFlowActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
move-result-object v1
const/16 v2, 0x675
invoke-virtual {v0, v1, v2}, Lco/vine/android/SignUpPagerActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_2a
:cond_59
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-static {v0}, Lco/vine/android/FindFriendsNUXActivity;->start(Landroid/content/Context;)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v0, v0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v0}, Lco/vine/android/client/AppController;->getEditions()V
goto :goto_2a
:cond_66
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_72
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-static {v0, p4}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
goto :goto_2a
:cond_72
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const v1, 0x7f0e00cd
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_2a
.end method
.method public onSignUpComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 17
const/16 v0, 0xc8
if-ne p2, v0, :cond_f4
if-eqz p4, :cond_f4
iget-wide v0, p4, Lco/vine/android/api/VineLogin;->userId:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_f4
iget v0, p4, Lco/vine/android/api/VineLogin;->loginType:I
packed-switch v0, :pswitch_data_110
:goto_13
return-void
:pswitch_14
:try_start_14
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v0, v0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v1, v1, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
move v2, p2
move-object v3, p5
move-object v4, p6
move-object v5, p4
move-object/from16 v6, p7
invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginComplete(Lco/vine/android/client/Session;ILjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineLogin;Ljava/lang/String;)Lco/vine/android/api/VineLogin;
:try_end_29
.catch Lco/vine/android/VineLoggingException; {:try_start_14 .. :try_end_29} :catch_42
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mFinish:Z
invoke-static {v0}, Lco/vine/android/SignUpPagerActivity;->access$300(Lco/vine/android/SignUpPagerActivity;)Z
move-result v0
if-eqz v0, :cond_59
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->setResult(I)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->finish()V
goto :goto_13
:catch_42
move-exception v8
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const v1, 0x7f0e00d7
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
invoke-static {v8}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->finish()V
goto :goto_13
:cond_59
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v0}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_87
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v0, v0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lco/vine/android/ConfirmationFlowActivity;->requestPhoneVerification(Lco/vine/android/client/AppController;Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v2, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mPhone:Ljava/lang/String;
invoke-static {v2}, Lco/vine/android/SignUpPagerActivity;->access$400(Lco/vine/android/SignUpPagerActivity;)Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-static {v1, v2, v3}, Lco/vine/android/ConfirmationFlowActivity;->getIntent(Landroid/content/Context;Ljava/lang/String;Z)Landroid/content/Intent;
move-result-object v1
const/16 v2, 0x675
invoke-virtual {v0, v1, v2}, Lco/vine/android/SignUpPagerActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_13
:cond_87
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-static {v0}, Lco/vine/android/FindFriendsNUXActivity;->start(Landroid/content/Context;)V
goto :goto_13
:pswitch_8d
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
invoke-static {v0}, Lco/vine/android/SignUpPagerActivity;->access$000(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;
move-result-object v0
if-eqz v0, :cond_e0
new-instance v7, Landroid/app/ProgressDialog;
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const v1, 0x7f0f0037
invoke-direct {v7, v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;I)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iput-object v7, v0, Lco/vine/android/SignUpPagerActivity;->mProgressDialog:Landroid/app/ProgressDialog;
const/4 v0, 0x0
invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const v1, 0x7f0e0221
invoke-virtual {v0, v1}, Lco/vine/android/SignUpPagerActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v7, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V
invoke-virtual {v7}, Landroid/app/ProgressDialog;->show()V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
iget-object v0, v0, Lco/vine/android/SignUpPagerActivity;->mAppController:Lco/vine/android/client/AppController;
iget-object v1, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
invoke-static {v1}, Lco/vine/android/SignUpPagerActivity;->access$000(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;
move-result-object v1
iget-object v1, v1, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;
iget-object v2, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
invoke-static {v2}, Lco/vine/android/SignUpPagerActivity;->access$000(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;
move-result-object v2
iget-object v2, v2, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;
iget-object v3, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
invoke-static {v3}, Lco/vine/android/SignUpPagerActivity;->access$000(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;
move-result-object v3
iget-object v3, v3, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;
iget-object v4, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
#getter for: Lco/vine/android/SignUpPagerActivity;->mVineLogin:Lco/vine/android/api/VineLogin;
invoke-static {v4}, Lco/vine/android/SignUpPagerActivity;->access$000(Lco/vine/android/SignUpPagerActivity;)Lco/vine/android/api/VineLogin;
move-result-object v4
iget-wide v4, v4, Lco/vine/android/api/VineLogin;->userId:J
const/4 v6, 0x0
invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->loginCheckTwitter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JZ)Ljava/lang/String;
goto/16 :goto_13
:cond_e0
const/4 v0, 0x1
new-instance v1, Lco/vine/android/api/VineError;
const/4 v2, -0x1
const-string v3, "mVineLogin is null."
invoke-direct {v1, v2, v3}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;)V
const/4 v2, -0x1
invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryUtils;->onSignupFailure(ZLco/vine/android/api/VineError;I)V
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->finish()V
goto/16 :goto_13
:cond_f4
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-virtual {v0}, Lco/vine/android/SignUpPagerActivity;->dismissDialog()V
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_106
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
goto/16 :goto_13
:cond_106
iget-object v0, p0, Lco/vine/android/SignUpPagerActivity$SignUpListener;->this$0:Lco/vine/android/SignUpPagerActivity;
const v1, 0x7f0e00cd
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto/16 :goto_13
:pswitch_data_110
.packed-switch 0x1
:pswitch_14
:pswitch_8d
.end packed-switch
.end method