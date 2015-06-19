.class public Lcom/facebook/katana/HomeActivity$ReelAdapter;
.super Landroid/widget/BaseAdapter;
.source "HomeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/HomeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ReelAdapter"
.end annotation


# instance fields
.field private final mClippingMultiplier:F

.field private mContext:Landroid/content/Context;

.field private mGalleryHeight:I

.field private final mImagePadding:I

.field private mIsFirstLoad:Z

.field private final mMaxMultiplier:F

.field private mMediaContent:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;

.field private mPhotoUrls:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private mPostIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/facebook/katana/HomeActivity;


# direct methods
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

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPostIds:Ljava/util/Set;

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

.method private removePost(Lcom/facebook/katana/service/api/FacebookPost;)V
    .registers 5

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPostIds:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoUrls:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;
    invoke-static {v1}, Lcom/facebook/katana/HomeActivity;->access$13(Lcom/facebook/katana/HomeActivity;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public addMediaContent(Ljava/util/List;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;)Z"
        }
    .end annotation

    const/16 v10, 0x32

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_10

    :cond_e
    move v5, v8

    :goto_f
    return v5

    :cond_10
    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getLastPost()Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v2

    if-eqz v2, :cond_25

    sget-object v6, Lcom/facebook/katana/service/api/FacebookPost;->timeComparator:Ljava/util/Comparator;

    invoke-interface {p1, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-interface {v6, v5, v2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v5

    if-gez v5, :cond_25

    const/4 v0, 0x1

    :cond_25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_29
    :goto_29
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_5e

    if-eqz v3, :cond_3a

    if-eqz v0, :cond_3a

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;

    sget-object v6, Lcom/facebook/katana/service/api/FacebookPost;->timeComparator:Ljava/util/Comparator;

    invoke-static {v5, v6}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_3a
    :goto_3a
    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-gt v5, v10, :cond_9a

    if-eqz v3, :cond_5c

    iget-boolean v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mIsFirstLoad:Z

    if-eqz v5, :cond_59

    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getCount()I

    move-result v5

    if-le v5, v9, :cond_57

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mGalleryView:Landroid/widget/Gallery;
    invoke-static {v5}, Lcom/facebook/katana/HomeActivity;->access$14(Lcom/facebook/katana/HomeActivity;)Landroid/widget/Gallery;

    move-result-object v5

    invoke-virtual {v5, v9}, Landroid/widget/Gallery;->setSelection(I)V

    :cond_57
    iput-boolean v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mIsFirstLoad:Z

    :cond_59
    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->notifyDataSetChanged()V

    :cond_5c
    move v5, v3

    goto :goto_f

    :cond_5e
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookPost;

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPostIds:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_29

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->canInteractWithFeedback()Z

    move-result v5

    if-eqz v5, :cond_29

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_29

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPostIds:Ljava/util/Set;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getPostId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_29

    :cond_9a
    iget-object v5, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;

    invoke-interface {v5, v10}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-direct {p0, v4}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->removePost(Lcom/facebook/katana/service/api/FacebookPost;)V

    goto :goto_3a
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

    new-instance v5, Landroid/widget/LinearLayout;

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v5, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;

    invoke-direct {v2, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;

    invoke-interface {v8, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    move-result-object v8

    invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;

    move-result-object v0

    const/4 v7, 0x0

    if-eqz v0, :cond_56

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;
    invoke-static {v8}, Lcom/facebook/katana/HomeActivity;->access$13(Lcom/facebook/katana/HomeActivity;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;

    if-nez v7, :cond_56

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotosContainer:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v9, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v8, v9, v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v7

    if-eqz v7, :cond_d0

    invoke-virtual {p0, v7}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->cropBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v8

    move-object v7, v8

    :goto_49
    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;

    if-eq v7, v8, :cond_56

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;
    invoke-static {v8}, Lcom/facebook/katana/HomeActivity;->access$13(Lcom/facebook/katana/HomeActivity;)Ljava/util/Map;

    move-result-object v8

    invoke-interface {v8, v0, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_56
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoUrls:Ljava/util/Map;

    invoke-interface {v8, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_6d

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoUrls:Ljava/util/Map;

    invoke-interface {v8, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6d
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v8, Landroid/widget/Gallery$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x1

    invoke-direct {v8, v9, v10}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-object v8, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v8, 0x7f0200be

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    iget v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I

    iget v9, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I

    iget v10, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I

    iget v11, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I

    invoke-virtual {v5, v8, v9, v10, v11}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    const/16 v8, 0x11

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setGravity(I)V

    new-instance v8, Landroid/widget/Gallery$LayoutParams;

    const/4 v9, -0x2

    const/4 v10, -0x2

    invoke-direct {v8, v9, v10}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v7, :cond_cf

    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;

    if-ne v7, v8, :cond_d5

    const/high16 v8, 0x3f80

    move v6, v8

    :goto_ab
    invoke-direct {p0, v7, v6}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getImageMultiplier(Landroid/graphics/Bitmap;F)F

    move-result v3

    new-instance v8, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v3

    float-to-int v9, v9

    iget v10, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I

    mul-int/lit8 v10, v10, 0x2

    add-int/2addr v9, v10

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    int-to-float v10, v10

    mul-float/2addr v10, v3

    float-to-int v10, v10

    iget v11, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mImagePadding:I

    mul-int/lit8 v11, v11, 0x2

    add-int/2addr v10, v11

    invoke-direct {v8, v9, v10}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_cf
    return-object v5

    :cond_d0
    iget-object v8, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoDownloadingBitmap:Landroid/graphics/Bitmap;

    move-object v7, v8

    goto/16 :goto_49

    :cond_d5
    const v8, 0x3fb33333

    move v6, v8

    goto :goto_ab
.end method

.method public pullMediaContentFromPosts(Ljava/util/List;)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPost;",
            ">;"
        }
    .end annotation

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
    .registers 13

    iget-object v6, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mPhotoUrls:Ljava/util/Map;

    invoke-interface {v6, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_b

    :goto_a
    return-void

    :cond_b
    if-nez p1, :cond_43

    iget-object v6, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->mMediaContent:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_13
    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_1d

    :cond_19
    invoke-virtual {p0}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->notifyDataSetChanged()V

    goto :goto_a

    :cond_1d
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPost;->getAttachment()Lcom/facebook/katana/service/api/FacebookPost$Attachment;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Attachment;->getMediaItems()Ljava/util/List;

    move-result-object v6

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getSrc()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    invoke-direct {p0, v4}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->removePost(Lcom/facebook/katana/service/api/FacebookPost;)V

    goto :goto_13

    :cond_43
    invoke-virtual {p0, p1}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->cropBorder(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v5

    const v6, 0x3fb33333

    invoke-direct {p0, v5, v6}, Lcom/facebook/katana/HomeActivity$ReelAdapter;->getImageMultiplier(Landroid/graphics/Bitmap;F)F

    move-result v0

    iget-object v6, p0, Lcom/facebook/katana/HomeActivity$ReelAdapter;->this$0:Lcom/facebook/katana/HomeActivity;

    #getter for: Lcom/facebook/katana/HomeActivity;->mHomePhotoReelImages:Ljava/util/Map;
    invoke-static {v6}, Lcom/facebook/katana/HomeActivity;->access$13(Lcom/facebook/katana/HomeActivity;)Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p2, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5b
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_19

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    new-instance v7, Landroid/widget/Gallery$LayoutParams;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    int-to-float v8, v8

    mul-float/2addr v8, v0

    float-to-int v8, v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    int-to-float v9, v9

    mul-float/2addr v9, v0

    float-to-int v9, v9

    invoke-direct {v7, v8, v9}, Landroid/widget/Gallery$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_5b
.end method
