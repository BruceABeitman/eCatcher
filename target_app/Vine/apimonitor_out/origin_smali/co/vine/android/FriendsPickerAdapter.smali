.class public Lco/vine/android/FriendsPickerAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "FriendsPickerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/FriendsPickerAdapter$1;
    }
.end annotation


# instance fields
.field private mAppController:Lco/vine/android/client/AppController;

.field private final mFragment:Lco/vine/android/FriendsRecipientPickerFragment;

.field private mLatestRefreshTime:J

.field private final mSelectedBackgroundMap:Lco/vine/android/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lco/vine/android/util/SparseArray",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mViewHolders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lco/vine/android/FriendsPickerViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;ILco/vine/android/FriendsRecipientPickerFragment;)V
    .registers 6

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p3}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V

    new-instance v0, Lco/vine/android/util/SparseArray;

    invoke-direct {v0}, Lco/vine/android/util/SparseArray;-><init>()V

    iput-object v0, p0, Lco/vine/android/FriendsPickerAdapter;->mSelectedBackgroundMap:Lco/vine/android/util/SparseArray;

    iput-object p2, p0, Lco/vine/android/FriendsPickerAdapter;->mAppController:Lco/vine/android/client/AppController;

    iput-object p4, p0, Lco/vine/android/FriendsPickerAdapter;->mFragment:Lco/vine/android/FriendsRecipientPickerFragment;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/FriendsPickerAdapter;->mViewHolders:Ljava/util/ArrayList;

    return-void
.end method

.method private setUserImage(Lco/vine/android/FriendsPickerViewHolder;Landroid/graphics/Bitmap;)V
    .registers 6

    const/4 v1, 0x0

    iget-object v0, p1, Lco/vine/android/FriendsPickerViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    if-eqz p2, :cond_19

    iget-object v0, p1, Lco/vine/android/FriendsPickerViewHolder;->image:Landroid/widget/ImageView;

    new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;

    iget-object v2, p0, Lco/vine/android/FriendsPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p1, Lco/vine/android/FriendsPickerViewHolder;->image:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_18
.end method


# virtual methods
.method public bindView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 16

    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/FriendsPickerViewHolder;

    move-object v6, p4

    check-cast v6, Lco/vine/android/provider/FriendsPickerExclusiveCursor;

    invoke-virtual {v6, p1}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineRecipient;

    iput-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    if-nez p1, :cond_ca

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-wide v8, v8, Lco/vine/android/api/VineRecipient;->lastFriendRefresh:J

    iput-wide v8, p0, Lco/vine/android/FriendsPickerAdapter;->mLatestRefreshTime:J

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionIndicator:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v9, v9, Lco/vine/android/api/VineRecipient;->sectionTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v8, v8, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-eqz v8, :cond_c1

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionSort:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionSort:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {v9}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_45
    :goto_45
    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v6}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;->getCount()I

    move-result v9

    if-ge v8, v9, :cond_64

    iget-object v9, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    add-int/lit8 v8, p1, 0x1

    invoke-virtual {v6, v8}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;->getItem(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lco/vine/android/api/VineRecipient;

    invoke-virtual {p0, v9, v8}, Lco/vine/android/FriendsPickerAdapter;->haveSectionIndicator(Lco/vine/android/api/VineRecipient;Lco/vine/android/api/VineRecipient;)Z

    move-result v8

    if-eqz v8, :cond_12d

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->divider:Landroid/view/View;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    :cond_64
    :goto_64
    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v0, v8, Lco/vine/android/api/VineRecipient;->color:I

    sget v8, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-eq v0, v8, :cond_6e

    if-gtz v0, :cond_80

    :cond_6e
    const v8, 0xffffff

    iget-object v9, p0, Lco/vine/android/FriendsPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f090096

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getColor(I)I

    move-result v9

    and-int v0, v8, v9

    :cond_80
    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->username:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v9, v9, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->username:Landroid/widget/TextView;

    const/high16 v9, -0x100

    or-int/2addr v9, v0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    iget-object v9, p0, Lco/vine/android/FriendsPickerAdapter;->mFragment:Lco/vine/android/FriendsRecipientPickerFragment;

    iget-object v10, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {v9, v10}, Lco/vine/android/FriendsRecipientPickerFragment;->isRecipientSelected(Lco/vine/android/api/VineRecipient;)Z

    move-result v9

    invoke-virtual {v2, v8, v9}, Lco/vine/android/FriendsPickerViewHolder;->setSelected(Landroid/content/res/Resources;Z)V

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v7, v8, Lco/vine/android/api/VineRecipient;->avatarUrl:Ljava/lang/String;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_141

    new-instance v3, Lco/vine/android/util/image/ImageKey;

    const/4 v8, 0x1

    invoke-direct {v3, v7, v8}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V

    invoke-static {v7}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_135

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->image:Landroid/widget/ImageView;

    sget-object v9, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;

    const/high16 v10, -0x100

    or-int/2addr v10, v0

    invoke-static {v8, v9, v10}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V

    :goto_c0
    return-void

    :cond_c1
    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionSort:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_45

    :cond_ca
    add-int/lit8 v8, p1, -0x1

    invoke-virtual {v6, v8}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;->getItem(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lco/vine/android/api/VineRecipient;

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {p0, v4, v8}, Lco/vine/android/FriendsPickerAdapter;->haveSectionIndicator(Lco/vine/android/api/VineRecipient;Lco/vine/android/api/VineRecipient;)Z

    move-result v1

    iget-object v9, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionIndicator:Landroid/view/View;

    if-eqz v1, :cond_122

    const/4 v8, 0x0

    :goto_dd
    invoke-virtual {v9, v8}, Landroid/view/View;->setVisibility(I)V

    if-eqz v1, :cond_45

    iget v5, v4, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v8, v8, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-eq v8, v5, :cond_125

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget-object v9, v9, Lco/vine/android/api/VineRecipient;->sectionTitle:Ljava/lang/String;

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_f9
    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    iget v8, v8, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-eqz v8, :cond_45

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {v8}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_45

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionSort:Landroid/widget/TextView;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionSort:Landroid/widget/TextView;

    iget-object v9, v2, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {v9}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_45

    :cond_122
    const/16 v8, 0x8

    goto :goto_dd

    :cond_125
    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->sectionTitle:Landroid/widget/TextView;

    const/16 v9, 0x8

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f9

    :cond_12d
    iget-object v8, v2, Lco/vine/android/FriendsPickerViewHolder;->divider:Landroid/view/View;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_64

    :cond_135
    iput-object v3, v2, Lco/vine/android/FriendsPickerViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;

    iget-object v8, p0, Lco/vine/android/FriendsPickerAdapter;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v8, v3}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v8

    invoke-direct {p0, v2, v8}, Lco/vine/android/FriendsPickerAdapter;->setUserImage(Lco/vine/android/FriendsPickerViewHolder;Landroid/graphics/Bitmap;)V

    goto :goto_c0

    :cond_141
    const/4 v8, 0x0

    invoke-direct {p0, v2, v8}, Lco/vine/android/FriendsPickerAdapter;->setUserImage(Lco/vine/android/FriendsPickerViewHolder;Landroid/graphics/Bitmap;)V

    goto/16 :goto_c0
.end method

.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
    .registers 5

    invoke-interface {p3}, Landroid/database/Cursor;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2, p3}, Lco/vine/android/FriendsPickerAdapter;->bindView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    return-void
.end method

.method public getItemId(I)J
    .registers 5

    invoke-virtual {p0}, Lco/vine/android/FriendsPickerAdapter;->getCount()I

    move-result v1

    if-ge p1, v1, :cond_19

    invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    if-eqz v0, :cond_19

    check-cast v0, Lco/vine/android/provider/FriendsPickerExclusiveCursor;

    invoke-virtual {v0, p1}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/api/VineRecipient;

    iget-wide v1, v1, Lco/vine/android/api/VineRecipient;->userId:J

    :goto_18
    return-wide v1

    :cond_19
    const-wide/16 v1, 0x0

    goto :goto_18
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lco/vine/android/FriendsPickerAdapter;->mCursor:Landroid/database/Cursor;

    check-cast v0, Lco/vine/android/provider/FriendsPickerExclusiveCursor;

    sget-object v1, Lco/vine/android/FriendsPickerAdapter$1;->$SwitchMap$co$vine$android$provider$ExclusiveHybridCursor$Mode:[I

    invoke-virtual {v0}, Lco/vine/android/provider/FriendsPickerExclusiveCursor;->getMode()Lco/vine/android/provider/ExclusiveHybridCursor$Mode;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/provider/ExclusiveHybridCursor$Mode;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_28

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/widget/CursorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    :goto_17
    return-object v1

    :pswitch_18
    if-nez p2, :cond_20

    iget-object v1, p0, Lco/vine/android/FriendsPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v1, v0, p3}, Lco/vine/android/FriendsPickerAdapter;->newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    :cond_20
    iget-object v1, p0, Lco/vine/android/FriendsPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1, p2, v1, v0}, Lco/vine/android/FriendsPickerAdapter;->bindView(ILandroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V

    move-object v1, p2

    goto :goto_17

    nop

    :pswitch_data_28
    .packed-switch 0x1
        :pswitch_18
    .end packed-switch
.end method

.method public haveSectionIndicator(Lco/vine/android/api/VineRecipient;Lco/vine/android/api/VineRecipient;)Z
    .registers 5

    iget v0, p2, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    iget v1, p1, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-ne v0, v1, :cond_18

    iget v0, p2, Lco/vine/android/api/VineRecipient;->sectionIndex:I

    if-eqz v0, :cond_1a

    invoke-virtual {p2}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lco/vine/android/api/VineRecipient;->getTextSortKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 9

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f030080

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    new-instance v0, Lco/vine/android/FriendsPickerViewHolder;

    iget-object v3, p0, Lco/vine/android/FriendsPickerAdapter;->mSelectedBackgroundMap:Lco/vine/android/util/SparseArray;

    invoke-direct {v0, p1, v3, v2}, Lco/vine/android/FriendsPickerViewHolder;-><init>(Landroid/content/Context;Lco/vine/android/util/SparseArray;Landroid/view/View;)V

    iget-object v3, p0, Lco/vine/android/FriendsPickerAdapter;->mViewHolders:Ljava/util/ArrayList;

    new-instance v4, Ljava/lang/ref/WeakReference;

    invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v2
.end method

.method public onRecipientItemRemoved(Lco/vine/android/api/VineRecipient;)V
    .registers 7

    iget-object v3, p0, Lco/vine/android/FriendsPickerAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lco/vine/android/FriendsPickerViewHolder;

    if-eqz v1, :cond_6

    iget-object v3, v1, Lco/vine/android/FriendsPickerViewHolder;->recipient:Lco/vine/android/api/VineRecipient;

    invoke-virtual {p1, v3}, Lco/vine/android/api/VineRecipient;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lco/vine/android/FriendsPickerAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Lco/vine/android/FriendsPickerViewHolder;->setSelected(Landroid/content/res/Resources;Z)V

    goto :goto_6

    :cond_2d
    return-void
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

    iget-object v6, p0, Lco/vine/android/FriendsPickerAdapter;->mViewHolders:Ljava/util/ArrayList;

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

    check-cast v0, Lco/vine/android/FriendsPickerViewHolder;

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
    iget-object v6, v0, Lco/vine/android/FriendsPickerViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lco/vine/android/util/image/UrlImage;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z

    move-result v6

    if-eqz v6, :cond_c

    iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0, v6}, Lco/vine/android/FriendsPickerAdapter;->setUserImage(Lco/vine/android/FriendsPickerViewHolder;Landroid/graphics/Bitmap;)V

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

    iget-object v6, p0, Lco/vine/android/FriendsPickerAdapter;->mViewHolders:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_52
    .catchall {:try_start_27 .. :try_end_52} :catchall_24

    goto :goto_41

    :cond_53
    monitor-exit p0

    return-void
.end method
