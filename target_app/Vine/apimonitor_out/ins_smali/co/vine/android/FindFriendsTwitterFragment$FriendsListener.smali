.class  Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "FindFriendsTwitterFragment.java"
.field final synthetic this$0:Lco/vine/android/FindFriendsTwitterFragment;
.method constructor <init>(Lco/vine/android/FindFriendsTwitterFragment;)V
.registers 2
iput-object p1, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V
return-void
.end method
.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
.registers 7
if-eqz p1, :cond_f
const/16 v0, 0xc8
if-eq p2, v0, :cond_f
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$600(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/Friendships;
move-result-object v0
invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->removeFollowing(J)V
:cond_f
return-void
.end method
.method public onGetTwitterFriendsComplete(Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;)V
.registers 12
const/4 v5, 0x0
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
invoke-virtual {v0}, Lco/vine/android/FindFriendsTwitterFragment;->dismissDialog()V
if-eqz p1, :cond_7d
const/16 v0, 0xc8
if-ne p2, v0, :cond_7d
invoke-static {p4}, Lco/vine/android/util/FlurryUtils;->trackFindFriendsTwitterCount(I)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mFromSignup:Z
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$100(Lco/vine/android/FindFriendsTwitterFragment;)Z
move-result v0
if-eqz v0, :cond_6e
if-lez p4, :cond_6e
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mContactsCountContainer:Landroid/widget/RelativeLayout;
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$200(Lco/vine/android/FindFriendsTwitterFragment;)Landroid/widget/RelativeLayout;
move-result-object v0
invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mContactsText:Landroid/widget/TextView;
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$300(Lco/vine/android/FindFriendsTwitterFragment;)Landroid/widget/TextView;
move-result-object v0
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
const v2, 0x7f0e00ec
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v5
invoke-virtual {v1, v2, v3}, Lco/vine/android/FindFriendsTwitterFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mSelectAllToggle:Landroid/widget/TextView;
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$500(Lco/vine/android/FindFriendsTwitterFragment;)Landroid/widget/TextView;
move-result-object v1
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mSelected:Z
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$400(Lco/vine/android/FindFriendsTwitterFragment;)Z
move-result v0
if-eqz v0, :cond_6a
const v0, 0x7f0e00b8
:goto_4e
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$700(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/FindFriendsNUXActivity;
move-result-object v0
iget-object v1, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
invoke-static {v1}, Lco/vine/android/FindFriendsTwitterFragment;->access$600(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/Friendships;
move-result-object v1
invoke-virtual {v0, p5, v1}, Lco/vine/android/FindFriendsNUXActivity;->addUsersToFollow(Ljava/util/ArrayList;Lco/vine/android/Friendships;)V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mTwitterFriends:Ljava/util/ArrayList;
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$800(Lco/vine/android/FindFriendsTwitterFragment;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:cond_69
:goto_69
return-void
:cond_6a
const v0, 0x7f0e01bc
goto :goto_4e
:cond_6e
if-nez p4, :cond_69
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
invoke-virtual {v0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e00ef
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_69
:cond_7d
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackFindFriendsTwitterFailure()V
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
invoke-virtual {v0}, Lco/vine/android/FindFriendsTwitterFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0e00ee
invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V
goto :goto_69
.end method
.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
.registers 3
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
iget-object v0, v0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
check-cast v0, Lco/vine/android/UsersAdapter;
invoke-virtual {v0, p1}, Lco/vine/android/UsersAdapter;->setUserImages(Ljava/util/HashMap;)V
return-void
.end method
.method public onRemoveUsersComplete(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
iget-object v0, v0, Lco/vine/android/FindFriendsTwitterFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;
invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-nez v0, :cond_f
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
invoke-virtual {v0}, Lco/vine/android/FindFriendsTwitterFragment;->initLoader()V
:cond_f
return-void
.end method
.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
.registers 7
if-eqz p1, :cond_f
const/16 v0, 0xc8
if-eq p2, v0, :cond_f
iget-object v0, p0, Lco/vine/android/FindFriendsTwitterFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsTwitterFragment;
#getter for: Lco/vine/android/FindFriendsTwitterFragment;->mFriendships:Lco/vine/android/Friendships;
invoke-static {v0}, Lco/vine/android/FindFriendsTwitterFragment;->access$600(Lco/vine/android/FindFriendsTwitterFragment;)Lco/vine/android/Friendships;
move-result-object v0
invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->addFollowing(J)V
:cond_f
return-void
.end method