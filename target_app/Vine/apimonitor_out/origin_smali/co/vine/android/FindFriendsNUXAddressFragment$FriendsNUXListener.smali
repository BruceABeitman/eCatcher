.class Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;
.super Lco/vine/android/client/AppSessionListener;
.source "FindFriendsNUXAddressFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/FindFriendsNUXAddressFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FriendsNUXListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/FindFriendsNUXAddressFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/FindFriendsNUXAddressFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/FindFriendsNUXAddressFragment;Lco/vine/android/FindFriendsNUXAddressFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;-><init>(Lco/vine/android/FindFriendsNUXAddressFragment;)V

    return-void
.end method


# virtual methods
.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 7

    if-eqz p1, :cond_d

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_d

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->removeFollowing(J)V

    :cond_d
    return-void
.end method

.method public onGetAddressFriendsComplete(Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;)V
    .registers 12
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

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lco/vine/android/FindFriendsNUXAddressFragment;->hideProgress(I)V

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->dismissDialog()V

    if-eqz p1, :cond_75

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_75

    if-gtz p4, :cond_1e

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    invoke-virtual {v0, v3}, Lco/vine/android/FindFriendsNUXAddressFragment;->showSadface(Z)V

    :goto_1a
    invoke-static {p4}, Lco/vine/android/util/FlurryUtils;->trackFindFriendsAddressCount(I)V

    :goto_1d
    return-void

    :cond_1e
    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    invoke-virtual {v0, v5}, Lco/vine/android/FindFriendsNUXAddressFragment;->showSadface(Z)V

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    #getter for: Lco/vine/android/FindFriendsNUXAddressFragment;->mContactsCountContainer:Landroid/widget/RelativeLayout;
    invoke-static {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->access$200(Lco/vine/android/FindFriendsNUXAddressFragment;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    #getter for: Lco/vine/android/FindFriendsNUXAddressFragment;->mContactsText:Landroid/widget/TextView;
    invoke-static {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->access$300(Lco/vine/android/FindFriendsNUXAddressFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    const v2, 0x7f0e00e3

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Lco/vine/android/FindFriendsNUXAddressFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    #getter for: Lco/vine/android/FindFriendsNUXAddressFragment;->mSelectAllToggle:Landroid/widget/TextView;
    invoke-static {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->access$500(Lco/vine/android/FindFriendsNUXAddressFragment;)Landroid/widget/TextView;

    move-result-object v1

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    #getter for: Lco/vine/android/FindFriendsNUXAddressFragment;->mSelected:Z
    invoke-static {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->access$400(Lco/vine/android/FindFriendsNUXAddressFragment;)Z

    move-result v0

    if-eqz v0, :cond_71

    const v0, 0x7f0e00b8

    :goto_57
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    #getter for: Lco/vine/android/FindFriendsNUXAddressFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;
    invoke-static {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->access$600(Lco/vine/android/FindFriendsNUXAddressFragment;)Lco/vine/android/FindFriendsNUXActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    iget-object v1, v1, Lco/vine/android/FindFriendsNUXAddressFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v0, p5, v1}, Lco/vine/android/FindFriendsNUXActivity;->addUsersToFollow(Ljava/util/ArrayList;Lco/vine/android/Friendships;)V

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    #getter for: Lco/vine/android/FindFriendsNUXAddressFragment;->mAddressFriends:Ljava/util/ArrayList;
    invoke-static {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->access$700(Lco/vine/android/FindFriendsNUXAddressFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_1a

    :cond_71
    const v0, 0x7f0e01bc

    goto :goto_57

    :cond_75
    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    invoke-virtual {v0, v3}, Lco/vine/android/FindFriendsNUXAddressFragment;->showSadface(Z)V

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e00e0

    invoke-static {v0, v1}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackFindFriendsAddressFailure()V

    goto :goto_1d
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

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsNUXAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/UsersAdapter;->setUserImages(Ljava/util/HashMap;)V

    return-void
.end method

.method public onRemoveUsersComplete(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsNUXAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v0}, Landroid/support/v4/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    invoke-virtual {v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->initLoader()V

    :cond_f
    return-void
.end method

.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 7

    if-eqz p1, :cond_d

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_d

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;->this$0:Lco/vine/android/FindFriendsNUXAddressFragment;

    iget-object v0, v0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v0, p4, p5}, Lco/vine/android/Friendships;->addFollowing(J)V

    :cond_d
    return-void
.end method