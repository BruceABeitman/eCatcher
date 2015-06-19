.class Lco/vine/android/FindFriendsAddressFragment$FriendsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "FindFriendsAddressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/FindFriendsAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "FriendsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/FindFriendsAddressFragment;


# direct methods
.method constructor <init>(Lco/vine/android/FindFriendsAddressFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 7

    if-eqz p1, :cond_d

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_d

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsAddressFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->removeFollowing(J)V

    :cond_d
    return-void
.end method

.method public onGetAddressFriendsComplete(Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lco/vine/android/FindFriendsAddressFragment;->hideProgress(I)V

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsAddressFragment;->dismissDialog()V

    if-eqz p1, :cond_25

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_25

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0, v2}, Lco/vine/android/FindFriendsAddressFragment;->showSadface(Z)V

    :cond_21
    invoke-static {p4}, Lco/vine/android/util/FlurryUtils;->trackFindFriendsAddressCount(I)V

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0, v2}, Lco/vine/android/FindFriendsAddressFragment;->showSadface(Z)V

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e00e0

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackFindFriendsAddressFailure()V

    goto :goto_24
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/UsersAdapter;->setUserImages(Ljava/util/HashMap;)V

    return-void
.end method

.method public onRemoveUsersComplete(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsAddressFragment;->initLoader()V

    :cond_f
    return-void
.end method

.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 7

    if-eqz p1, :cond_d

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_d

    iget-object v0, p0, Lco/vine/android/FindFriendsAddressFragment$FriendsListener;->this$0:Lco/vine/android/FindFriendsAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsAddressFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->addFollowing(J)V

    :cond_d
    return-void
.end method
