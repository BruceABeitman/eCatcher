.class public Lco/vine/android/widget/UsersMemoryAdapterHelper;
.super Ljava/lang/Object;
.source "UsersMemoryAdapterHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;
    }
.end annotation


# static fields
.field public static final ARG_ANCHOR:Ljava/lang/String; = "anchor"

.field public static final ARG_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"

.field public static final ARG_POST_ID:Ljava/lang/String; = "post_id"

.field public static final ARG_PROFILE_ID:Ljava/lang/String; = "p_id"

.field public static final ARG_USERS_TYPE:Ljava/lang/String; = "u_type"


# instance fields
.field private mAdapter:Lco/vine/android/UsersMemoryAdapter;

.field private mAnchor:J

.field private mAppController:Lco/vine/android/client/AppController;

.field private mAppSessionListener:Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;

.field mFetched:Z

.field private final mFlurryEventSource:Ljava/lang/String;

.field private final mFragment:Lco/vine/android/BaseFragment;

.field private mFriendships:Lco/vine/android/Friendships;

.field private final mFriendshipsTag:Ljava/lang/String;

.field private final mLoadFalgsTag:Ljava/lang/String;

.field mLoadFlags:I

.field private mNextPage:I

.field mNotificationId:J

.field private mOriginalAnchor:J

.field private final mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

.field mPostId:J

.field mProfileId:J

.field private mRefreshable:Z

.field mUsersType:I


# direct methods
.method public constructor <init>(Lco/vine/android/BaseFragment;Lco/vine/android/PendingRequestHelper;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const-wide/16 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    iput-wide v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J

    iput-wide v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mOriginalAnchor:J

    iput-object p1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFragment:Lco/vine/android/BaseFragment;

    iput-object p2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    iput-object p3, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFlurryEventSource:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state_load_flags_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mLoadFalgsTag:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "state_friendships_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendshipsTag:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/PendingRequestHelper;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    return-object v0
.end method

.method static synthetic access$100(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/UsersMemoryAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lco/vine/android/widget/UsersMemoryAdapterHelper;I)I
    .registers 2

    iput p1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    return p1
.end method

.method static synthetic access$302(Lco/vine/android/widget/UsersMemoryAdapterHelper;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J

    return-wide p1
.end method

.method static synthetic access$400(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/Friendships;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    return-object v0
.end method

.method static synthetic access$500(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/BaseFragment;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFragment:Lco/vine/android/BaseFragment;

    return-object v0
.end method

.method private fetchContent(I)V
    .registers 10

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->hasPendingRequest(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    const/4 v7, 0x0

    packed-switch p1, :pswitch_data_7a

    :goto_d
    iget v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mUsersType:I

    sparse-switch v0, :sswitch_data_84

    :goto_12
    if-eqz v7, :cond_8

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->showProgress(I)V

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    invoke-virtual {v0, v7, p1}, Lco/vine/android/PendingRequestHelper;->addRequest(Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_8

    :pswitch_1f
    const/4 v0, 0x1

    iput v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    iget-wide v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mOriginalAnchor:J

    iput-wide v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J

    goto :goto_d

    :sswitch_27
    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mProfileId:J

    iget v3, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    iget-wide v4, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->fetchFollowing(JIJ)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :sswitch_34
    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mProfileId:J

    iget v3, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    iget-wide v4, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/client/AppController;->fetchFollowers(JIJ)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :sswitch_41
    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPostId:J

    iget v4, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    iget-wide v5, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->fetchPostLikers(Lco/vine/android/client/Session;JIJ)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :sswitch_54
    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPostId:J

    iget v4, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    iget-wide v5, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->fetchReviners(Lco/vine/android/client/Session;JIJ)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :sswitch_67
    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNotificationId:J

    iget v4, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    iget-wide v5, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->fetchNotificationUsers(Lco/vine/android/client/Session;JIJ)Ljava/lang/String;

    move-result-object v7

    goto :goto_12

    :pswitch_data_7a
    .packed-switch 0x2
        :pswitch_1f
        :pswitch_1f
        :pswitch_1f
    .end packed-switch

    :sswitch_data_84
    .sparse-switch
        0x1 -> :sswitch_27
        0x2 -> :sswitch_34
        0x5 -> :sswitch_41
        0x9 -> :sswitch_54
        0xc -> :sswitch_67
    .end sparse-switch
.end method


# virtual methods
.method public getAdapter(Landroid/app/Activity;Lco/vine/android/client/AppController;)Lco/vine/android/UsersMemoryAdapter;
    .registers 9

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    if-nez v0, :cond_13

    new-instance v0, Lco/vine/android/UsersMemoryAdapter;

    const/4 v3, 0x1

    iget-object v5, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p0

    invoke-direct/range {v0 .. v5}, Lco/vine/android/UsersMemoryAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;)V

    iput-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    iput-object p2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    :cond_13
    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    return-object v0
.end method

.method public getAppSessionListener()Lco/vine/android/client/AppSessionListener;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppSessionListener:Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;

    if-nez v0, :cond_b

    new-instance v0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;

    invoke-direct {v0, p0}, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;-><init>(Lco/vine/android/widget/UsersMemoryAdapterHelper;)V

    iput-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppSessionListener:Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;

    :cond_b
    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppSessionListener:Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;

    return-object v0
.end method

.method public getPendingRequestHelper()Lco/vine/android/PendingRequestHelper;
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .registers 11

    const/4 v4, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_5c

    :cond_8
    :goto_8
    return-void

    :pswitch_9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lco/vine/android/FollowButtonViewHolder;

    if-eqz v7, :cond_8

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    if-eqz v0, :cond_8

    iget-boolean v0, v7, Lco/vine/android/FollowButtonViewHolder;->following:Z

    if-nez v0, :cond_39

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v2

    iget-wide v5, v7, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v5, v6, v4}, Lco/vine/android/client/AppController;->followUser(Lco/vine/android/client/Session;JZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/PendingRequestHelper;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v1, v7, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/Friendships;->addFollowing(J)V

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    invoke-virtual {v0}, Lco/vine/android/UsersMemoryAdapter;->notifyDataSetChanged()V

    goto :goto_8

    :cond_39
    iget-object v8, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v2, v7, Lco/vine/android/FollowButtonViewHolder;->userId:J

    iget-wide v5, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mProfileId:J

    invoke-virtual/range {v0 .. v6}, Lco/vine/android/client/AppController;->unfollowUser(Lco/vine/android/client/Session;JZJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Lco/vine/android/PendingRequestHelper;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v1, v7, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/Friendships;->removeFollowing(J)V

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    invoke-virtual {v0}, Lco/vine/android/UsersMemoryAdapter;->notifyDataSetChanged()V

    goto :goto_8

    nop

    :pswitch_data_5c
    .packed-switch 0x7f0a022d
        :pswitch_9
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;Landroid/os/Bundle;Z)V
    .registers 8

    const-wide/16 v2, -0x1

    const-string v0, "u_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mUsersType:I

    const-string v0, "p_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mProfileId:J

    const-string v0, "post_id"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPostId:J

    const-string v0, "notification_id"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNotificationId:J

    const-string v0, "anchor"

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mOriginalAnchor:J

    iput-boolean p3, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mRefreshable:Z

    if-eqz p2, :cond_55

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mLoadFalgsTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mLoadFlags:I

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendshipsTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_49

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendshipsTag:Ljava/lang/String;

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lco/vine/android/Friendships;

    iput-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    :cond_49
    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    if-nez v0, :cond_54

    new-instance v0, Lco/vine/android/Friendships;

    invoke-direct {v0}, Lco/vine/android/Friendships;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    :cond_54
    :goto_54
    return-void

    :cond_55
    const/4 v0, 0x0

    iput v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mLoadFlags:I

    new-instance v0, Lco/vine/android/Friendships;

    invoke-direct {v0}, Lco/vine/android/Friendships;-><init>()V

    iput-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    goto :goto_54
.end method

.method public onListItemClick(J)V
    .registers 5

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFragment:Lco/vine/android/BaseFragment;

    invoke-virtual {v0}, Lco/vine/android/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFlurryEventSource:Ljava/lang/String;

    invoke-static {v0, p1, p2, v1}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;)V

    :cond_11
    return-void
.end method

.method public onResume()V
    .registers 2

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    invoke-virtual {v0}, Lco/vine/android/UsersMemoryAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFetched:Z

    if-nez v0, :cond_10

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->fetchContent(I)V

    :cond_10
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendshipsTag:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mLoadFalgsTag:Ljava/lang/String;

    iget v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mLoadFlags:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public onScroll(Lco/vine/android/ListState;III)V
    .registers 7

    iput p2, p1, Lco/vine/android/ListState;->firstVisibleItem:I

    iput p3, p1, Lco/vine/android/ListState;->visibleItemCount:I

    iput p4, p1, Lco/vine/android/ListState;->totalItemCount:I

    if-nez p3, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    if-lez p2, :cond_8

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    if-eqz v1, :cond_8

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_8

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    invoke-virtual {v1}, Lco/vine/android/UsersMemoryAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_8

    iget-boolean v1, p1, Lco/vine/android/ListState;->hasNewScrollState:Z

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    iput-boolean v1, p1, Lco/vine/android/ListState;->hasNewScrollState:Z

    invoke-virtual {p0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->onScrollLastItem()V

    goto :goto_8
.end method

.method public onScrollLastItem()V
    .registers 3

    iget-boolean v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mRefreshable:Z

    if-eqz v0, :cond_16

    iget v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I

    if-lez v0, :cond_16

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;

    invoke-virtual {v0}, Lco/vine/android/UsersMemoryAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_16

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->fetchContent(I)V

    :cond_16
    return-void
.end method

.method public refresh()V
    .registers 2

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->fetchContent(I)V

    return-void
.end method
