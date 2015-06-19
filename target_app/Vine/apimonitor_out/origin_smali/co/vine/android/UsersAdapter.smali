.class public Lco/vine/android/UsersAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "UsersAdapter.java"


# instance fields
.field protected final mAppController:Lco/vine/android/client/AppController;

.field private mFollow:Z

.field private mFriendships:Lco/vine/android/Friendships;

.field private mListener:Landroid/view/View$OnClickListener;

.field mLoggedInUserId:J

.field private final mProfileImageSize:I

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
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;ZLandroid/view/View$OnClickListener;Lco/vine/android/Friendships;I)V
    .registers 9

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p6}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    iput-object p2, p0, Lco/vine/android/UsersAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {p2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v0

    iput-wide v0, p0, Lco/vine/android/UsersAdapter;->mLoggedInUserId:J

    iput-boolean p3, p0, Lco/vine/android/UsersAdapter;->mFollow:Z

    iput-object p4, p0, Lco/vine/android/UsersAdapter;->mListener:Landroid/view/View$OnClickListener;

    iput-object p5, p0, Lco/vine/android/UsersAdapter;->mFriendships:Lco/vine/android/Friendships;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/UsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lco/vine/android/UsersAdapter;->mProfileImageSize:I

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

    iget-object v2, p0, Lco/vine/android/UsersAdapter;->mContext:Landroid/content/Context;

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
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lco/vine/android/widget/UserViewHolder;

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->username:Landroid/widget/TextView;

    const/16 v12, 0xd

    move-object/from16 v0, p3

    invoke-interface {v0, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v11

    iput-wide v11, v5, Lco/vine/android/widget/UserViewHolder;->userId:J

    const/4 v11, 0x5

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_d9

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    invoke-virtual {v11, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_34
    const/4 v11, 0x6

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_e9

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    invoke-virtual {v11, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_4c
    const/16 v11, 0xe

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const/4 v12, 0x1

    if-ne v11, v12, :cond_f9

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->verified:Landroid/widget/ImageView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_5d
    iget-object v2, v5, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iget-boolean v11, v0, Lco/vine/android/UsersAdapter;->mFollow:Z

    if-eqz v11, :cond_12c

    iget-wide v11, v5, Lco/vine/android/widget/UserViewHolder;->userId:J

    move-object/from16 v0, p0

    iget-object v13, v0, Lco/vine/android/UsersAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v13}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v13

    cmp-long v11, v11, v13

    if-eqz v11, :cond_12c

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lco/vine/android/UsersAdapter;->mFriendships:Lco/vine/android/Friendships;

    const/4 v11, 0x1

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v9

    if-eqz v4, :cond_113

    invoke-virtual {v4, v9, v10}, Lco/vine/android/Friendships;->contains(J)Z

    move-result v11

    if-eqz v11, :cond_102

    invoke-virtual {v4, v9, v10}, Lco/vine/android/Friendships;->isFollowing(J)Z

    move-result v3

    :goto_8e
    new-instance v11, Lco/vine/android/FollowButtonViewHolder;

    invoke-direct {v11, v9, v10, v3}, Lco/vine/android/FollowButtonViewHolder;-><init>(JZ)V

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setTag(Ljava/lang/Object;)V

    if-eqz v3, :cond_124

    const v11, 0x7f020095

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    :goto_9e
    const/4 v11, 0x2

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_143

    new-instance v6, Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p0

    iget v11, v0, Lco/vine/android/UsersAdapter;->mProfileImageSize:I

    move-object/from16 v0, p0

    iget v12, v0, Lco/vine/android/UsersAdapter;->mProfileImageSize:I

    const/4 v13, 0x1

    invoke-direct {v6, v8, v11, v12, v13}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V

    invoke-static {v8}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_133

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->image:Landroid/widget/ImageView;

    sget-object v12, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;

    const/high16 v13, -0x100

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/UsersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090096

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    or-int/2addr v13, v14

    invoke-static {v11, v12, v13}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V

    :goto_d8
    return-void

    :cond_d9
    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->bio:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_34

    :cond_e9
    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const-string v12, ""

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->location:Landroid/widget/TextView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_4c

    :cond_f9
    iget-object v11, v5, Lco/vine/android/widget/UserViewHolder;->verified:Landroid/widget/ImageView;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_5d

    :cond_102
    const/16 v11, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    and-int/lit8 v11, v11, 0x1

    if-lez v11, :cond_111

    const/4 v3, 0x1

    :goto_10f
    goto/16 :goto_8e

    :cond_111
    const/4 v3, 0x0

    goto :goto_10f

    :cond_113
    const/16 v11, 0xa

    move-object/from16 v0, p3

    invoke-interface {v0, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    and-int/lit8 v11, v11, 0x1

    if-lez v11, :cond_122

    const/4 v3, 0x1

    :goto_120
    goto/16 :goto_8e

    :cond_122
    const/4 v3, 0x0

    goto :goto_120

    :cond_124
    const v11, 0x7f020094

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    goto/16 :goto_9e

    :cond_12c
    const/16 v11, 0x8

    invoke-virtual {v2, v11}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto/16 :goto_9e

    :cond_133
    iput-object v6, v5, Lco/vine/android/widget/UserViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;

    move-object/from16 v0, p0

    iget-object v11, v0, Lco/vine/android/UsersAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v11, v6}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v11

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lco/vine/android/UsersAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_d8

    :cond_143
    const/4 v11, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v11}, Lco/vine/android/UsersAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_d8
.end method

.method public getItemId(I)J
    .registers 6

    const-wide/16 v1, 0x0

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_15

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_15

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :cond_15
    return-wide v1
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300a4

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lco/vine/android/widget/UserViewHolder;

    invoke-direct {v0, v2}, Lco/vine/android/widget/UserViewHolder;-><init>(Landroid/view/View;)V

    iget-boolean v3, p0, Lco/vine/android/UsersAdapter;->mFollow:Z

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    iget-object v4, p0, Lco/vine/android/UsersAdapter;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1c
    iget-object v3, p0, Lco/vine/android/UsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2

    :cond_2a
    iget-object v3, v0, Lco/vine/android/widget/UserViewHolder;->followButton:Landroid/widget/ImageButton;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1c
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

    iget-object v6, p0, Lco/vine/android/UsersAdapter;->mViewHolders:Ljava/util/ArrayList;

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

    invoke-direct {p0, v0, v6}, Lco/vine/android/UsersAdapter;->setUserImage(Lco/vine/android/widget/UserViewHolder;Landroid/graphics/Bitmap;)V

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

    iget-object v6, p0, Lco/vine/android/UsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_24

    goto :goto_41

    :cond_53
    monitor-exit p0

    return-void
.end method
