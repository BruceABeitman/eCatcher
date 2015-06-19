.class Lco/vine/android/CropActivity$CropImageTask;
.super Landroid/os/AsyncTask;
.source "CropActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/CropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CropImageTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mActivity:Lco/vine/android/CropActivity;

.field final mBitmapHeight:I

.field final mBitmapHeightOffset:I

.field final mBitmapWidth:I

.field final mBitmapWidthOffset:I

.field final mContext:Landroid/content/Context;

.field final mCropRect:Landroid/graphics/Rect;

.field final mFileToViewScale:I

.field final mIntent:Landroid/content/Intent;

.field final mUri:Landroid/net/Uri;

.field mView:Landroid/widget/ImageView;

.field mViewBitmap:Landroid/graphics/Bitmap;


# direct methods
.method constructor <init>(Lco/vine/android/CropActivity;)V
    .registers 8

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    invoke-virtual {p1}, Lco/vine/android/CropActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mContext:Landroid/content/Context;

    iget v1, p1, Lco/vine/android/CropActivity;->mFileToViewScale:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mFileToViewScale:I

    iget v1, p1, Lco/vine/android/CropActivity;->mBitmapWidthOffset:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapWidthOffset:I

    iget v1, p1, Lco/vine/android/CropActivity;->mBitmapHeightOffset:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapHeightOffset:I

    iget v1, p1, Lco/vine/android/CropActivity;->mBitmapHeight:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapHeight:I

    iget v1, p1, Lco/vine/android/CropActivity;->mBitmapWidth:I

    iput v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapWidth:I

    iget-object v1, p1, Lco/vine/android/CropActivity;->mUri:Landroid/net/Uri;

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mUri:Landroid/net/Uri;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mIntent:Landroid/content/Intent;

    iget-object v1, p1, Lco/vine/android/CropActivity;->mView:Lco/vine/android/widget/CroppableImageView;

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mView:Landroid/widget/ImageView;

    check-cast v1, Lco/vine/android/widget/CroppableImageView;

    invoke-virtual {v1}, Lco/vine/android/widget/CroppableImageView;->getCropRect()Landroid/graphics/RectF;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iget v4, v0, Landroid/graphics/RectF;->right:F

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/RectF;->bottom:F

    float-to-int v5, v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method private basicCrop()Ljava/lang/Boolean;
    .registers 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lco/vine/android/CropActivity$CropImageTask;->mContext:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v14, v0, Lco/vine/android/CropActivity$CropImageTask;->mCropRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v2, v0, Lco/vine/android/CropActivity$CropImageTask;->mViewBitmap:Landroid/graphics/Bitmap;

    if-nez v2, :cond_11

    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    :goto_10
    return-object v3

    :cond_11
    new-instance v9, Landroid/graphics/Rect;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v9, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v11

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v17

    const/4 v3, 0x1

    move/from16 v0, v17

    if-le v0, v3, :cond_30

    const/4 v3, 0x1

    if-gt v11, v3, :cond_33

    :cond_30
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto :goto_10

    :cond_33
    invoke-virtual {v9, v14}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_b1

    iget v3, v14, Landroid/graphics/Rect;->left:I

    iget v4, v14, Landroid/graphics/Rect;->top:I

    invoke-virtual {v14}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {v14}, Landroid/graphics/Rect;->height()I

    move-result v6

    invoke-static/range {v1 .. v6}, Lco/vine/android/util/image/ImageUtils;->createBitmap(Landroid/content/Context;Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v10

    if-eqz v10, :cond_b1

    new-instance v7, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v7}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v10, v3, v4, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    const/16 v4, 0xc8

    const/16 v5, 0xc8

    invoke-static {v1, v3, v4, v5}, Lco/vine/android/util/image/ImageUtils;->resizeBitmap(Landroid/content/Context;[BII)Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    move-result-object v8

    if-eqz v8, :cond_b1

    iget-object v3, v8, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v3, :cond_b1

    invoke-static {v1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v12

    iget-object v3, v8, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    invoke-static {v1, v3, v12, v13}, Lco/vine/android/util/image/ImageUtils;->writePicToFile(Landroid/content/Context;Landroid/graphics/Bitmap;J)Landroid/net/Uri;

    move-result-object v16

    if-eqz v16, :cond_b1

    move-object/from16 v0, p0

    iget v15, v0, Lco/vine/android/CropActivity$CropImageTask;->mFileToViewScale:I

    iget v3, v14, Landroid/graphics/Rect;->left:I

    mul-int/2addr v3, v15

    iget v4, v14, Landroid/graphics/Rect;->top:I

    mul-int/2addr v4, v15

    iget v5, v14, Landroid/graphics/Rect;->right:I

    move-object/from16 v0, p0

    iget v6, v0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapWidthOffset:I

    sub-int/2addr v5, v6

    mul-int/2addr v5, v15

    iget v6, v14, Landroid/graphics/Rect;->bottom:I

    move-object/from16 v0, p0

    iget v0, v0, Lco/vine/android/CropActivity$CropImageTask;->mBitmapHeightOffset:I

    move/from16 v18, v0

    sub-int v6, v6, v18

    mul-int/2addr v6, v15

    invoke-virtual {v14, v3, v4, v5, v6}, Landroid/graphics/Rect;->set(IIII)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/CropActivity$CropImageTask;->mIntent:Landroid/content/Intent;

    const-string v4, "cropped_rect"

    invoke-virtual {v3, v4, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/CropActivity$CropImageTask;->mIntent:Landroid/content/Intent;

    const-string v4, "uri"

    move-object/from16 v0, v16

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    goto/16 :goto_10

    :cond_b1
    sget-object v3, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    goto/16 :goto_10
.end method


# virtual methods
.method public attachActivity(Lco/vine/android/CropActivity;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    return-void
.end method

.method public detachActivity()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    iput-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mView:Landroid/widget/ImageView;

    return-void
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .registers 4

    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lco/vine/android/CropActivity$CropImageTask;->basicCrop()Ljava/lang/Boolean;

    move-result-object v1

    return-object v1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lco/vine/android/CropActivity$CropImageTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .registers 5

    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    if-eqz v0, :cond_15

    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/CropActivity;->removeDialog(I)V

    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iget-object v2, p0, Lco/vine/android/CropActivity$CropImageTask;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v1, v2}, Lco/vine/android/CropActivity;->onCropDone(ZLandroid/content/Intent;)V

    :cond_15
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lco/vine/android/CropActivity$CropImageTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/CropActivity$CropImageTask;->mView:Landroid/widget/ImageView;

    iget-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    if-eqz v1, :cond_20

    if-eqz v0, :cond_20

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mViewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lco/vine/android/CropActivity$CropImageTask;->mActivity:Lco/vine/android/CropActivity;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lco/vine/android/CropActivity;->showDialog(I)V

    :cond_20
    return-void
.end method
