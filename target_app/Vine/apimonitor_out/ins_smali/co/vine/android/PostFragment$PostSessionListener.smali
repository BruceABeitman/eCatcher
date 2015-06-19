.class  Lco/vine/android/PostFragment$PostSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "PostFragment.java"
.field final synthetic this$0:Lco/vine/android/PostFragment;
.method constructor <init>(Lco/vine/android/PostFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onConnectFacebookComplete(Ljava/lang/String;ILjava/lang/String;)V
.registers 6
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
#getter for: Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lco/vine/android/PostFragment;->access$000(Lco/vine/android/PostFragment;)Landroid/app/ProgressDialog;
move-result-object v0
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
#getter for: Lco/vine/android/PostFragment;->mProgress:Landroid/app/ProgressDialog;
invoke-static {v0}, Lco/vine/android/PostFragment;->access$000(Lco/vine/android/PostFragment;)Landroid/app/ProgressDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V
:cond_11
const/16 v0, 0xc8
if-eq p2, v0, :cond_2b
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
invoke-virtual {v0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e00ca
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
#getter for: Lco/vine/android/PostFragment;->mPostFacebook:Lco/vine/android/views/SwitchInterface;
invoke-static {v0}, Lco/vine/android/PostFragment;->access$100(Lco/vine/android/PostFragment;)Lco/vine/android/views/SwitchInterface;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
:cond_2b
return-void
.end method
.method public onConnectTwitterComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
.registers 16
const/16 v0, 0xc8
if-ne p2, v0, :cond_3a
const-wide/16 v0, 0x0
cmp-long v0, p7, v0
if-lez v0, :cond_39
invoke-static {p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_39
invoke-static {p6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_39
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
invoke-virtual {v0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
iget-object v1, v1, Lco/vine/android/PostFragment;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/client/Session;->getLoginEmail()Ljava/lang/String;
move-result-object v1
move-object v2, p4
move-object v3, p5
move-object v4, p6
move-wide v5, p7
invoke-static/range {v0 .. v6}, Lco/vine/android/client/VineAccountHelper;->saveTwitterInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
#getter for: Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;
invoke-static {v0}, Lco/vine/android/PostFragment;->access$200(Lco/vine/android/PostFragment;)Lco/vine/android/views/SwitchInterface;
move-result-object v0
const/4 v1, 0x1
invoke-interface {v0, v1}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
:cond_39
:goto_39
return-void
:cond_3a
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
invoke-virtual {v0}, Lco/vine/android/PostFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
#getter for: Lco/vine/android/PostFragment;->mPostTwitter:Lco/vine/android/views/SwitchInterface;
invoke-static {v0}, Lco/vine/android/PostFragment;->access$200(Lco/vine/android/PostFragment;)Lco/vine/android/views/SwitchInterface;
move-result-object v0
const/4 v1, 0x0
invoke-interface {v0, v1}, Lco/vine/android/views/SwitchInterface;->setChecked(Z)V
goto :goto_39
.end method
.method public onGetTagTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 8
const/16 v0, 0xc8
if-ne p2, v0, :cond_17
invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_17
invoke-static {p4, p5}, Lco/vine/android/provider/VineSuggestionsProvider;->addRealtimeTagSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
#getter for: Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;
invoke-static {v0}, Lco/vine/android/PostFragment;->access$300(Lco/vine/android/PostFragment;)Lco/vine/android/widget/PopupEditText;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/widget/PopupEditText;->performFilter(Z)V
:cond_17
return-void
.end method
.method public onGetUserTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 8
const/16 v0, 0xc8
if-ne p2, v0, :cond_17
invoke-virtual {p5}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_17
invoke-static {p4, p5}, Lco/vine/android/provider/VineSuggestionsProvider;->addRealtimeUserSuggestions(Ljava/lang/String;Ljava/util/ArrayList;)V
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
#getter for: Lco/vine/android/PostFragment;->mCaption:Lco/vine/android/widget/PopupEditText;
invoke-static {v0}, Lco/vine/android/PostFragment;->access$300(Lco/vine/android/PostFragment;)Lco/vine/android/widget/PopupEditText;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lco/vine/android/widget/PopupEditText;->performFilter(Z)V
:cond_17
return-void
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
invoke-super {p0, p1}, Lco/vine/android/client/AppSessionListener;->onPhotoImageLoaded(Ljava/util/HashMap;)V
iget-object v0, p0, Lco/vine/android/PostFragment$PostSessionListener;->this$0:Lco/vine/android/PostFragment;
#getter for: Lco/vine/android/PostFragment;->mUsersAdapter:Lco/vine/android/UsersAutoCompleteAdapter;
invoke-static {v0}, Lco/vine/android/PostFragment;->access$400(Lco/vine/android/PostFragment;)Lco/vine/android/UsersAutoCompleteAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lco/vine/android/UsersAutoCompleteAdapter;->setUserImages(Ljava/util/HashMap;)V
return-void
.end method