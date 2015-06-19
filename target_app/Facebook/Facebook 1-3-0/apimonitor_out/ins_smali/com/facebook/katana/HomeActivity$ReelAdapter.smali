.class public Lcom/facebook/katana/HomeActivity$ReelAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeActivity.java"
.field private final mClippingMultiplier:F
.field private mContext:Landroid/content/Context;
.field private mGalleryHeight:I
.field private final mImagePadding:I
.field private mIsFirstLoad:Z
.field private final mMaxMultiplier:F
.field private mMediaContent:Ljava/util/List;
.field private final mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
.field private mPhotoUrls:Ljava/util/Map;
.field private final mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
.field private mPostIds:Ljava/util/List;
.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;
.method public constructor <init>(Lcom/facebook/katana/HomeActivity;Landroid/content/Context;Lcom/facebook/katana/binding/StreamPhotosCache;)V
.registers 7
const/4 v2, 0x1
iput-object p1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
const v0, 0x3fb33333
iput v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMaxMultiplier:F
const/high16 v0, 0x4080
iput v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mClippingMultiplier:F
iput-object p2, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;
iput-object p3, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0200bd
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPostIds:Ljava/util/List;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoUrls:Ljava/util/Map;
const/4 v0, -0x1
iput v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mGalleryHeight:I
const/high16 v0, 0x40e0
iget-object v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
invoke-static {v2, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F
move-result v0
float-to-int v0, v0
iput v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I
iput-boolean v2, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mIsFirstLoad:Z
return-void
.end method
.method static synthetic access$0(Lcom/facebook/katana/HomeActivity$ReelAdapter;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
return-object v0
.end method
.method private calculateGalleryHeight()V
.registers 4
iget-object v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;
invoke-static {v1}, Lcom/facebook/katana/HomeActivity;->access$14(Lcom/facebook/katana/HomeActivity;)Landroid/widget/Gallery;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/Gallery;->getMeasuredHeight()I
move-result v0
if-eqz v0, :cond_17
const/high16 v1, 0x4080
iget v2, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I
int-to-float v2, v2
mul-float/2addr v1, v2
float-to-int v1, v1
sub-int v1, v0, v1
iput v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mGalleryHeight:I
:cond_17
return-void
.end method
.method private getImageMultiplier(Landroid/graphics/Bitmap;F)F
.registers 6
const/4 v2, -0x1
iget v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mGalleryHeight:I
if-ne v1, v2, :cond_8
invoke-direct {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->calculateGalleryHeight()V
:cond_8
const/high16 v0, 0x3f80
iget v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mGalleryHeight:I
if-eq v1, v2, :cond_23
if-eqz p1, :cond_23
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
if-eqz v1, :cond_23
iget v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mGalleryHeight:I
int-to-float v1, v1
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
int-to-float v2, v2
div-float/2addr v1, v2
invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F
move-result v0
:cond_23
return v0
.end method
.method public addMediaContent(Ljava/util/List;)Z
.registers 12
const/16 v9, 0x32
const/4 v8, 0x1
const/4 v7, 0x0
const/4 v3, 0x0
const/4 v0, 0x0
if-eqz p1, :cond_e
invoke-interface {p1}, Ljava/util/List;->size()I
move-result v4
if-nez v4, :cond_10
:cond_e
move v4, v7
:goto_f
return v4
:cond_10
invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getLastPost()Lcom/facebook/katana/service/api/FacebookPost;
move-result-object v2
if-eqz v2, :cond_25
sget-object v5, Lcom/facebook/katana/service/api/FacebookPost;->timeComparator:Ljava/util/Comparator;
invoke-interface {p1, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookPost;
invoke-interface {v5, v4, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v4
if-gez v4, :cond_25
const/4 v0, 0x1
:cond_25
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v5
:cond_29
:goto_29
invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z
move-result v4
if-nez v4, :cond_6e
if-eqz v3, :cond_3a
if-eqz v0, :cond_3a
iget-object v4, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
sget-object v5, Lcom/facebook/katana/service/api/FacebookPost;->timeComparator:Ljava/util/Comparator;
invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
:cond_3a
iget-object v4, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
invoke-interface {v4}, Ljava/util/List;->size()I
move-result v4
if-le v4, v9, :cond_52
iget-object v4, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
iget-object v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
invoke-interface {v5}, Ljava/util/List;->size()I
move-result v5
sub-int/2addr v5, v8
invoke-interface {v4, v9, v5}, Ljava/util/List;->subList(II)Ljava/util/List;
move-result-object v4
invoke-interface {v4}, Ljava/util/List;->clear()V
:cond_52
if-eqz v3, :cond_6c
iget-boolean v4, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mIsFirstLoad:Z
if-eqz v4, :cond_69
invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getCount()I
move-result v4
if-le v4, v8, :cond_67
iget-object v4, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;
invoke-static {v4}, Lcom/facebook/katana/HomeActivity;->access$14(Lcom/facebook/katana/HomeActivity;)Landroid/widget/Gallery;
move-result-object v4
invoke-virtual {v4, v8}, Landroid/widget/Gallery;->setSelection(I)V
:cond_67
iput-boolean v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mIsFirstLoad:Z
:cond_69
invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->notifyDataSetChanged()V
:cond_6c
move v4, v3
goto :goto_f
:cond_6e
invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookPost;
iget-object v4, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPostIds:Ljava/util/List;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_29
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->canInteractWithFeedback()Z
move-result v4
if-eqz v4, :cond_29
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v4
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v4
invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_29
iget-object v4, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v4, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPostIds:Ljava/util/List;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;
move-result-object v6
invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v3, 0x1
goto :goto_29
.end method
.method public cropBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 7
const/4 v4, 0x3
const/4 v3, 0x6
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
if-le v0, v3, :cond_e
if-gt v1, v3, :cond_10
:cond_e
move-object v2, p1
:goto_f
return-object v2
:cond_10
sub-int v2, v1, v3
sub-int v3, v0, v3
invoke-static {p1, v4, v4, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v2
goto :goto_f
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getLastPost()Lcom/facebook/katana/service/api/FacebookPost;
.registers 4
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x0
:goto_9
return-object v0
:cond_a
iget-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
iget-object v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
const/4 v2, 0x1
sub-int/2addr v1, v2
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object p0
check-cast p0, Lcom/facebook/katana/service/api/FacebookPost;
move-object v0, p0
goto :goto_9
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 16
const/4 v9, -0x1
const/4 v11, -0x2
new-instance v4, Landroid/widget/LinearLayout;
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;
invoke-direct {v4, v7}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/ImageView;
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;
invoke-direct {v2, v7}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;
invoke-interface {v7, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;
move-result-object v7
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;
move-result-object v7
const/4 v8, 0x0
invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v7
check-cast v7, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;
invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;
move-result-object v0
const/4 v6, 0x0
if-eqz v0, :cond_58
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;
invoke-static {v7}, Lcom/facebook/katana/HomeActivity;->access$13(Lcom/facebook/katana/HomeActivity;)Ljava/util/Map;
move-result-object v7
invoke-interface {v7, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/graphics/Bitmap;
if-nez v6, :cond_58
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;
iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;
invoke-virtual {v7, v8, v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v6
if-eqz v6, :cond_bc
invoke-virtual {p0, v6}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->cropBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v7
move-object v6, v7
:goto_4b
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
if-eq v6, v7, :cond_58
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;
invoke-static {v7}, Lcom/facebook/katana/HomeActivity;->access$13(Lcom/facebook/katana/HomeActivity;)Ljava/util/Map;
move-result-object v7
invoke-interface {v7, v0, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_58
invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoUrls:Ljava/util/Map;
invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v7, Landroid/widget/Gallery$LayoutParams;
invoke-direct {v7, v9, v9}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V
invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
sget-object v7, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
const v7, 0x7f0200be
invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
iget v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I
iget v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I
iget v9, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I
iget v10, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I
invoke-virtual {v4, v7, v8, v9, v10}, Landroid/widget/LinearLayout;->setPadding(IIII)V
const/16 v7, 0x11
invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setGravity(I)V
new-instance v7, Landroid/widget/Gallery$LayoutParams;
invoke-direct {v7, v11, v11}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V
invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
if-eqz v6, :cond_bb
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
if-ne v6, v7, :cond_c0
const/high16 v7, 0x3f80
move v5, v7
:goto_97
invoke-direct {p0, v6, v5}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getImageMultiplier(Landroid/graphics/Bitmap;F)F
move-result v3
new-instance v7, Landroid/widget/Gallery$LayoutParams;
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getWidth()I
move-result v8
int-to-float v8, v8
mul-float/2addr v8, v3
float-to-int v8, v8
iget v9, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I
mul-int/lit8 v9, v9, 0x2
add-int/2addr v8, v9
invoke-virtual {v6}, Landroid/graphics/Bitmap;->getHeight()I
move-result v9
int-to-float v9, v9
mul-float/2addr v9, v3
float-to-int v9, v9
iget v10, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I
mul-int/lit8 v10, v10, 0x2
add-int/2addr v9, v10
invoke-direct {v7, v8, v9}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V
invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_bb
return-object v4
:cond_bc
iget-object v7, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;
move-object v6, v7
goto :goto_4b
:cond_c0
const v7, 0x3fb33333
move v5, v7
goto :goto_97
.end method
.method public pullMediaContentFromPosts(Ljava/util/List;)Ljava/util/List;
.registers 7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_10
return-object v1
:cond_10
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/facebook/katana/service/api/FacebookPost;
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v3
const/4 v4, 0x2
if-eq v3, v4, :cond_24
invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookPost;->getPostType()I
move-result v3
const/4 v4, 0x3
if-ne v3, v4, :cond_9
:cond_24
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_9
.end method
.method public updatePhoto(Landroid/graphics/Bitmap;Ljava/lang/String;)V
.registers 9
iget-object v3, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoUrls:Ljava/util/Map;
invoke-interface {v3, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
if-nez v1, :cond_b
:goto_a
return-void
:cond_b
if-nez p1, :cond_16
const/16 v3, 0x8
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:goto_12
invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->notifyDataSetChanged()V
goto :goto_a
:cond_16
invoke-virtual {p0, p1}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->cropBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v2
iget-object v3, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;
#getter for: Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;
invoke-static {v3}, Lcom/facebook/katana/HomeActivity;->access$13(Lcom/facebook/katana/HomeActivity;)Ljava/util/Map;
move-result-object v3
invoke-interface {v3, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
const v3, 0x3fb33333
invoke-direct {p0, v2, v3}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getImageMultiplier(Landroid/graphics/Bitmap;F)F
move-result v0
new-instance v3, Landroid/widget/Gallery$LayoutParams;
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v4
int-to-float v4, v4
mul-float/2addr v4, v0
float-to-int v4, v4
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v5
int-to-float v5, v5
mul-float/2addr v5, v0
float-to-int v5, v5
invoke-direct {v3, v4, v5}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_12
.end method