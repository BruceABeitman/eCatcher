.class public Lco/vine/android/MenuUsersAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "MenuUsersAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;
    }
.end annotation


# instance fields
.field protected final mAppController:Lco/vine/android/client/AppController;

.field private final mAvatars:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;>;"
        }
    .end annotation
.end field

.field private mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

.field private mLatestRefreshTime:J

.field private final mProfileImageSize:I

.field protected final mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field private mZeroHolder:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;I)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lco/vine/android/MenuUsersAdapter;->mAvatars:Ljava/util/HashMap;

    iput-object p2, p0, Lco/vine/android/MenuUsersAdapter;->mAppController:Lco/vine/android/client/AppController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/MenuUsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lco/vine/android/MenuUsersAdapter;->mProfileImageSize:I

    return-void
.end method

.method private invalidateDividerVisibility(Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;Landroid/database/Cursor;)V
    .registers 11

    const/16 v5, 0x8

    const/4 v4, 0x0

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    if-eqz v6, :cond_36

    iget-object v0, p1, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-static {p2}, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->getVineRecipient(Landroid/database/Cursor;)Lco/vine/android/api/VineRecipient;

    move-result-object v2

    iget v1, v0, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    iget v6, v2, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-ne v6, v1, :cond_27

    iget v6, v2, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-eqz v6, :cond_34

    invoke-virtual {v2}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_34

    :cond_27
    const/4 v3, 0x1

    :goto_28
    iget-object v6, p1, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->divider:Landroid/view/View;

    if-eqz v3, :cond_2d

    move v4, v5

    :cond_2d
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    invoke-interface {p2}, Landroid/database/Cursor;->moveToPrevious()Z

    :goto_33
    return-void

    :cond_34
    move v3, v4

    goto :goto_28

    :cond_36
    iget-object v4, p1, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->divider:Landroid/view/View;

    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    goto :goto_33
.end method

.method private setUserImage(Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p1, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->image:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p2, :cond_19

    iget-object v0, p1, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->image:Landroid/widget/ImageView;

    new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v2, p0, Lco/vine/android/MenuUsersAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p1, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->image:Landroid/widget/ImageView;

    const v1, 0x7f0200f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_18
.end method


# virtual methods
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;

    invoke-static {p3}, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->getVineRecipient(Landroid/database/Cursor;)Lco/vine/android/api/VineRecipient;

    move-result-object v8

    iput-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->friendName:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v9, v9, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v8, v8, Lco/vine/android/api/VineRecipient;->avatarUrl:Ljava/lang/String;

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_af

    new-instance v3, Lco/vine/android/util/image/ImageKey;

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v8, v8, Lco/vine/android/api/VineRecipient;->avatarUrl:Ljava/lang/String;

    iget v9, p0, Lco/vine/android/MenuUsersAdapter;->mProfileImageSize:I

    iget v10, p0, Lco/vine/android/MenuUsersAdapter;->mProfileImageSize:I

    const/4 v11, 0x1

    invoke-direct {v3, v8, v9, v10, v11}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;IIZ)V

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v8, v8, Lco/vine/android/api/VineRecipient;->avatarUrl:Ljava/lang/String;

    invoke-static {v8}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_84

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->image:Landroid/widget/ImageView;

    sget-object v9, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;

    const/high16 v10, -0x100

    iget-object v11, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v11, v11, Lco/vine/android/api/VineRecipient;->color:I

    or-int/2addr v10, v11

    invoke-static {v8, v9, v10}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V

    :goto_45
    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v6

    iput v6, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->position:I

    if-nez v6, :cond_b4

    new-instance v8, Ljava/lang/ref/WeakReference;

    invoke-direct {v8, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v8, p0, Lco/vine/android/MenuUsersAdapter;->mZeroHolder:Ljava/lang/ref/WeakReference;

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-wide v8, v8, Lco/vine/android/api/VineRecipient;->lastFriendRefresh:J

    iput-wide v8, p0, Lco/vine/android/MenuUsersAdapter;->mLatestRefreshTime:J

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionIndicator:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionTitle:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v9, v9, Lco/vine/android/api/VineRecipient;->sectionTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionSort:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionSort:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {v9}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_80
    invoke-direct {p0, v2, p3}, Lco/vine/android/MenuUsersAdapter;->invalidateDividerVisibility(Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;Landroid/database/Cursor;)V

    return-void

    :cond_84
    iput-object v3, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    iget-object v8, p0, Lco/vine/android/MenuUsersAdapter;->mAvatars:Ljava/util/HashMap;

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    const/4 v0, 0x0

    if-eqz v1, :cond_97

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_97
    if-nez v0, :cond_ab

    iget-object v8, p0, Lco/vine/android/MenuUsersAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8, v3}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_ab

    iget-object v8, p0, Lco/vine/android/MenuUsersAdapter;->mAvatars:Ljava/util/HashMap;

    new-instance v9, Ljava/lang/ref/WeakReference;

    invoke-direct {v9, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v8, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ab
    invoke-direct {p0, v2, v0}, Lco/vine/android/MenuUsersAdapter;->setUserImage(Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_45

    :cond_af
    const/4 v8, 0x0

    invoke-direct {p0, v2, v8}, Lco/vine/android/MenuUsersAdapter;->setUserImage(Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_45

    :cond_b4
    invoke-interface {p3}, Landroid/database/Cursor;->moveToPrevious()Z

    invoke-static {p3}, Lco/vine/android/provider/VineDatabaseSQL$UsersQuery;->getVineRecipient(Landroid/database/Cursor;)Lco/vine/android/api/VineRecipient;

    move-result-object v4

    invoke-interface {p3}, Landroid/database/Cursor;->moveToNext()Z

    iget v5, v4, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    const/4 v7, 0x0

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v8, v8, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-eq v8, v5, :cond_109

    const/4 v7, 0x1

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionTitle:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v9, v9, Lco/vine/android/api/VineRecipient;->sectionTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_d7
    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v8, v8, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-eqz v8, :cond_ff

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {v8}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_ff

    const/4 v7, 0x1

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionSort:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionSort:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {v9}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_ff
    iget-object v9, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionIndicator:Landroid/view/View;

    if-eqz v7, :cond_111

    const/4 v8, 0x0

    :goto_104
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_80

    :cond_109
    iget-object v8, v2, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->sectionTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_d7

    :cond_111
    const/16 v8, 0x8

    goto :goto_104
.end method

.method public getItemId(I)J
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_e

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    :goto_d
    return-wide v1

    :cond_e
    const-wide/16 v1, 0x0

    goto :goto_d
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    if-eqz p2, :cond_10

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;

    if-nez v0, :cond_10

    const/4 v0, 0x0

    invoke-super {p0, p1, v0, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_f
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030057

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;

    invoke-direct {v0, p1, v2}, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iget-object v3, p0, Lco/vine/android/MenuUsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method public setInboxAdapter(Lco/vine/android/MessageBoxAdapter;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/MenuUsersAdapter;->mInboxAdapter:Lco/vine/android/MessageBoxAdapter;

    return-void
.end method

.method public declared-synchronized setUserImages(Ljava/util/HashMap;)V
    .registers 12
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

    iget-object v6, p0, Lco/vine/android/MenuUsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;

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
    iget-object v6, v0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, p0, Lco/vine/android/MenuUsersAdapter;->mAvatars:Ljava/util/HashMap;

    iget-object v7, v0, Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;->avatarKey:Lco/vine/android/util/image/ImageKey;

    new-instance v8, Ljava/lang/ref/WeakReference;

    iget-object v9, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v6}, Lco/vine/android/MenuUsersAdapter;->setUserImage(Lco/vine/android/MenuUsersAdapter$FriendsViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_c

    :cond_4b
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_61

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ref/WeakReference;

    iget-object v6, p0, Lco/vine/android/MenuUsersAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_60
    .catchall {:try_start_27 .. :try_end_60} :catchall_24

    goto :goto_4f

    :cond_61
    monitor-exit p0

    return-void
.end method
