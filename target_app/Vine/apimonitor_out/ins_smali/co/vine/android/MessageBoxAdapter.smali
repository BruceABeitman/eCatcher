.class public Lco/vine/android/MessageBoxAdapter;
.super Landroid/support/v4/widget/CursorAdapter;
.source "MessageBoxAdapter.java"
.field private mAppController:Lco/vine/android/client/AppController;
.field private final mAvatars:Ljava/util/HashMap;
.field private mContext:Landroid/content/Context;
.field private final mDefaultBg:Landroid/graphics/drawable/ColorDrawable;
.field private mFragment:Lco/vine/android/InboxFragment;
.field private mIdsToNotifyFail:Ljava/util/ArrayList;
.field private mViewHolders:Ljava/util/ArrayList;
.method public constructor <init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/InboxFragment;I)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p4}, Landroid/support/v4/widget/CursorAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;I)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter;->mAvatars:Ljava/util/HashMap;
iput-object p2, p0, Lco/vine/android/MessageBoxAdapter;->mAppController:Lco/vine/android/client/AppController;
iput-object p1, p0, Lco/vine/android/MessageBoxAdapter;->mContext:Landroid/content/Context;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter;->mViewHolders:Ljava/util/ArrayList;
iput-object p3, p0, Lco/vine/android/MessageBoxAdapter;->mFragment:Lco/vine/android/InboxFragment;
new-instance v0, Landroid/graphics/drawable/ColorDrawable;
iget-object v1, p0, Lco/vine/android/MessageBoxAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090039
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V
iput-object v0, p0, Lco/vine/android/MessageBoxAdapter;->mDefaultBg:Landroid/graphics/drawable/ColorDrawable;
return-void
.end method
.method private setUserImage(Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;Landroid/graphics/Bitmap;Z)V
.registers 8
const/4 v1, 0x0
iget-object v0, p1, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V
if-eqz p2, :cond_19
iget-object v0, p1, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
new-instance v1, Lco/vine/android/drawable/RecyclableBitmapDrawable;
iget-object v2, p0, Lco/vine/android/MessageBoxAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-direct {v1, v2, p2}, Lco/vine/android/drawable/RecyclableBitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_18
return-void
:cond_19
if-eqz p3, :cond_33
iget-object v0, p1, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v0, p1, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
iget-object v1, p0, Lco/vine/android/MessageBoxAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x106000d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V
goto :goto_18
:cond_33
iget-object v0, p1, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p1, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
sget-object v1, Lco/vine/android/util/Util$ProfileImageSize;->MEDIUM:Lco/vine/android/util/Util$ProfileImageSize;
const/high16 v2, -0x100
iget v3, p1, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->color:I
or-int/2addr v2, v3
invoke-static {v0, v1, v2}, Lco/vine/android/util/Util;->safeSetDefaultAvatar(Landroid/widget/ImageView;Lco/vine/android/util/Util$ProfileImageSize;I)V
goto :goto_18
.end method
.method public bindView(Landroid/view/View;Landroid/content/Context;Landroid/database/Cursor;)V
.registers 23
invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;
const/16 v14, 0xe
move-object/from16 v0, p3
invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I
move-result v4
const/16 v14, 0x8
move-object/from16 v0, p3
invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v13
const/4 v14, 0x1
if-ne v4, v14, :cond_13b
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->username:Landroid/widget/TextView;
invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_24
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMoreContent:Landroid/view/View;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMoreProgress:Landroid/view/View;
const v15, 0x7f0a00b2
invoke-virtual {v14, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v14
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMore:Landroid/widget/FrameLayout;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->retryProgress:Landroid/view/View;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
const/4 v14, 0x2
move-object/from16 v0, p3
invoke-interface {v0, v14}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v9
const/4 v14, 0x1
move-object/from16 v0, p2
invoke-static {v0, v9, v10, v14}, Lco/vine/android/util/Util;->getRelativeTimeString(Landroid/content/Context;JZ)Ljava/lang/String;
move-result-object v8
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->timestamp:Landroid/widget/TextView;
invoke-virtual {v14, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/16 v14, 0xd
move-object/from16 v0, p3
invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I
move-result v3
sget v14, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I
if-eq v3, v14, :cond_67
if-gtz v3, :cond_7b
:cond_67
const v14, 0xffffff
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/MessageBoxAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v15
const v16, 0x7f090096
invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I
move-result v15
and-int v3, v14, v15
:cond_7b
iput v3, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->color:I
const/4 v14, 0x4
move-object/from16 v0, p3
invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I
move-result v11
if-lez v11, :cond_1af
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->unreadCount:Landroid/widget/TextView;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->unreadCount:Landroid/widget/TextView;
invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->unreadCount:Landroid/widget/TextView;
invoke-virtual {v14}, Landroid/widget/TextView;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v14
new-instance v15, Landroid/graphics/PorterDuffColorFilter;
const/high16 v16, -0x100
or-int v16, v16, v3
sget-object v17, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;
invoke-direct/range {v15 .. v17}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v14, v15}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V
:goto_a9
const/16 v14, 0xf
move-object/from16 v0, p3
invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v14, 0x1
if-eq v4, v14, :cond_ba
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v14
if-eqz v14, :cond_1b8
:cond_ba
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->username:Landroid/widget/TextView;
const/high16 v15, -0x100
or-int/2addr v15, v3
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->failedUpload:Landroid/widget/ImageView;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->timestamp:Landroid/widget/TextView;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->tapToRetry:Landroid/widget/TextView;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V
:goto_d6
const/16 v14, 0xc
move-object/from16 v0, p3
invoke-interface {v0, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v12
invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v14
if-nez v14, :cond_225
new-instance v7, Lco/vine/android/util/image/ImageKey;
const/4 v14, 0x1
invoke-direct {v7, v12, v14}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V
invoke-static {v12}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z
move-result v14
if-eqz v14, :cond_1f0
const/4 v14, 0x0
const/4 v15, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v6, v14, v15}, Lco/vine/android/MessageBoxAdapter;->setUserImage(Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;Landroid/graphics/Bitmap;Z)V
:goto_f7
invoke-interface/range {p3 .. p3}, Landroid/database/Cursor;->isLast()Z
move-result v14
if-eqz v14, :cond_22e
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->divider:Landroid/view/View;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
const/4 v14, 0x7
move-object/from16 v0, p3
invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I
move-result v14
const/4 v15, 0x1
if-eq v14, v15, :cond_13a
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->divider:Landroid/view/View;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMore:Landroid/widget/FrameLayout;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/MessageBoxAdapter;->mFragment:Lco/vine/android/InboxFragment;
invoke-virtual {v14}, Lco/vine/android/InboxFragment;->isLoadingMore()Z
move-result v14
if-eqz v14, :cond_131
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMoreContent:Landroid/view/View;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMoreProgress:Landroid/view/View;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
:cond_131
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMore:Landroid/widget/FrameLayout;
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/MessageBoxAdapter;->mFragment:Lco/vine/android/InboxFragment;
invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_13a
:goto_13a
return-void
:cond_13b
const/4 v14, 0x2
if-ne v4, v14, :cond_16e
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, " "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/MessageBoxAdapter;->mContext:Landroid/content/Context;
const v16, 0x7f0e004d
invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->username:Landroid/widget/TextView;
invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_165
:cond_165
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->image:Landroid/widget/ImageView;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V
goto/16 :goto_24
:cond_16e
const/4 v14, 0x2
if-le v4, v14, :cond_165
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, " "
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/MessageBoxAdapter;->mContext:Landroid/content/Context;
const v16, 0x7f0e004c
invoke-virtual/range {v15 .. v16}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v15
const/16 v16, 0x1
move/from16 v0, v16
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v16, v0
const/16 v17, 0x0
add-int/lit8 v18, v4, -0x1
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v18
aput-object v18, v16, v17
invoke-static/range {v15 .. v16}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v15
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->username:Landroid/widget/TextView;
invoke-virtual {v14, v13}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_165
:cond_1af
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->unreadCount:Landroid/widget/TextView;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_a9
:cond_1b8
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->username:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v15, v0, Lco/vine/android/MessageBoxAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v15
const v16, 0x7f09003f
invoke-virtual/range {v15 .. v16}, Landroid/content/res/Resources;->getColor(I)I
move-result v15
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->unreadCount:Landroid/widget/TextView;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->failedUpload:Landroid/widget/ImageView;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->timestamp:Landroid/widget/TextView;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->tapToRetry:Landroid/widget/TextView;
const v15, 0x7f0e013b
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setText(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->tapToRetry:Landroid/widget/TextView;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_d6
:cond_1f0
iput-object v7, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/MessageBoxAdapter;->mAvatars:Ljava/util/HashMap;
invoke-virtual {v14, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/ref/WeakReference;
const/4 v1, 0x0
if-eqz v2, :cond_205
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/graphics/Bitmap;
:cond_205
if-nez v1, :cond_21d
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/MessageBoxAdapter;->mAppController:Lco/vine/android/client/AppController;
invoke-virtual {v14, v7}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_21d
move-object/from16 v0, p0
iget-object v14, v0, Lco/vine/android/MessageBoxAdapter;->mAvatars:Ljava/util/HashMap;
new-instance v15, Ljava/lang/ref/WeakReference;
invoke-direct {v15, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v14, v7, v15}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_21d
const/4 v14, 0x1
move-object/from16 v0, p0
invoke-direct {v0, v6, v1, v14}, Lco/vine/android/MessageBoxAdapter;->setUserImage(Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;Landroid/graphics/Bitmap;Z)V
goto/16 :goto_f7
:cond_225
const/4 v14, 0x0
const/4 v15, 0x0
move-object/from16 v0, p0
invoke-direct {v0, v6, v14, v15}, Lco/vine/android/MessageBoxAdapter;->setUserImage(Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;Landroid/graphics/Bitmap;Z)V
goto/16 :goto_f7
:cond_22e
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->divider:Landroid/view/View;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V
iget-object v14, v6, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->loadMore:Landroid/widget/FrameLayout;
const/16 v15, 0x8
invoke-virtual {v14, v15}, Landroid/widget/FrameLayout;->setVisibility(I)V
goto/16 :goto_13a
.end method
.method public getItemId(I)J
.registers 5
invoke-virtual {p0}, Lco/vine/android/MessageBoxAdapter;->getCursor()Landroid/database/Cursor;
move-result-object v0
if-eqz v0, :cond_18
invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z
move-result v1
if-nez v1, :cond_18
invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z
move-result v1
if-eqz v1, :cond_18
const/4 v1, 0x3
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
:goto_17
return-wide v1
:cond_18
invoke-super {p0, p1}, Landroid/support/v4/widget/CursorAdapter;->getItemId(I)J
move-result-wide v1
goto :goto_17
.end method
.method public newView(Landroid/content/Context;Landroid/database/Cursor;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
const v3, 0x7f03004c
const/4 v4, 0x0
invoke-virtual {v1, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
new-instance v0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;
invoke-direct {v0, p0, v2}, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;-><init>(Lco/vine/android/MessageBoxAdapter;Landroid/view/View;)V
invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v3, p0, Lco/vine/android/MessageBoxAdapter;->mViewHolders:Ljava/util/ArrayList;
new-instance v4, Ljava/lang/ref/WeakReference;
invoke-direct {v4, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-object v2
.end method
.method public setIdsToNotifyFailed(Ljava/util/ArrayList;)V
.registers 2
iput-object p1, p0, Lco/vine/android/MessageBoxAdapter;->mIdsToNotifyFail:Ljava/util/ArrayList;
return-void
.end method
.method public declared-synchronized setUserImages(Ljava/util/HashMap;)V
.registers 12
monitor-enter p0
:try_start_1
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
iget-object v6, p0, Lco/vine/android/MessageBoxAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_c
:goto_c
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_4c
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v4
check-cast v4, Ljava/lang/ref/WeakReference;
invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;
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
iget-object v6, v0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;
invoke-virtual {p1, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/util/image/UrlImage;
if-eqz v2, :cond_c
invoke-virtual {v2}, Lco/vine/android/util/image/UrlImage;->isValid()Z
move-result v6
if-eqz v6, :cond_c
iget-object v6, p0, Lco/vine/android/MessageBoxAdapter;->mAvatars:Ljava/util/HashMap;
iget-object v7, v0, Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;->avatarUrl:Lco/vine/android/util/image/ImageKey;
new-instance v8, Ljava/lang/ref/WeakReference;
iget-object v9, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
invoke-direct {v8, v9}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v6, v2, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;
const/4 v7, 0x1
invoke-direct {p0, v0, v6, v7}, Lco/vine/android/MessageBoxAdapter;->setUserImage(Lco/vine/android/MessageBoxAdapter$ConversationViewHolder;Landroid/graphics/Bitmap;Z)V
goto :goto_c
:cond_4c
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_50
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_62
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/ref/WeakReference;
iget-object v6, p0, Lco/vine/android/MessageBoxAdapter;->mViewHolders:Ljava/util/ArrayList;
invoke-virtual {v6, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
:try_end_61
.catchall {:try_start_27 .. :try_end_61} :catchall_24
goto :goto_50
:cond_62
monitor-exit p0
return-void
.end method