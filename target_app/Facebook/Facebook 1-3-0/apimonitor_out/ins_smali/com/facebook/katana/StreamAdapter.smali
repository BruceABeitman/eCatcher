.class public Lcom/facebook/katana/StreamAdapter;
.super Landroid/widget/BaseAdapter;
.source "StreamAdapter.java"
.implements Landroid/widget/AbsListView$RecyclerListener;
.field private final mContext:Landroid/content/Context;
.field private mLoading:Z
.field private final mMediaItemClickListener:Landroid/view/View$OnClickListener;
.field private final mNoAvatarBitmap:Landroid/graphics/Bitmap;
.field private final mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;
.field private final mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
.field private final mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
.field private mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
.field private final mUserImageClickListener:Landroid/view/View$OnClickListener;
.field private final mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
.field private final mViewHolders:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;Landroid/widget/ListView;Lcom/facebook/katana/binding/FacebookStreamContainer;Lcom/facebook/katana/binding/UserImagesCache;Lcom/facebook/katana/binding/StreamPhotosCache;Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;)V
.registers 9
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
iput-object p4, p0, Lcom/facebook/katana/StreamAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
iput-object p5, p0, Lcom/facebook/katana/StreamAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0200bd
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0200bc
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0200b3
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mViewHolders:Ljava/util/List;
new-instance v0, Lcom/facebook/katana/StreamAdapter$1;
invoke-direct {v0, p0, p6}, Lcom/facebook/katana/StreamAdapter$1;-><init>(Lcom/facebook/katana/StreamAdapter;Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;)V
iput-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mUserImageClickListener:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/facebook/katana/StreamAdapter$2;
invoke-direct {v0, p0, p6}, Lcom/facebook/katana/StreamAdapter$2;-><init>(Lcom/facebook/katana/StreamAdapter;Lcom/facebook/katana/StreamAdapter$StreamAdapterListener;)V
iput-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
invoke-virtual {p2, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V
return-void
.end method
.method private buildStatus(Lcom/facebook/katana/service/api/FacebookPost;)Landroid/text/Spannable;
.registers 10
const/16 v7, 0x21
const/4 v6, 0x0
new-instance v1, Landroid/text/SpannableStringBuilder;
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v3
invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getTargetProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v2
if-eqz v2, :cond_23
const-string v3, " > "
invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
move-result-object v3
invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getDisplayName()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_23
invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I
move-result v0
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getMessage()Ljava/lang/String;
move-result-object v3
if-eqz v3, :cond_3a
const/16 v3, 0x20
invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;
move-result-object v3
invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getMessage()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;
:cond_3a
new-instance v3, Landroid/text/style/StyleSpan;
const/4 v4, 0x1
invoke-direct {v3, v4}, Landroid/text/style/StyleSpan;-><init>(I)V
invoke-virtual {v1, v3, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
new-instance v3, Landroid/text/style/ForegroundColorSpan;
iget-object v4, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f070007
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I
move-result v4
invoke-direct {v3, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V
invoke-virtual {v1, v3, v6, v0, v7}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V
return-object v1
.end method
.method private fillPostFooterView(Landroid/view/View;Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/service/api/FacebookPost;)V
.registers 16
const v7, 0x7f0b008f
invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v6
invoke-virtual {p3}, Lcom/facebook/katana/service/api/FacebookPost;->getComments()Lcom/facebook/katana/service/api/FacebookPost$Comments;
move-result-object v0
invoke-virtual {p3}, Lcom/facebook/katana/service/api/FacebookPost;->getLikes()Lcom/facebook/katana/service/api/FacebookPost$Likes;
move-result-object v4
invoke-virtual {p3}, Lcom/facebook/katana/service/api/FacebookPost;->canInteractWithFeedback()Z
move-result v7
if-nez v7, :cond_1b
const/16 v7, 0x8
invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V
:goto_1a
return-void
:cond_1b
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getTotalCount()I
move-result v7
if-nez v7, :cond_2d
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v7
if-nez v7, :cond_2d
const/16 v7, 0x8
invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V
goto :goto_1a
:cond_2d
const/4 v7, 0x0
invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v6, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v2, p2, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mCommentsCountView:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->getTotalCount()I
move-result v1
if-nez v1, :cond_6d
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost$Comments;->canPost()Z
move-result v7
if-eqz v7, :cond_68
const v7, 0x7f080129
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(I)V
const/4 v7, 0x0
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V
:goto_4c
iget-object v5, p2, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mLikesCountView:Landroid/widget/TextView;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->getCount()I
move-result v3
if-lez v3, :cond_b0
const/4 v7, 0x0
invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V
const/4 v7, 0x1
if-ne v3, v7, :cond_9c
iget-object v7, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
const v8, 0x7f08013b
invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v7
:goto_64
invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_1a
:cond_68
const/4 v7, 0x4
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_4c
:cond_6d
const/4 v7, 0x1
if-ne v1, v7, :cond_81
const/4 v7, 0x0
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v7, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
const v8, 0x7f08013a
invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_4c
:cond_81
const/4 v7, 0x0
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v7, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
const v8, 0x7f08012b
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_4c
:cond_9c
iget-object v7, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
const v8, 0x7f080138
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
goto :goto_64
:cond_b0
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Likes;->canLike()Z
move-result v7
if-eqz v7, :cond_c2
const/4 v7, 0x0
invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V
const v7, 0x7f080130
invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(I)V
goto/16 :goto_1a
:cond_c2
const/4 v7, 0x4
invoke-virtual {v5, v7}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_1a
.end method
.method private setupImageViewAtIndex(Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;I)V
.registers 9
iget-object v3, p1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
aget-object v0, v3, p3
iget-object v3, p0, Lcom/facebook/katana/StreamAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_27
iget-object v3, p0, Lcom/facebook/katana/StreamAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
iget-object v4, p0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v3, v4, v1}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_24
move-object v3, v2
:goto_1d
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_20
#calls: Lcom/facebook/katana/StreamAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
invoke-static {p1, p3, v1}, Lcom/facebook/katana/StreamAdapter$ViewHolder;->access$1(Lcom/facebook/katana/StreamAdapter$ViewHolder;ILjava/lang/String;)V
return-void
:cond_24
iget-object v3, p0, Lcom/facebook/katana/StreamAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
goto :goto_1d
:cond_27
const/4 v3, 0x0
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto :goto_20
.end method
.method public close()V
.registers 2
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->clear()V
return-void
.end method
.method public getCount()I
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
if-eqz v0, :cond_1c
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
iget-object v1, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
invoke-virtual {v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->isComplete()Z
move-result v1
if-eqz v1, :cond_1a
move v1, v2
:goto_18
add-int/2addr v0, v1
:goto_19
return v0
:cond_1a
const/4 v1, 0x1
goto :goto_18
:cond_1c
move v0, v2
goto :goto_19
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public getItemByPosition(I)Lcom/facebook/katana/service/api/FacebookPost;
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lt p1, v0, :cond_13
move-object v0, v1
:goto_12
return-object v0
:cond_13
iget-object v0, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/service/api/FacebookPost;
move-object v0, p0
goto :goto_12
:cond_21
move-object v0, v1
goto :goto_12
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getItemViewType(I)I
.registers 5
const/4 v2, 0x0
iget-object v1, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
invoke-virtual {v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-lt p1, v1, :cond_f
const/4 v1, 0x4
:goto_e
return v1
:cond_f
iget-object v1, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
invoke-virtual {v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;
move-result-object v1
invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v1
packed-switch v1, :pswitch_data_2c
move v1, v2
goto :goto_e
:pswitch_24
move v1, v2
goto :goto_e
:pswitch_26
const/4 v1, 0x1
goto :goto_e
:pswitch_28
const/4 v1, 0x2
goto :goto_e
:pswitch_2a
const/4 v1, 0x3
goto :goto_e
:pswitch_data_2c
.packed-switch 0x0
:pswitch_24
:pswitch_2a
:pswitch_26
:pswitch_28
.end packed-switch
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 34
const/16 v18, 0x0
const/16 v16, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
move-object/from16 v23, v0
invoke-virtual/range {v23 .. v23}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPosts()Ljava/util/List;
move-result-object v17
invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I
move-result v23
move/from16 v0, p1
move/from16 v1, v23
if-ge v0, v1, :cond_22
move-object/from16 v0, v17
move/from16 v1, p1
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v16
check-cast v16, Lcom/facebook/katana/service/api/FacebookPost;
:cond_22
const/16 v22, 0x0
if-nez p2, :cond_423
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v23, v0
const-string v24, "layout_inflater"
invoke-virtual/range {v23 .. v24}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v21
check-cast v21, Landroid/view/LayoutInflater;
if-nez v16, :cond_67
const v23, 0x7f030020
const/16 v24, 0x0
move-object/from16 v0, v21
move/from16 v1, v23
move-object/from16 v2, v24
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v18
:goto_45
if-nez v16, :cond_432
const v23, 0x7f0b0056
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/facebook/katana/StreamAdapter;->mLoading:Z
move/from16 v23, v0
if-eqz v23, :cond_42d
const v23, 0x7f080134
:goto_5f
move-object/from16 v0, p1
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
:goto_66
return-object v18
:cond_67
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v23
packed-switch v23, :pswitch_data_998
goto :goto_45
:pswitch_6f
const v23, 0x7f030040
const/16 v24, 0x0
move-object/from16 v0, v21
move/from16 v1, v23
move-object/from16 v2, v24
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v18
new-instance v22, Lcom/facebook/katana/StreamAdapter$ViewHolder;
invoke-direct/range {v22 .. v22}, Lcom/facebook/katana/StreamAdapter$ViewHolder;-><init>()V
const v23, 0x7f0b004b
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v23, 0x7f0b004c
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v23, 0x7f0b0053
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const/16 v23, 0x0
move-object/from16 v0, v23
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const/16 v23, 0x0
move-object/from16 v0, v23
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const/16 v23, 0x0
move-object/from16 v0, v23
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
const v23, 0x7f0b0090
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mCommentsCountView:Landroid/widget/TextView;
const v23, 0x7f0b0091
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mLikesCountView:Landroid/widget/TextView;
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x0
const/16 v25, 0x0
aput-object v25, v23, v24
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x1
const/16 v25, 0x0
aput-object v25, v23, v24
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x2
const/16 v25, 0x0
aput-object v25, v23, v24
move-object/from16 v0, v18
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v22
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_45
:pswitch_134
const v23, 0x7f030031
const/16 v24, 0x0
move-object/from16 v0, v21
move/from16 v1, v23
move-object/from16 v2, v24
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v18
new-instance v22, Lcom/facebook/katana/StreamAdapter$ViewHolder;
invoke-direct/range {v22 .. v22}, Lcom/facebook/katana/StreamAdapter$ViewHolder;-><init>()V
const v23, 0x7f0b004b
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v23, 0x7f0b004c
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v23, 0x7f0b0053
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const v23, 0x7f0b004f
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const v23, 0x7f0b0050
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const/16 v23, 0x0
move-object/from16 v0, v23
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
const v23, 0x7f0b0090
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mCommentsCountView:Landroid/widget/TextView;
const v23, 0x7f0b0091
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mLikesCountView:Landroid/widget/TextView;
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x0
const v25, 0x7f0b0088
move-object/from16 v0, v18
move/from16 v1, v25
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v23, v24
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x1
const v25, 0x7f0b0089
move-object/from16 v0, v18
move/from16 v1, v25
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v23, v24
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x2
const v25, 0x7f0b008a
move-object/from16 v0, v18
move/from16 v1, v25
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v23, v24
move-object/from16 v0, v18
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v22
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_45
:pswitch_230
const v23, 0x7f03004e
const/16 v24, 0x0
move-object/from16 v0, v21
move/from16 v1, v23
move-object/from16 v2, v24
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v18
new-instance v22, Lcom/facebook/katana/StreamAdapter$ViewHolder;
invoke-direct/range {v22 .. v22}, Lcom/facebook/katana/StreamAdapter$ViewHolder;-><init>()V
const v23, 0x7f0b004b
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v23, 0x7f0b004c
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v23, 0x7f0b0053
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const v23, 0x7f0b004f
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const v23, 0x7f0b0050
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const v23, 0x7f0b0051
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
const v23, 0x7f0b0090
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mCommentsCountView:Landroid/widget/TextView;
const v23, 0x7f0b0091
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mLikesCountView:Landroid/widget/TextView;
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x0
const v25, 0x7f0b004e
move-object/from16 v0, v18
move/from16 v1, v25
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v23, v24
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x1
const/16 v25, 0x0
aput-object v25, v23, v24
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x2
const/16 v25, 0x0
aput-object v25, v23, v24
move-object/from16 v0, v18
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v22
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_45
:pswitch_321
const v23, 0x7f03001e
const/16 v24, 0x0
move-object/from16 v0, v21
move/from16 v1, v23
move-object/from16 v2, v24
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v18
new-instance v22, Lcom/facebook/katana/StreamAdapter$ViewHolder;
invoke-direct/range {v22 .. v22}, Lcom/facebook/katana/StreamAdapter$ViewHolder;-><init>()V
const v23, 0x7f0b004b
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
const v23, 0x7f0b004c
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
const v23, 0x7f0b0053
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
const v23, 0x7f0b004f
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
const v23, 0x7f0b0050
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
const v23, 0x7f0b0051
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
const v23, 0x7f0b0090
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mCommentsCountView:Landroid/widget/TextView;
const v23, 0x7f0b0091
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/TextView;
move-object/from16 v0, p1
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mLikesCountView:Landroid/widget/TextView;
const v23, 0x7f0b0052
move-object/from16 v0, v18
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v23
move-object/from16 v0, v23
move-object/from16 v1, v22
iput-object v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mBandView:Landroid/view/View;
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x0
const v25, 0x7f0b004e
move-object/from16 v0, v18
move/from16 v1, v25
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object p1
check-cast p1, Landroid/widget/ImageView;
aput-object p1, v23, v24
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x1
const/16 v25, 0x0
aput-object v25, v23, v24
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x2
const/16 v25, 0x0
aput-object v25, v23, v24
move-object/from16 v0, v18
move-object/from16 v1, v22
invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mViewHolders:Ljava/util/List;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v22
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto/16 :goto_45
:cond_423
move-object/from16 v18, p2
invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v22
check-cast v22, Lcom/facebook/katana/StreamAdapter$ViewHolder;
goto/16 :goto_45
:cond_42d
const v23, 0x7f080131
goto/16 :goto_5f
:cond_432
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v23
packed-switch v23, :pswitch_data_9a4
goto/16 :goto_66
:pswitch_43b
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v23
move-wide/from16 v0, v23
move-object/from16 v2, v22
iput-wide v0, v2, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v10, v0
move-object v0, v10
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mUserImageClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v23, v0
move-object v0, v10
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v25
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v23 .. v27}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_4c9
move-object/from16 v23, v6
:goto_47c
move-object v0, v10
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getUserObject()Ljava/lang/Object;
move-result-object v20
check-cast v20, Landroid/text/Spannable;
if-eqz v20, :cond_4d0
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_497
const/16 v23, 0x0
move/from16 v0, v23
move-object/from16 v1, v22
iput v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoCount:I
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
sget-object v25, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v26
const-wide/16 v28, 0x3e8
mul-long v26, v26, v28
invoke-static/range {v24 .. v27}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object/from16 v2, v22
move-object/from16 v3, v16
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/StreamAdapter;->fillPostFooterView(Landroid/view/View;Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/service/api/FacebookPost;)V
goto/16 :goto_66
:cond_4c9
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v23, v0
goto :goto_47c
:cond_4d0
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v0, v1}, Lcom/facebook/katana/StreamAdapter;->buildStatus(Lcom/facebook/katana/service/api/FacebookPost;)Landroid/text/Spannable;
move-result-object v20
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, v16
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserObject(Ljava/lang/Object;)V
goto :goto_497
:pswitch_4ed
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v23
move-wide/from16 v0, v23
move-object/from16 v2, v22
iput-wide v0, v2, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v10, v0
move-object v0, v10
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mUserImageClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v23, v0
move-object v0, v10
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v25
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v23 .. v27}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_5cb
move-object/from16 v23, v6
:goto_52e
move-object v0, v10
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getUserObject()Ljava/lang/Object;
move-result-object v20
check-cast v20, Landroid/text/Spannable;
if-eqz v20, :cond_5d3
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_549
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v8
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
move-object v5, v0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getName()Ljava/lang/String;
move-result-object v14
if-eqz v14, :cond_5f1
invoke-virtual {v14}, Ljava/lang/String;->length()I
move-result v23
if-lez v23, :cond_5f1
const/16 v23, 0x0
move-object v0, v5
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_569
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
move-object v4, v0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getCaption()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_5fb
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v23
if-lez v23, :cond_5fb
const/16 v23, 0x0
move-object v0, v4
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_585
const/4 v11, 0x0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v23
invoke-interface/range {v23 .. v23}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v23
:goto_58e
invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z
move-result v24
if-nez v24, :cond_604
move v0, v11
move-object/from16 v1, v22
iput v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoCount:I
move v9, v11
:goto_59a
const/16 v23, 0x3
move v0, v9
move/from16 v1, v23
if-lt v0, v1, :cond_61e
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
sget-object v25, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v26
const-wide/16 v28, 0x3e8
mul-long v26, v26, v28
invoke-static/range {v24 .. v27}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object/from16 v2, v22
move-object/from16 v3, v16
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/StreamAdapter;->fillPostFooterView(Landroid/view/View;Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/service/api/FacebookPost;)V
goto/16 :goto_66
:cond_5cb
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v23, v0
goto/16 :goto_52e
:cond_5d3
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v0, v1}, Lcom/facebook/katana/StreamAdapter;->buildStatus(Lcom/facebook/katana/service/api/FacebookPost;)Landroid/text/Spannable;
move-result-object v20
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, v16
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserObject(Ljava/lang/Object;)V
goto/16 :goto_549
:cond_5f1
const/16 v23, 0x8
move-object v0, v5
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_569
:cond_5fb
const/16 v23, 0x8
move-object v0, v4
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_585
:cond_604
invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
const/16 v24, 0x3
move v0, v11
move/from16 v1, v24
if-ge v0, v1, :cond_61a
move-object/from16 v0, p0
move-object/from16 v1, v22
move-object v2, v13
move v3, v11
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/StreamAdapter;->setupImageViewAtIndex(Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;I)V
:cond_61a
add-int/lit8 v11, v11, 0x1
goto/16 :goto_58e
:cond_61e
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
aget-object v23, v23, v9
const/16 v24, 0x0
invoke-virtual/range {v23 .. v24}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
add-int/lit8 v9, v9, 0x1
goto/16 :goto_59a
:pswitch_62f
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v23
move-wide/from16 v0, v23
move-object/from16 v2, v22
iput-wide v0, v2, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v10, v0
move-object v0, v10
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mUserImageClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v23, v0
move-object v0, v10
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v25
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v23 .. v27}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_76d
move-object/from16 v23, v6
:goto_670
move-object v0, v10
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getUserObject()Ljava/lang/Object;
move-result-object v20
check-cast v20, Landroid/text/Spannable;
if-eqz v20, :cond_775
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_68b
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v23
const/16 v24, 0x0
invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x0
aget-object v12, v23, v24
invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v23, v0
move-object v0, v12
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;
move-result-object v19
if-eqz v19, :cond_79b
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
move-object/from16 v0, v23
move-object/from16 v1, v24
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v15
if-eqz v15, :cond_793
move-object/from16 v23, v15
:goto_6d4
move-object v0, v12
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_6da
const/16 v23, 0x0
move-object/from16 v0, v22
move/from16 v1, v23
move-object/from16 v2, v19
#calls: Lcom/facebook/katana/StreamAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/facebook/katana/StreamAdapter$ViewHolder;->access$1(Lcom/facebook/katana/StreamAdapter$ViewHolder;ILjava/lang/String;)V
const/16 v23, 0x1
move/from16 v0, v23
move-object/from16 v1, v22
iput v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoCount:I
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
move-object v5, v0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getName()Ljava/lang/String;
move-result-object v14
if-eqz v14, :cond_7a5
invoke-virtual {v14}, Ljava/lang/String;->length()I
move-result v23
if-lez v23, :cond_7a5
const/16 v23, 0x0
move-object v0, v5
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_709
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
move-object v4, v0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getCaption()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_7af
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v23
if-lez v23, :cond_7af
const/16 v23, 0x0
move-object v0, v4
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_725
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;
move-result-object v23
if-eqz v23, :cond_7b9
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v23, v0
const/16 v24, 0x0
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v23, v0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_743
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
sget-object v25, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v26
const-wide/16 v28, 0x3e8
mul-long v26, v26, v28
invoke-static/range {v24 .. v27}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object/from16 v2, v22
move-object/from16 v3, v16
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/StreamAdapter;->fillPostFooterView(Landroid/view/View;Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/service/api/FacebookPost;)V
goto/16 :goto_66
:cond_76d
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v23, v0
goto/16 :goto_670
:cond_775
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v0, v1}, Lcom/facebook/katana/StreamAdapter;->buildStatus(Lcom/facebook/katana/service/api/FacebookPost;)Landroid/text/Spannable;
move-result-object v20
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, v16
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserObject(Ljava/lang/Object;)V
goto/16 :goto_68b
:cond_793
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
move-object/from16 v23, v0
goto/16 :goto_6d4
:cond_79b
const/16 v23, 0x0
move-object v0, v12
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto/16 :goto_6da
:cond_7a5
const/16 v23, 0x8
move-object v0, v5
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_709
:cond_7af
const/16 v23, 0x8
move-object v0, v4
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_725
:cond_7b9
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v23, v0
const/16 v24, 0x8
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_743
:pswitch_7c6
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v23
move-wide/from16 v0, v23
move-object/from16 v2, v22
iput-wide v0, v2, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserId:J
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mUserImageView:Landroid/widget/ImageView;
move-object v10, v0
move-object v0, v10
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mUserImageClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v23, v0
move-object v0, v10
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mUserImagesContainer:Lcom/facebook/katana/binding/UserImagesCache;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getActorId()J
move-result-wide v25
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getProfile()Lcom/facebook/katana/service/api/FacebookPost$Profile;
move-result-object v27
invoke-virtual/range {v27 .. v27}, Lcom/facebook/katana/service/api/FacebookPost$Profile;->getPic()Ljava/lang/String;
move-result-object v27
invoke-virtual/range {v23 .. v27}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_921
move-object/from16 v23, v6
:goto_807
move-object v0, v10
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getUserObject()Ljava/lang/Object;
move-result-object v20
check-cast v20, Landroid/text/Spannable;
if-eqz v20, :cond_929
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_822
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mImageViews:[Landroid/widget/ImageView;
move-object/from16 v23, v0
const/16 v24, 0x0
aget-object v12, v23, v24
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v8
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v23
invoke-interface/range {v23 .. v23}, Ljava/util/List;->size()I
move-result v23
if-lez v23, :cond_959
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mBandView:Landroid/view/View;
move-object/from16 v23, v0
const/16 v24, 0x8
invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v23
const/16 v24, 0x0
invoke-interface/range {v23 .. v24}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v13
check-cast v13, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
invoke-virtual {v12, v13}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
invoke-virtual {v13}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;
move-result-object v19
if-eqz v19, :cond_94f
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
move-object/from16 v0, v23
move-object/from16 v1, v24
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v15
if-eqz v15, :cond_947
move-object/from16 v23, v15
:goto_874
move-object v0, v12
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_87a
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mMediaItemClickListener:Landroid/view/View$OnClickListener;
move-object/from16 v23, v0
move-object v0, v12
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/16 v23, 0x0
move-object v0, v12
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
const/16 v23, 0x0
move-object/from16 v0, v22
move/from16 v1, v23
move-object/from16 v2, v19
#calls: Lcom/facebook/katana/StreamAdapter$ViewHolder;->setImageUrl(ILjava/lang/String;)V
invoke-static {v0, v1, v2}, Lcom/facebook/katana/StreamAdapter$ViewHolder;->access$1(Lcom/facebook/katana/StreamAdapter$ViewHolder;ILjava/lang/String;)V
const/16 v23, 0x1
move/from16 v0, v23
move-object/from16 v1, v22
iput v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoCount:I
:goto_8a1
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentName:Landroid/widget/TextView;
move-object v5, v0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getName()Ljava/lang/String;
move-result-object v14
if-eqz v14, :cond_976
invoke-virtual {v14}, Ljava/lang/String;->length()I
move-result v23
if-lez v23, :cond_976
const/16 v23, 0x0
move-object v0, v5
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v5, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_8bd
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentCaption:Landroid/widget/TextView;
move-object v4, v0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getCaption()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_980
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v23
if-lez v23, :cond_980
const/16 v23, 0x0
move-object v0, v4
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_8d9
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;
move-result-object v23
if-eqz v23, :cond_98a
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v23, v0
const/16 v24, 0x0
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v23, v0
invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getDescription()Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_8f7
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTimeTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mContext:Landroid/content/Context;
move-object/from16 v24, v0
sget-object v25, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;
invoke-virtual/range {v16 .. v16}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J
move-result-wide v26
const-wide/16 v28, 0x3e8
mul-long v26, v26, v28
invoke-static/range {v24 .. v27}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;
move-result-object v24
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
move-object/from16 v1, v18
move-object/from16 v2, v22
move-object/from16 v3, v16
invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/StreamAdapter;->fillPostFooterView(Landroid/view/View;Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/service/api/FacebookPost;)V
goto/16 :goto_66
:cond_921
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mNoAvatarBitmap:Landroid/graphics/Bitmap;
move-object/from16 v23, v0
goto/16 :goto_807
:cond_929
move-object/from16 v0, p0
move-object/from16 v1, v16
invoke-direct {v0, v1}, Lcom/facebook/katana/StreamAdapter;->buildStatus(Lcom/facebook/katana/service/api/FacebookPost;)Landroid/text/Spannable;
move-result-object v20
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mTextTextView:Landroid/widget/TextView;
move-object/from16 v23, v0
move-object/from16 v0, v23
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, v16
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserObject(Ljava/lang/Object;)V
goto/16 :goto_822
:cond_947
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
move-object/from16 v23, v0
goto/16 :goto_874
:cond_94f
const/16 v23, 0x0
move-object v0, v12
move-object/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
goto/16 :goto_87a
:cond_959
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mBandView:Landroid/view/View;
move-object/from16 v23, v0
const/16 v24, 0x0
invoke-virtual/range {v23 .. v24}, Landroid/view/View;->setVisibility(I)V
const/16 v23, 0x8
move-object v0, v12
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
const/16 v23, 0x0
move/from16 v0, v23
move-object/from16 v1, v22
iput v0, v1, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mPhotoCount:I
goto/16 :goto_8a1
:cond_976
const/16 v23, 0x8
move-object v0, v5
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_8bd
:cond_980
const/16 v23, 0x8
move-object v0, v4
move/from16 v1, v23
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_8d9
:cond_98a
move-object/from16 v0, v22
iget-object v0, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;->mAttachmentDescription:Landroid/widget/TextView;
move-object/from16 v23, v0
const/16 v24, 0x8
invoke-virtual/range {v23 .. v24}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_8f7
nop
:pswitch_data_9a4
.packed-switch 0x0
:pswitch_43b
:pswitch_7c6
:pswitch_4ed
:pswitch_62f
.end packed-switch
:pswitch_data_998
.packed-switch 0x0
:pswitch_6f
:pswitch_321
:pswitch_134
:pswitch_230
.end packed-switch
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x5
return v0
.end method
.method public isLoadingMore()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/StreamAdapter;->mLoading:Z
return v0
.end method
.method public loadingMore(Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/katana/StreamAdapter;->mLoading:Z
invoke-virtual {p0}, Lcom/facebook/katana/StreamAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public onMovedToScrapHeap(Landroid/view/View;)V
.registers 4
invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;
if-eqz v1, :cond_d
check-cast v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;
invoke-virtual {v0}, Lcom/facebook/katana/StreamAdapter$ViewHolder;->detach()V
:cond_d
return-void
.end method
.method public refreshStream()V
.registers 1
invoke-virtual {p0}, Lcom/facebook/katana/StreamAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public refreshStream(Lcom/facebook/katana/binding/FacebookStreamContainer;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/StreamAdapter;->mStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;
invoke-virtual {p0}, Lcom/facebook/katana/StreamAdapter;->notifyDataSetChanged()V
return-void
.end method
.method public updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 6
iget-object v1, p0, Lcom/facebook/katana/StreamAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
:goto_c
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;
if-eqz p1, :cond_1d
move-object v2, p1
:goto_16
invoke-virtual {v0, v2, p2}, Lcom/facebook/katana/StreamAdapter$ViewHolder;->setPhotoBitmap(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_6
goto :goto_c
:cond_1d
iget-object v2, p0, Lcom/facebook/katana/StreamAdapter;->mPhotoDownloadErrorBitmap:Landroid/graphics/Bitmap;
goto :goto_16
.end method
.method public updateUserImage(Lcom/facebook/katana/binding/UserImage;)V
.registers 5
iget-object v1, p0, Lcom/facebook/katana/StreamAdapter;->mViewHolders:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_6
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_d
return-void
:cond_d
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/StreamAdapter$ViewHolder;
#calls: Lcom/facebook/katana/StreamAdapter$ViewHolder;->setUserImageBitmap(Lcom/facebook/katana/binding/UserImage;)V
invoke-static {v0, p1}, Lcom/facebook/katana/StreamAdapter$ViewHolder;->access$0(Lcom/facebook/katana/StreamAdapter$ViewHolder;Lcom/facebook/katana/binding/UserImage;)V
goto :goto_6
.end method