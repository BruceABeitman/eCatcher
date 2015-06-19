.class  Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;
.super Ljava/lang/Object;
.source "RegionBitmapAdapter.java"
.field private imageView:Landroid/widget/ImageView;
.field private pieceBitmap:Landroid/graphics/Bitmap;
.field private position:I
.field private task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;-><init>()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->position:I
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;Landroid/graphics/Bitmap;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->pieceBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->imageView:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->pieceBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;Landroid/widget/ImageView;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->imageView:Landroid/widget/ImageView;
return-void
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->position:I
return-void
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
return-void
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
return-object v0
.end method
.method public release()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->imageView:Landroid/widget/ImageView;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->imageView:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
iput-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->imageView:Landroid/widget/ImageView;
:cond_c
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->pieceBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->pieceBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v0
if-nez v0, :cond_1d
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->pieceBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_1d
iput-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->pieceBitmap:Landroid/graphics/Bitmap;
:cond_1f
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->cancel(Z)Z
iput-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->task:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
:cond_2b
return-void
.end method