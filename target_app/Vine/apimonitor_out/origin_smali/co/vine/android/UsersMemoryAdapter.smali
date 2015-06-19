.class public Lco/vine/android/UsersMemoryAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsersMemoryAdapter.java"


# instance fields
.field protected final mAppController:Lco/vine/android/client/AppController;

.field private final mContext:Landroid/content/Context;

.field private mFollow:Z

.field private mFriendships:Lco/vine/android/Friendships;

.field private mListener:Landroid/view/View$OnClickListener;

.field mLoggedInUserId:J

.field private final mProfileImageSize:I

.field private mSeenIds:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation
.end field

.field protected final mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/widget/UserViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;)V
    .registers 8

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lco/vine/android/UsersMemoryAdapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lco/vine/android/UsersMemoryAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/UsersMemoryAdapter;->mLoggedInUserId:J

    iput-boolean p3, p0, Lco/vine/android/UsersMemoryAdapter;->mFollow:Z

    iput-object p4, p0, Lco/vine/android/UsersMemoryAdapter;->mListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lco/vine/android/UsersMemoryAdapter;->mFriendships:Lco/vine/android/Friendships;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/UsersMemoryAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lco/vine/android/UsersMemoryAdapter;->mProfileImageSize:I

    return-void
.end method

.method private setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p2, :cond_19

    iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v2, p0, Lco/vine/android/UsersMemoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p1, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_18
.end method


# virtual methods
.method public bindView(Landroid/view/View;I)V
    .registers 20

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    move/from16 v0, p2

    invoke-virtual {v12, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lco/vine/android/api/VineUser;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/widget/UserViewHolder;

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->username:Landroid/widget/TextView;

    iget-object v13, v9, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-wide v12, v9, Lco/vine/android/api/VineUser;->userId:J

    iput-wide v12, v5, Lco/vine/android/widget/UserViewHolder;->userId:J

    iget-object v1, v9, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_c0

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_30
    iget-object v7, v9, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d0

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_43
    iget v12, v9, Lco/vine/android/api/VineUser;->verified:I

    const/4 v13, 0x1

    if-ne v12, v13, :cond_e0

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->verified:Landroid/widget/ImageView;

    const/4 v13, 0x0

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_4e
    iget-object v2, v5, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lco/vine/android/UsersMemoryAdapter;->mFollow:Z

    if-eqz v12, :cond_fa

    iget-wide v12, v5, Lco/vine/android/widget/UserViewHolder;->userId:J

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/UsersMemoryAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v14}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_fa

    const/4 v12, 0x0

    invoke-virtual {v2, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/UsersMemoryAdapter;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v10, v9, Lco/vine/android/api/VineUser;->userId:J

    if-eqz v4, :cond_ee

    invoke-virtual {v4, v10, v11}, Lco/vine/android/Friendships;->contains(J)Z

    move-result v12

    if-eqz v12, :cond_e9

    invoke-virtual {v4, v10, v11}, Lco/vine/android/Friendships;->isFollowing(J)Z

    move-result v3

    :goto_7a
    new-instance v12, Lco/vine/android/FollowButtonViewHolder;

    invoke-direct {v12, v10, v11, v3}, Lco/vine/android/FollowButtonViewHolder;-><init>(JZ)V

    invoke-virtual {v2, v12}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_f3

    const v12, 0x7f020095

    invoke-virtual {v2, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_8a
    iget-object v8, v9, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_110

    new-instance v6, Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p0

    iget v12, v0, Lco/vine/android/UsersMemoryAdapter;->mProfileImageSize:I

    move-object/from16 v0, p0

    iget v13, v0, Lco/vine/android/UsersMemoryAdapter;->mProfileImageSize:I

    const/4 v14, 0x1

    invoke-direct {v6, v8, v12, v13, v14}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V

    invoke-static {v8}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_100

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    sget-object v13, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;

    const/high16 v14, -0x100

    move-object/from16 v0, p0

    iget-object v15, v0, Lco/vine/android/UsersMemoryAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v16, 0x7f090096

    invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I

    move-result v15

    or-int/2addr v14, v15

    invoke-static {v12, v13, v14}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V

    :goto_bf
    return-void

    :cond_c0
    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_30

    :cond_d0
    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const-string v13, ""

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_43

    :cond_e0
    iget-object v12, v5, Lco/vine/android/widget/UserViewHolder;->verified:Landroid/widget/ImageView;

    const/16 v13, 0x8

    invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_4e

    :cond_e9
    invoke-virtual {v9}, Lco/vine/android/api/VineUser;->isFollowing()Z

    move-result v3

    goto :goto_7a

    :cond_ee
    invoke-virtual {v9}, Lco/vine/android/api/VineUser;->isFollowing()Z

    move-result v3

    goto :goto_7a

    :cond_f3
    const v12, 0x7f020094

    invoke-virtual {v2, v12}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto :goto_8a

    :cond_fa
    const/16 v12, 0x8

    invoke-virtual {v2, v12}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_8a

    :cond_100
    iput-object v6, v5, Lco/vine/android/widget/UserViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p0

    iget-object v12, v0, Lco/vine/android/UsersMemoryAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v12, v6}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v12

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lco/vine/android/UsersMemoryAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_bf

    :cond_110
    const/4 v12, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v12}, Lco/vine/android/UsersMemoryAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_bf
.end method

.method public getCount()I
    .registers 2

    iget-object v0, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    :goto_a
    return-object v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public getItemId(I)J
    .registers 5

    iget-object v1, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_19

    iget-object v1, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_19

    iget-wide v1, v0, Lco/vine/android/api/VineUser;->userId:J

    :goto_18
    return-wide v1

    :cond_19
    const-wide/16 v1, 0x0

    goto :goto_18
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    if-nez p2, :cond_a

    invoke-virtual {p0, p3}, Lco/vine/android/UsersMemoryAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_6
    invoke-virtual {p0, v0, p1}, Lco/vine/android/UsersMemoryAdapter;->bindView(Landroid/view/View;I)V

    return-object v0

    :cond_a
    move-object v0, p2

    goto :goto_6
.end method

.method public mergeData(Ljava/util/ArrayList;Z)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;Z)V"
        }
    .end annotation

    if-nez p2, :cond_10

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lco/vine/android/UsersMemoryAdapter;->mSeenIds:Ljava/util/HashSet;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    :cond_10
    if-eqz p1, :cond_41

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_16
    :goto_16
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineUser;

    iget-object v2, p0, Lco/vine/android/UsersMemoryAdapter;->mSeenIds:Ljava/util/HashSet;

    iget-wide v3, v1, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v2, p0, Lco/vine/android/UsersMemoryAdapter;->mSeenIds:Ljava/util/HashSet;

    iget-wide v3, v1, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lco/vine/android/UsersMemoryAdapter;->mUsers:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_16

    :cond_41
    if-eqz p1, :cond_46

    invoke-virtual {p0}, Lco/vine/android/UsersMemoryAdapter;->notifyDataSetChanged()V

    :cond_46
    return-void
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v3, p0, Lco/vine/android/UsersMemoryAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300a4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lco/vine/android/widget/UserViewHolder;

    invoke-direct {v0, v2}, Lco/vine/android/widget/UserViewHolder;-><init>(Landroid/view/View;)V

    iget-boolean v3, p0, Lco/vine/android/UsersMemoryAdapter;->mFollow:Z

    if-eqz v3, :cond_2c

    iget-object v3, v0, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lco/vine/android/UsersMemoryAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1e
    iget-object v3, p0, Lco/vine/android/UsersMemoryAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_2c
    iget-object v3, v0, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1e
.end method

.method public declared-synchronized setUserImages(Ljava/util/HashMap;)V
    .registers 9
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

    monitor-enter p0

    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v6, p0, Lco/vine/android/UsersMemoryAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/widget/UserViewHolder;

    if-nez v0, :cond_27

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_23
    .catchall {:try_start_1 .. :try_end_23} :catchall_24

    goto :goto_c

    :catchall_24
    move-exception v6

    monitor-exit p0

    throw v6

    :cond_27
    :try_start_27
    iget-object v6, v0, Lco/vine/android/widget/UserViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v6}, Lco/vine/android/UsersMemoryAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_c

    :cond_3d
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_41
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_53

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lco/vine/android/UsersMemoryAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_24

    goto :goto_41

    :cond_53
    monitor-exit p0

    return-void
.end method
