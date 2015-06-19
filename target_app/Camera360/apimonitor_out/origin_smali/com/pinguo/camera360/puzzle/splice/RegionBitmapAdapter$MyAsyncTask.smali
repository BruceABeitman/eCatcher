.class Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;
.super Landroid/os/AsyncTask;
.source "RegionBitmapAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;",
        "Ljava/lang/Integer;",
        "Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;",
        ">;"
    }
.end annotation


# instance fields
.field private mOptions:Landroid/graphics/BitmapFactory$Options;

.field private mPhotoHeight:I

.field private mPhotoWidth:I

.field final synthetic this$0:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;


# direct methods
.method private constructor <init>(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->this$0:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;-><init>(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;)V

    return-void
.end method

.method private calculate(I)Landroid/graphics/Rect;
    .registers 6

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iget v2, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->mPhotoHeight:I

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->this$0:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;

    #getter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mCount:I
    invoke-static {v3}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->access$1(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;)I

    move-result v3

    div-int v0, v2, v3

    const/4 v2, 0x0

    iput v2, v1, Landroid/graphics/Rect;->left:I

    mul-int v2, v0, p1

    iput v2, v1, Landroid/graphics/Rect;->top:I

    iget v2, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->mPhotoWidth:I

    iput v2, v1, Landroid/graphics/Rect;->right:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v0

    iput v2, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->this$0:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;

    #setter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceHeight:I
    invoke-static {v2, v0}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->access$2(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;I)V

    return-object v1
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;
    .registers 7

    const/4 v1, 0x0

    aget-object v0, p1, v1

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->this$0:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;

    monitor-enter v2

    :try_start_6
    invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->access$3()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "doInBackground : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->access$4()Landroid/graphics/BitmapRegionDecoder;

    move-result-object v1

    #getter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->position:I
    invoke-static {v0}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$0(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->calculate(I)Landroid/graphics/Rect;

    move-result-object v3

    iget-object v4, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    #setter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->pieceBitmap:Landroid/graphics/Bitmap;
    invoke-static {v0, v1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$1(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;Landroid/graphics/Bitmap;)V

    monitor-exit v2

    return-object v0

    :catchall_34
    move-exception v1

    monitor-exit v2
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_34

    throw v1
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->doInBackground([Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;

    move-result-object v0

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->mOptions:Landroid/graphics/BitmapFactory$Options;

    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    iput-object v2, v1, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-static {p1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->mPhotoWidth:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->mPhotoHeight:I

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->this$0:Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;

    iget v2, p0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->mPhotoWidth:I

    #setter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->mPieceWidth:I
    invoke-static {v1, v2}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->access$0(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;I)V

    return-void
.end method

.method protected onCancelled()V
    .registers 4

    invoke-super {p0}, Landroid/os/AsyncTask;->onCancelled()V

    invoke-static {}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->access$3()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "onCancelled : "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    #getter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$2(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Landroid/widget/ImageView;

    move-result-object v0

    if-eqz v0, :cond_14

    #getter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->imageView:Landroid/widget/ImageView;
    invoke-static {p1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$2(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Landroid/widget/ImageView;

    move-result-object v0

    #getter for: Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->pieceBitmap:Landroid/graphics/Bitmap;
    invoke-static {p1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;->access$3(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_14
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$MyAsyncTask;->onPostExecute(Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter$Item;)V

    return-void
.end method
