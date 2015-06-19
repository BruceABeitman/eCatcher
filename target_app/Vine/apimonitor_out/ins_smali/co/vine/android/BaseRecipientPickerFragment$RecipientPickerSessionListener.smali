.class  Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "BaseRecipientPickerFragment.java"
.field final synthetic this$0:Lco/vine/android/BaseRecipientPickerFragment;
.method private constructor <init>(Lco/vine/android/BaseRecipientPickerFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lco/vine/android/BaseRecipientPickerFragment;Lco/vine/android/BaseRecipientPickerFragment$1;)V
.registers 3
invoke-direct {p0, p1}, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;-><init>(Lco/vine/android/BaseRecipientPickerFragment;)V
return-void
.end method
.method public onGetFriendsTypeAheadComplete(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V
.registers 7
iget-object v0, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
invoke-virtual {v0, p4, p5}, Lco/vine/android/BaseRecipientPickerFragment;->onGetFriendsTypeAheadComplete(Ljava/lang/String;Ljava/util/ArrayList;)V
return-void
.end method
.method public onGetUsersComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;IIJ)V
.registers 14
iget-object v1, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
invoke-virtual {v1, p2}, Lco/vine/android/BaseRecipientPickerFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;
move-result-object v0
if-eqz v0, :cond_2c
iget-object v1, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
invoke-virtual {v1, p3}, Lco/vine/android/BaseRecipientPickerFragment;->onGetFriendsComplete(I)V
iget-object v1, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I
invoke-virtual {v1, v2}, Lco/vine/android/BaseRecipientPickerFragment;->hideProgress(I)V
packed-switch p3, :pswitch_data_2e
iget-object v1, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
const/4 v2, 0x3
invoke-virtual {v1, v2}, Lco/vine/android/BaseRecipientPickerFragment;->hideProgress(I)V
invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_2c
iget-object v1, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
invoke-virtual {v1}, Lco/vine/android/BaseRecipientPickerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, p4}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;
:pswitch_2c
:cond_2c
return-void
nop
:pswitch_data_2e
.packed-switch 0xc8
:pswitch_2c
.end packed-switch
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
iget-object v0, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
iget-object v0, v0, Lco/vine/android/BaseRecipientPickerFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
instance-of v0, v0, Lco/vine/android/FriendsPickerAdapter;
if-eqz v0, :cond_11
iget-object v0, p0, Lco/vine/android/BaseRecipientPickerFragment$RecipientPickerSessionListener;->this$0:Lco/vine/android/BaseRecipientPickerFragment;
iget-object v0, v0, Lco/vine/android/BaseRecipientPickerFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/FriendsPickerAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/FriendsPickerAdapter;->setUserImages(Ljava/util/HashMap;)V
:cond_11
return-void
.end method