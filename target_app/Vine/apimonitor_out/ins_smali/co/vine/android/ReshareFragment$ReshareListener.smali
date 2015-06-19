.class  Lco/vine/android/ReshareFragment$ReshareListener;
.super Lco/vine/android/client/AppSessionListener;
.source "ReshareFragment.java"
.field final synthetic this$0:Lco/vine/android/ReshareFragment;
.method constructor <init>(Lco/vine/android/ReshareFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onCaptchaRequired(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/service/PendingAction;)V
.registers 10
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mCaptchaRequestHelper:Lco/vine/android/CaptchaRequestHelper;
invoke-static {v0}, Lco/vine/android/ReshareFragment;->access$500(Lco/vine/android/ReshareFragment;)Lco/vine/android/CaptchaRequestHelper;
move-result-object v0
iget-object v1, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v1}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget v3, p3, Lco/vine/android/service/PendingAction;->actionCode:I
iget-object v4, p3, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;
move-object v2, p1
move-object v5, p2
invoke-virtual/range {v0 .. v5}, Lco/vine/android/CaptchaRequestHelper;->onCaptchaRequired(Landroid/app/Activity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V
return-void
.end method
.method public onConnectFacebookComplete(Ljava/lang/String;ILjava/lang/String;)V
.registers 6
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lco/vine/android/ReshareFragment;->access$200(Lco/vine/android/ReshareFragment;)Landroid/app/ProgressDialog;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lco/vine/android/ReshareFragment;->access$200(Lco/vine/android/ReshareFragment;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
const/16 v0, 0xc8
if-eq p2, v0, :cond_2a
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e00ca
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
:cond_2a
return-void
.end method
.method public onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.registers 17
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lco/vine/android/ReshareFragment;->access$200(Lco/vine/android/ReshareFragment;)Landroid/app/ProgressDialog;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lco/vine/android/ReshareFragment;->access$200(Lco/vine/android/ReshareFragment;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
const/16 v0, 0xc8
if-ne p2, v0, :cond_58
const-wide/16 v0, 0x0
cmp-long v0, p7, v0
if-lez v0, :cond_57
invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_57
invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_57
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
iget-object v1, v1, Lco/vine/android/ReshareFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;
move-result-object v1
move-object v2, p4
move-object v3, p5
move-object v4, p6
move-wide v5, p7
invoke-static/range {v0 .. v6}, Lco/vine/android/client/VineAccountHelper;->saveTwitterInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v7
const-string v0, "settings_twitter_connected"
const/4 v1, 0x1
invoke-interface {v7, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;
invoke-interface {v7}, Landroid/content/SharedPreferences$Editor;->commit()Z
:cond_57
:goto_57
return-void
:cond_58
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_57
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 5
iget-object v1, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mThumbnailKey:Lco/vine/android/util/image/ImageKey;
invoke-static {v1}, Lco/vine/android/ReshareFragment;->access$300(Lco/vine/android/ReshareFragment;)Lco/vine/android/util/image/ImageKey;
move-result-object v1
invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/util/image/UrlImage;
if-eqz v0, :cond_1b
invoke-virtual {v0}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v1
if-eqz v1, :cond_1b
iget-object v1, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
iget-object v2, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
#calls: Lco/vine/android/ReshareFragment;->setThumbnailImage(Landroid/graphics/Bitmap;)V
invoke-static {v1, v2}, Lco/vine/android/ReshareFragment;->access$400(Lco/vine/android/ReshareFragment;Landroid/graphics/Bitmap;)V
:cond_1b
return-void
.end method
.method public onSharePostComplete(Ljava/lang/String;ILjava/lang/String;)V
.registers 9
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mShareProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lco/vine/android/ReshareFragment;->access$000(Lco/vine/android/ReshareFragment;)Landroid/app/ProgressDialog;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mShareProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lco/vine/android/ReshareFragment;->access$000(Lco/vine/android/ReshareFragment;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
const/16 v0, 0xc8
if-eq p2, v0, :cond_34
invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_33
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
const v2, 0x7f0e00cc
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object p3, v3, v4
invoke-virtual {v1, v2, v3}, Lco/vine/android/ReshareFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
:goto_33
:cond_33
return-void
:cond_34
const-string v0, "facebook"
iget-object v1, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/ReshareFragment;->access$100(Lco/vine/android/ReshareFragment;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_58
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e0205
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
:cond_4e
:goto_4e
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
goto :goto_33
:cond_58
const-string v0, "twitter"
iget-object v1, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
#getter for: Lco/vine/android/ReshareFragment;->mNetwork:Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/ReshareFragment;->access$100(Lco/vine/android/ReshareFragment;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4e
iget-object v0, p0, Lco/vine/android/ReshareFragment$ReshareListener;->this$0:Lco/vine/android/ReshareFragment;
invoke-virtual {v0}, Lco/vine/android/ReshareFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e0213
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_4e
.end method