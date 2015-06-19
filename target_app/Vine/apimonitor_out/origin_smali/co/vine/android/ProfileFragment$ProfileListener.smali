.class Lco/vine/android/ProfileFragment$ProfileListener;
.super Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ProfileListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ProfileFragment;


# direct methods
.method constructor <init>(Lco/vine/android/ProfileFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-direct {p0, p1}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;-><init>(Lco/vine/android/BaseTimelineFragment;)V

    return-void
.end method

.method private isUsernameValid()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v0}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v0}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v0

    iget-object v0, v0, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_17
    return v0

    :cond_18
    const/4 v0, 0x0

    goto :goto_17
.end method


# virtual methods
.method public onAbortAllRequestsComplete()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v0}, Lco/vine/android/ProfileFragment;->refresh()V

    return-void
.end method

.method public onBlockUserComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 13

    const v3, 0x7f0e0265

    const/4 v4, 0x1

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_6e

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #setter for: Lco/vine/android/ProfileFragment;->mIsUserBlocked:Z
    invoke-static {v1, p4}, Lco/vine/android/ProfileFragment;->access$1102(Lco/vine/android/ProfileFragment;Z)Z

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    if-eqz p4, :cond_5e

    invoke-direct {p0}, Lco/vine/android/ProfileFragment$ProfileListener;->isUsernameValid()Z

    move-result v1

    if-eqz v1, :cond_54

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    iget-object v6, v1, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    :goto_26
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v3, 0x7f0e0264

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Lco/vine/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUserId:J
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$1000(Lco/vine/android/ProfileFragment;)J

    move-result-wide v1

    const/4 v3, 0x2

    sget-object v5, Lco/vine/android/provider/Vine$UserGroupsView;->CONTENT_URI_FOLLOWERS:Landroid/net/Uri;

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/provider/VineDatabaseHelper;->removeUserWithType(JIZLandroid/net/Uri;)Z

    :goto_53
    return-void

    :cond_54
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v2, 0x7f0e026d

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_26

    :cond_5e
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, v3}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_53

    :cond_6e
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, v3}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_53
.end method

.method public onDeletePostComplete(Ljava/lang/String;JILjava/lang/String;)V
    .registers 7

    invoke-super/range {p0 .. p5}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->onDeletePostComplete(Ljava/lang/String;JILjava/lang/String;)V

    const/16 v0, 0xc8

    if-ne p4, v0, :cond_24

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    check-cast v0, Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0, p2, p3}, Lco/vine/android/widget/FeedAdapter;->removePost(J)V

    :cond_16
    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;
    invoke-static {v0}, Lco/vine/android/ProfileFragment;->access$200(Lco/vine/android/ProfileFragment;)Lco/vine/android/widget/SectionAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/widget/SectionAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #calls: Lco/vine/android/ProfileFragment;->bindProfileDataAndCounts()V
    invoke-static {v0}, Lco/vine/android/ProfileFragment;->access$1200(Lco/vine/android/ProfileFragment;)V

    :cond_24
    return-void
.end method

.method public onDisableUserRepostsComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 11

    const v5, 0x7f0e01aa

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v1

    if-eqz v1, :cond_53

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_70

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v4

    if-eqz p4, :cond_54

    move v1, v2

    :goto_22
    iput v1, v4, Lco/vine/android/api/VineUser;->repostsEnabled:I

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    if-eqz p4, :cond_60

    invoke-direct {p0}, Lco/vine/android/ProfileFragment$ProfileListener;->isUsernameValid()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    iget-object v0, v1, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    :goto_3d
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v5, 0x7f0e01a9

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v2

    invoke-virtual {v4, v5, v3}, Lco/vine/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_53
    :goto_53
    return-void

    :cond_54
    move v1, v3

    goto :goto_22

    :cond_56
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v4, 0x7f0e026e

    invoke-virtual {v1, v4}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_60
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, v5}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_53

    :cond_70
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, v5}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_53
.end method

.method public onEnableUserRepostsComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 11

    const v5, 0x7f0e01ac

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v1

    if-eqz v1, :cond_53

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_70

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v4

    if-eqz p4, :cond_54

    move v1, v2

    :goto_22
    iput v1, v4, Lco/vine/android/api/VineUser;->repostsEnabled:I

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    if-eqz p4, :cond_60

    invoke-direct {p0}, Lco/vine/android/ProfileFragment$ProfileListener;->isUsernameValid()Z

    move-result v1

    if-eqz v1, :cond_56

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    iget-object v0, v1, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    :goto_3d
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v5, 0x7f0e01ab

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v4, v5, v2}, Lco/vine/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    :cond_53
    :goto_53
    return-void

    :cond_54
    move v1, v3

    goto :goto_22

    :cond_56
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v4, 0x7f0e026e

    invoke-virtual {v1, v4}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3d

    :cond_60
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, v5}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_53

    :cond_70
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, v5}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_53
.end method

.method public onGetBlockedUsersComplete(Ljava/lang/String;ILjava/lang/String;Ljava/util/ArrayList;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    const/16 v3, 0xc8

    if-ne p2, v3, :cond_31

    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/api/VineUser;

    iget-wide v3, v2, Lco/vine/android/api/VineUser;->userId:J

    iget-object v5, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUserId:J
    invoke-static {v5}, Lco/vine/android/ProfileFragment;->access$1000(Lco/vine/android/ProfileFragment;)J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_8

    iget-object v3, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const/4 v4, 0x1

    #setter for: Lco/vine/android/ProfileFragment;->mIsUserBlocked:Z
    invoke-static {v3, v4}, Lco/vine/android/ProfileFragment;->access$1102(Lco/vine/android/ProfileFragment;Z)Z

    :cond_26
    iget-object v3, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v3}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    :cond_31
    return-void
.end method

.method public onGetConversationRowIdComplete(JJLjava/lang/String;Z)V
    .registers 16

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mWaitingToStartUserId:J
    invoke-static {v0}, Lco/vine/android/ProfileFragment;->access$100(Lco/vine/android/ProfileFragment;)J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const-wide/16 v1, -0x1

    #setter for: Lco/vine/android/ProfileFragment;->mWaitingToStartUserId:J
    invoke-static {v0, v1, v2}, Lco/vine/android/ProfileFragment;->access$102(Lco/vine/android/ProfileFragment;J)J

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0, p3, p4}, Lco/vine/android/client/AppController;->clearUnreadMessageCount(J)V

    iget-object v8, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const/4 v7, 0x1

    move-wide v1, p3

    move-object v3, p5

    move-wide v4, p1

    move v6, p6

    invoke-static/range {v0 .. v7}, Lco/vine/android/ConversationActivity;->getIntent(Landroid/content/Context;JLjava/lang/String;JZZ)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v8, v0}, Lco/vine/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    :cond_2c
    return-void
.end method

.method public onGetTimeLineComplete(Ljava/lang/String;ILjava/lang/String;IIZLjava/util/ArrayList;Ljava/lang/String;IIIJZILjava/lang/String;)V
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "IIZ",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VinePost;",
            ">;",
            "Ljava/lang/String;",
            "IIIJZI",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v12

    if-eqz v12, :cond_9c

    const/16 v2, 0xc8

    move/from16 v0, p2

    if-ne v0, v2, :cond_25

    const/4 v13, 0x0

    const/4 v2, 0x3

    move/from16 v0, p4

    if-ne v0, v2, :cond_15

    const/4 v13, 0x1

    :cond_15
    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, v2, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    move/from16 v0, p15

    invoke-virtual {v2, v0, v13}, Lco/vine/android/ProfileHeaderAdapter;->updatePostCount(II)V

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, v2, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v2}, Lco/vine/android/ProfileHeaderAdapter;->notifyDataSetChanged()V

    :cond_25
    if-eqz p6, :cond_95

    const/16 v2, 0xc8

    move/from16 v0, p2

    if-ne v0, v2, :cond_95

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    move/from16 v0, p10

    iput v0, v2, Lco/vine/android/ProfileFragment;->mNextPage:I

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    move-wide/from16 v0, p12

    iput-wide v0, v2, Lco/vine/android/ProfileFragment;->mAnchor:J

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, v2, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    check-cast v2, Lco/vine/android/widget/FeedAdapter;

    iget v3, v12, Lco/vine/android/PendingRequest;->fetchType:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_9d

    const/4 v3, 0x1

    :goto_45
    move-object/from16 v0, p7

    invoke-virtual {v2, v0, v3}, Lco/vine/android/widget/FeedAdapter;->mergePosts(Ljava/util/ArrayList;Z)V

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;
    invoke-static {v2}, Lco/vine/android/ProfileFragment;->access$200(Lco/vine/android/ProfileFragment;)Lco/vine/android/widget/SectionAdapter;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/widget/SectionAdapter;->getNumberOfAdapters()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_7f

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    new-instance v3, Lco/vine/android/widget/SectionAdapter;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/widget/BaseAdapter;

    const/4 v5, 0x0

    iget-object v6, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v6, v6, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    iget-object v6, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v6, v6, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    aput-object v6, v4, v5

    invoke-direct {v3, v4}, Lco/vine/android/widget/SectionAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    #setter for: Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;
    invoke-static {v2, v3}, Lco/vine/android/ProfileFragment;->access$202(Lco/vine/android/ProfileFragment;Lco/vine/android/widget/SectionAdapter;)Lco/vine/android/widget/SectionAdapter;

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, v2, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    iget-object v3, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;
    invoke-static {v3}, Lco/vine/android/ProfileFragment;->access$200(Lco/vine/android/ProfileFragment;)Lco/vine/android/widget/SectionAdapter;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_7f
    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, v2, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v11, 0x0

    move-object/from16 v3, p7

    move/from16 v4, p4

    move-object/from16 v5, p8

    move/from16 v6, p9

    move/from16 v7, p10

    move/from16 v8, p11

    move-wide/from16 v9, p12

    invoke-virtual/range {v2 .. v11}, Lco/vine/android/client/AppController;->saveLoadedPosts(Ljava/util/ArrayList;ILjava/lang/String;IIIJZ)Ljava/lang/String;

    :cond_95
    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget v3, v12, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v2, v3}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    :cond_9c
    return-void

    :cond_9d
    const/4 v3, 0x0

    goto :goto_45
.end method

.method public onGetUserComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineUser;)V
    .registers 8

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_54

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_4d

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #setter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1, p4}, Lco/vine/android/ProfileFragment;->access$402(Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)Lco/vine/android/api/VineUser;

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #calls: Lco/vine/android/ProfileFragment;->isLocked()Z
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$500(Lco/vine/android/ProfileFragment;)Z

    move-result v1

    if-eqz v1, :cond_35

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const/4 v2, 0x0

    #setter for: Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;
    invoke-static {v1, v2}, Lco/vine/android/ProfileFragment;->access$202(Lco/vine/android/ProfileFragment;Lco/vine/android/widget/SectionAdapter;)Lco/vine/android/widget/SectionAdapter;

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->isFocused()Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mTakeFocus:Z
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$600(Lco/vine/android/ProfileFragment;)Z

    move-result v1

    if-eqz v1, :cond_55

    :cond_31
    const/4 v1, 0x1

    :goto_32
    #calls: Lco/vine/android/ProfileFragment;->setup(Z)V
    invoke-static {v2, v1}, Lco/vine/android/ProfileFragment;->access$700(Lco/vine/android/ProfileFragment;Z)V

    :cond_35
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    if-eqz v1, :cond_4d

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v2}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->bindUserData(Lco/vine/android/api/VineUser;)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v1}, Lco/vine/android/ProfileHeaderAdapter;->notifyDataSetChanged()V

    :cond_4d
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    :cond_54
    return-void

    :cond_55
    const/4 v1, 0x0

    goto :goto_32
.end method

.method public onGetUserIdComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 14

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v0, p4, v3

    if-lez v0, :cond_68

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #calls: Lco/vine/android/ProfileFragment;->setUserId(J)V
    invoke-static {v0, p4, p5}, Lco/vine/android/ProfileFragment;->access$1400(Lco/vine/android/ProfileFragment;J)V

    iget-object v3, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUserId:J
    invoke-static {v0}, Lco/vine/android/ProfileFragment;->access$1000(Lco/vine/android/ProfileFragment;)J

    move-result-wide v4

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-nez v0, :cond_5e

    move v0, v1

    :goto_22
    #setter for: Lco/vine/android/ProfileFragment;->mIsMe:Z
    invoke-static {v3, v0}, Lco/vine/android/ProfileFragment;->access$302(Lco/vine/android/ProfileFragment;Z)Z

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mIsMe:Z
    invoke-static {v0}, Lco/vine/android/ProfileFragment;->access$300(Lco/vine/android/ProfileFragment;)Z

    move-result v0

    if-eqz v0, :cond_60

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v3, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v3}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v4, "profile_hide_reposts"

    invoke-interface {v3, v4, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    #setter for: Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z
    invoke-static {v0, v3}, Lco/vine/android/ProfileFragment;->access$1502(Lco/vine/android/ProfileFragment;Z)Z

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v3, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v3}, Lco/vine/android/ProfileFragment;->isFocused()Z

    move-result v3

    if-nez v3, :cond_54

    iget-object v3, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mTakeFocus:Z
    invoke-static {v3}, Lco/vine/android/ProfileFragment;->access$600(Lco/vine/android/ProfileFragment;)Z

    move-result v3

    if-eqz v3, :cond_55

    :cond_54
    move v2, v1

    :cond_55
    #calls: Lco/vine/android/ProfileFragment;->setup(Z)V
    invoke-static {v0, v2}, Lco/vine/android/ProfileFragment;->access$700(Lco/vine/android/ProfileFragment;Z)V

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #calls: Lco/vine/android/ProfileFragment;->initProfile()V
    invoke-static {v0}, Lco/vine/android/ProfileFragment;->access$1600(Lco/vine/android/ProfileFragment;)V

    :goto_5d
    return-void

    :cond_5e
    move v0, v2

    goto :goto_22

    :cond_60
    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0}, Lco/vine/android/client/AppController;->getBlockedUsers()Ljava/lang/String;

    goto :goto_5d

    :cond_68
    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_5d
.end method

.method public onGetUsersMeComplete(Ljava/lang/String;ILjava/lang/String;JLco/vine/android/api/VineUser;)V
    .registers 11

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v1

    if-eqz v1, :cond_40

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_27

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mIsMe:Z
    invoke-static {v2}, Lco/vine/android/ProfileFragment;->access$300(Lco/vine/android/ProfileFragment;)Z

    move-result v2

    if-eqz v2, :cond_27

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #setter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v2, p6}, Lco/vine/android/ProfileFragment;->access$402(Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)Lco/vine/android/api/VineUser;

    if-eqz p6, :cond_27

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2, p6}, Lco/vine/android/ProfileFragment;->bindUserData(Lco/vine/android/api/VineUser;)V

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, v2, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v2}, Lco/vine/android/ProfileHeaderAdapter;->notifyDataSetChanged()V

    :cond_27
    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget v3, v1, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v2, v3}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    new-instance v0, Landroid/content/Intent;

    const-string v2, "co.vine.android.profileColor"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v2}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "co.vine.android.BROADCAST"

    invoke-virtual {v2, v0, v3}, Landroid/support/v4/app/FragmentActivity;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    :cond_40
    return-void
.end method

.method public onLikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 8

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_21

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_21

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mLikeCache:Lco/vine/android/LikeCache;

    invoke-virtual {v1, p4, p5}, Lco/vine/android/LikeCache;->removeEntry(J)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v1, p4, p5}, Lco/vine/android/widget/GenericTimelineAdapter;->showUnlikedByMe(J)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/GenericTimelineAdapter;->notifyDataSetChanged()V

    :cond_21
    return-void
.end method

.method public onPhotoImageError(Lco/vine/android/util/image/ImageKey;Lco/vine/android/network/HttpResult;)V
    .registers 3

    return-void
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 5
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

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    if-eqz v1, :cond_14

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileHeaderAdapter;->onImageLoaded(Ljava/util/HashMap;)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v1, p1}, Lco/vine/android/widget/GenericTimelineAdapter;->setImages(Ljava/util/HashMap;)V

    :cond_14
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUserProfileImageKeyForShortcut:Lco/vine/android/util/image/ImageKey;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$800(Lco/vine/android/ProfileFragment;)Lco/vine/android/util/image/ImageKey;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUserProfileImageKeyForShortcut:Lco/vine/android/util/image/ImageKey;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$800(Lco/vine/android/ProfileFragment;)Lco/vine/android/util/image/ImageKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/util/image/UrlImage;

    if-eqz v0, :cond_31

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, v0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    #calls: Lco/vine/android/ProfileFragment;->addProfileShortCut(Landroid/graphics/Bitmap;)V
    invoke-static {v1, v2}, Lco/vine/android/ProfileFragment;->access$900(Lco/vine/android/ProfileFragment;Landroid/graphics/Bitmap;)V

    :cond_31
    return-void
.end method

.method public onReportUserComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 10

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_35

    invoke-direct {p0}, Lco/vine/android/ProfileFragment$ProfileListener;->isUsernameValid()Z

    move-result v1

    if-eqz v1, :cond_2b

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    iget-object v0, v1, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    :goto_12
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v3, 0x7f0e0269

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v2, v3, v4}, Lco/vine/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    :goto_2a
    return-void

    :cond_2b
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v2, 0x7f0e026e

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_35
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v3, 0x7f0e026a

    invoke-virtual {v2, v3}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a
.end method

.method public onRespondFollowRequestComplete(Ljava/lang/String;ILjava/lang/String;ZJ)V
    .registers 11

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_2f

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mFollowHeader:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$1300(Lco/vine/android/ProfileFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_2e

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mFollowHeader:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$1300(Lco/vine/android/ProfileFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const v2, 0x7f0a00fa

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mFollowHeader:Landroid/widget/LinearLayout;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$1300(Lco/vine/android/ProfileFragment;)Landroid/widget/LinearLayout;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_2e
    :goto_2e
    return-void

    :cond_2f
    if-eqz p4, :cond_3e

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e003d

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_2e

    :cond_3e
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f0e00b7

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    goto :goto_2e
.end method

.method public onTrimMemory(I)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->onTrimMemory(I)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v1, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lco/vine/android/widget/GenericTimelineAdapter;->onTrimMemory(I)V

    :cond_c
    return-void
.end method

.method public onUnblockUserComplete(Ljava/lang/String;ILjava/lang/String;Z)V
    .registers 11

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_70

    iget-object v4, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    if-nez p4, :cond_51

    move v1, v2

    :goto_b
    #setter for: Lco/vine/android/ProfileFragment;->mIsUserBlocked:Z
    invoke-static {v4, v1}, Lco/vine/android/ProfileFragment;->access$1102(Lco/vine/android/ProfileFragment;Z)Z

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportInvalidateOptionsMenu()V

    if-eqz p4, :cond_5d

    invoke-direct {p0}, Lco/vine/android/ProfileFragment$ProfileListener;->isUsernameValid()Z

    move-result v1

    if-eqz v1, :cond_53

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    iget-object v0, v1, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    :goto_27
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v4, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v5, 0x7f0e026b

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v3

    invoke-virtual {v4, v5, v2}, Lco/vine/android/ProfileFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v2, v2, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUserId:J
    invoke-static {v3}, Lco/vine/android/ProfileFragment;->access$1000(Lco/vine/android/ProfileFragment;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lco/vine/android/client/AppController;->fetchUser(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    :goto_50
    return-void

    :cond_51
    move v1, v3

    goto :goto_b

    :cond_53
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v4, 0x7f0e026d

    invoke-virtual {v1, v4}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    :cond_5d
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v3, 0x7f0e0265

    invoke-virtual {v2, v3}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_50

    :cond_70
    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    const v3, 0x7f0e026c

    invoke-virtual {v2, v3}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lco/vine/android/util/Util;->showDefaultToast(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_50
.end method

.method public onUnlikePost(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 8

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/ProfileFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_21

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_21

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mLikeCache:Lco/vine/android/LikeCache;

    invoke-virtual {v1, p4, p5}, Lco/vine/android/LikeCache;->like(J)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v1, p4, p5}, Lco/vine/android/widget/GenericTimelineAdapter;->showLikedByMe(J)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/GenericTimelineAdapter;->notifyDataSetChanged()V

    :cond_21
    return-void
.end method

.method public onUnrevine(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 7

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_d

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    check-cast v0, Lco/vine/android/widget/FeedAdapter;

    invoke-virtual {v0, p4, p5}, Lco/vine/android/widget/FeedAdapter;->removePost(J)V

    :cond_d
    invoke-super/range {p0 .. p5}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->onUnrevine(Ljava/lang/String;ILjava/lang/String;J)V

    return-void
.end method

.method public onVideoPathError(Lco/vine/android/util/video/VideoKey;Lco/vine/android/network/HttpResult;)V
    .registers 3

    return-void
.end method

.method public onVideoPathObtained(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/video/VideoKey;",
            "Lco/vine/android/util/video/UrlVideo;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/ProfileFragment$ProfileListener;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v0, v0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/widget/GenericTimelineAdapter;->onVideoPathObtained(Ljava/util/HashMap;)V

    return-void
.end method
