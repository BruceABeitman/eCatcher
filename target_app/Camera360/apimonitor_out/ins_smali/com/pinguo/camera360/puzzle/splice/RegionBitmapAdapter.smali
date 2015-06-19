.class public Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;
.super Landroid/widget/BaseAdapter;
.source "RegionBitmapAdapter.java"
.field private static final TAG:Ljava/lang/String;
.field private static mDecoder:Landroid/graphics/BitmapRegionDecoder;
.field private mCount:I
.field private mImageViewPadding:I
.field private mPhotoPath:Ljava/lang/String;
.field private mPieceHeight:I
.field private mPieceWidth:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mImageViewPadding:I
iput v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceWidth:I
iput v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceHeight:I
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceWidth:I
return-void
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mCount:I
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceHeight:I
return-void
.end method
.method static synthetic access$3()Ljava/lang/String;
.registers 1
sget-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->TAG:Ljava/lang/String;
return-object v0
.end method
.method static synthetic access$4()Landroid/graphics/BitmapRegionDecoder;
.registers 1
sget-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
return-object v0
.end method
.method public getCount()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mCount:I
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
const/4 v0, 0x0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 16
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v0
if-nez p2, :cond_113
new-instance v4, Landroid/widget/ImageView;
invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;
move-result-object v8
invoke-direct {v4, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I
move-result v8
div-int/lit8 v8, v8, 0x6
iput v8, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mImageViewPadding:I
iget v8, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mImageViewPadding:I
const/4 v9, 0x0
iget v10, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mImageViewPadding:I
const/4 v11, 0x0
invoke-virtual {v4, v8, v9, v10, v11}, Landroid/widget/ImageView;->setPadding(IIII)V
:goto_20
iget v8, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceHeight:I
if-lez v8, :cond_11e
invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v8
if-eqz v8, :cond_11e
const/4 v8, 0x0
invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V
invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I
move-result v8
iget v9, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mImageViewPadding:I
mul-int/lit8 v9, v9, 0x2
sub-int v7, v8, v9
invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v6
iget v8, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceWidth:I
if-ge v7, v8, :cond_118
const/high16 v8, 0x3f80
int-to-float v9, v7
mul-float/2addr v8, v9
iget v9, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceWidth:I
int-to-float v9, v9
div-float/2addr v8, v9
iget v9, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceHeight:I
int-to-float v9, v9
mul-float/2addr v8, v9
invoke-static {v8}, Ljava/lang/Math;->round(F)I
move-result v8
iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I
:goto_52
sget-object v8, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-virtual {v4, v6}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
sget-object v8, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, " getview : size = "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v10, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceWidth:I
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, " x "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget v10, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceHeight:I
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, ", params.height = "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
iget v10, v6, Landroid/view/ViewGroup$LayoutParams;->height:I
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:goto_8b
invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;
move-result-object v8
if-eqz v8, :cond_a2
invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;
move-result-object v5
check-cast v5, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;
const/4 v8, 0x0
invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
invoke-virtual {v5}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->release()V
const/4 v8, 0x0
invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_a2
new-instance v3, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;
const/4 v8, 0x0
invoke-direct {v3, v8}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;-><init>(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)V
#setter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->imageView:Landroid/widget/ImageView;
invoke-static {v3, v4}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$5(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;Landroid/widget/ImageView;)V
#setter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->position:I
invoke-static {v3, p1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$6(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;I)V
new-instance v8, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
const/4 v9, 0x0
invoke-direct {v8, p0, v9}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;-><init>(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;)V
#setter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
invoke-static {v3, v8}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$7(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;)V
:try_start_b7
#getter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
invoke-static {v3}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$8(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
move-result-object v8
iget-object v9, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPhotoPath:Ljava/lang/String;
invoke-virtual {v8, v9}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->init(Ljava/lang/String;)V
#getter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
invoke-static {v3}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$8(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
move-result-object v8
const/4 v9, 0x1
new-array v9, v9, [Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;
const/4 v10, 0x0
aput-object v3, v9, v10
invoke-virtual {v8, v9}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:goto_cd
:try_end_cd
.catch Ljava/io/IOException; {:try_start_b7 .. :try_end_cd} :catch_12c
invoke-virtual {v4, v3}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
sget-object v8, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "get view Cost : "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J
move-result-wide v10
sub-long/2addr v10, v0
invoke-virtual {v9, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
sget-object v8, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->TAG:Ljava/lang/String;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, " iv : "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Landroid/widget/ImageView;->getWidth()I
move-result v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, ", parent : "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {p3}, Landroid/view/ViewGroup;->getWidth()I
move-result v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->d(Ljava/lang/String;Ljava/lang/String;)V
return-object v4
:cond_113
move-object v4, p2
check-cast v4, Landroid/widget/ImageView;
goto/16 :goto_20
:cond_118
iget v8, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceHeight:I
iput v8, v6, Landroid/view/ViewGroup$LayoutParams;->height:I
goto/16 :goto_52
:cond_11e
const/4 v8, 0x1
invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V
sget-object v8, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->TAG:Ljava/lang/String;
const-string/jumbo v9, " setAdjustViewBounds"
invoke-static {v8, v9}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_8b
:catch_12c
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_cd
.end method
.method public init(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mCount:I
return-void
.end method
.method public realse()V
.registers 2
sget-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
sget-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z
move-result v0
if-nez v0, :cond_12
sget-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
:cond_12
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
goto :goto_4
.end method
.method public setPhotoPath(Ljava/lang/String;)V
.registers 5
if-eqz p1, :cond_d
new-instance v0, Ljava/io/File;
invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_23
:cond_d
new-instance v0, Ljava/io/IOException;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "path not exists : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
:cond_23
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPhotoPath:Ljava/lang/String;
sget-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
if-eqz v0, :cond_36
sget-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->isRecycled()Z
move-result v0
if-nez v0, :cond_36
sget-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
invoke-virtual {v0}, Landroid/graphics/BitmapRegionDecoder;->recycle()V
:cond_36
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPhotoPath:Ljava/lang/String;
const/4 v1, 0x0
invoke-static {v0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mDecoder:Landroid/graphics/BitmapRegionDecoder;
return-void
.end method