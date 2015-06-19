.class public Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;
.super Lcom/pinguo/camera360/base/BaseActivity;
.source "PuzzleSpliceActivity.java"

# interfaces
.implements Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;,
        Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;
    }
.end annotation


# static fields
.field private static final C360_SPLICE_LAST_DATA:Ljava/lang/String; = "C360_splice_last_data"

.field private static final LAST_DATA:Ljava/lang/String; = "last_data"

.field public static final MSG_CANCEL_WAITING_DIALOG:I = 0x64

.field public static final MSG_SAVE_FAIL:I = 0x65

.field public static final MSG_SPLICE_FAIL:I = 0x66

.field private static final PUZZLE_SPLICE_PIC_WIDTH:I = 0x226

.field private static final PUZZLE_SPLICE_PREV_PIC_WIDTH:I = 0x1c2

.field private static final SPLICE_PIC_MARGIN:I = 0x6

.field private static final SPLICE_PREV_TEMP_PATH:Ljava/lang/String;

.field public static final SPLICE_TEMP_PATH:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCanCancelDialog:Z

.field private mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

.field private mHandler:Landroid/os/Handler;

.field private mHasInit:Z

.field private mLastData:Ljava/lang/String;

.field private mNewPicPathList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhotoMakeRunner:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;

.field private mPicArrayListSize:I

.field private mPicView:Landroid/widget/ImageView;

.field private mPreviewBitmap:Landroid/graphics/Bitmap;

.field private mProgressDialog:Landroid/view/View;

.field private mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_SPLICE:Ljava/lang/String;

    sput-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_TEMP_PATH:Ljava/lang/String;

    sget-object v0, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_SPLICE_PREV:Ljava/lang/String;

    sput-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_PREV_TEMP_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/pinguo/camera360/base/BaseActivity;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mNewPicPathList:Ljava/util/ArrayList;

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iput v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicArrayListSize:I

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mLastData:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHasInit:Z

    new-instance v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;-><init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPhotoMakeRunner:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mCanCancelDialog:Z

    new-instance v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$1;-><init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private Bitmap2Bytes(Landroid/graphics/Bitmap;)[B
    .registers 5

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    return-object v1
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->doPrevPic()V

    return-void
.end method

.method static synthetic access$10(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mCanCancelDialog:Z

    return-void
.end method

.method static synthetic access$11(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->doOrgPic()V

    return-void
.end method

.method static synthetic access$12(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$13(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$14(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_PREV_TEMP_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->showPreivewPic()V

    return-void
.end method

.method static synthetic access$4()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$6(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mNewPicPathList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$7(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->clearBitmaps()V

    return-void
.end method

.method static synthetic access$8(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->deleteSpliceFile()V

    return-void
.end method

.method static synthetic access$9(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private cancelProgress()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_a
    return-void
.end method

.method private clearBitmaps()V
    .registers 2

    new-instance v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;

    invoke-direct {v0, p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$2;-><init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private decodeWithOutRegion()V
    .registers 5

    const/4 v3, 0x0

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    const/4 v1, 0x2

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    sget-object v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_PREV_TEMP_PATH:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPreviewBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->cancelProgress()V

    :goto_24
    return-void

    :cond_25
    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802a2

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->cancelProgress()V

    goto :goto_24
.end method

.method private decodeWithRegion()V
    .registers 7

    const v3, 0x7f0a03cc

    invoke-virtual {p0, v3}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ListView;

    new-instance v0, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;

    invoke-direct {v0}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;-><init>()V

    :try_start_e
    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mNewPicPathList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->init(I)V

    sget-object v3, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_PREV_TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/pinguo/camera360/puzzle/splice/RegionBitmapAdapter;->setPhotoPath(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string/jumbo v3, "RegionBitmapAdapter"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string/jumbo v5, "lv : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/ListView;->getWidth()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->v(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_39} :catch_3a

    :goto_39
    return-void

    :catch_3a
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_39
.end method

.method private deleteSpliceFile()V
    .registers 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_TEMP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_10
    return-void
.end method

.method private doOrgPic()V
    .registers 6

    const/4 v4, 0x6

    const/16 v3, 0x226

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicArrayListSize:I

    sget-object v2, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->makeSpliceImage(IILjava/lang/String;I)Z

    sget-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setp 5 ------------> doOrgPic"

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    :goto_18
    return-void

    :cond_19
    new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mNewPicPathList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->doSplicePic(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicArrayListSize:I

    sget-object v2, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_TEMP_PATH:Ljava/lang/String;

    invoke-virtual {v0, v1, v3, v2, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->makeSpliceImage(IILjava/lang/String;I)Z

    sget-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setp 5 ------------> doOrgPic"

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_18
.end method

.method private doPrevPic()V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mNewPicPathList:Ljava/util/ArrayList;

    const/16 v1, 0x226

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->doSplicePic(Ljava/util/ArrayList;I)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    iget v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicArrayListSize:I

    const/16 v2, 0x1c2

    sget-object v3, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_PREV_TEMP_PATH:Ljava/lang/String;

    const/4 v4, 0x6

    invoke-virtual {v0, v1, v2, v3, v4}, LvStudio/Android/GPhoto/GPhotoJNI;->makeSpliceImage(IILjava/lang/String;I)Z

    return-void
.end method

.method private doSplicePic(Ljava/util/ArrayList;I)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    new-instance v0, LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-direct {v0}, LvStudio/Android/GPhoto/GPhotoJNI;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicArrayListSize:I

    const/4 v9, 0x0

    :goto_10
    iget v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicArrayListSize:I

    if-lt v9, v0, :cond_1f

    sget-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "setp 2 ------------> set pic data"

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    return-void

    :cond_1f
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-boolean v2, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v11, v10, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v12, v10, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    sget-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "outHight : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " outWidth : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    if-lez v12, :cond_d8

    if-lez v11, :cond_d8

    if-le v12, p2, :cond_dc

    invoke-direct {p0, v12, p2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getPicScale(II)I

    move-result v0

    iput v0, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    :goto_5f
    iput-boolean v3, v10, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, v10}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "path   "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v4, " : "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v7, :cond_d8

    sget-object v0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "h : "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v4, " w : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v7}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v8

    invoke-virtual {p1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getRightAngle(Ljava/lang/String;)I

    move-result v6

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    const/16 v1, 0x5a

    const/4 v4, 0x6

    move v5, v3

    invoke-virtual/range {v0 .. v5}, LvStudio/Android/GPhoto/GPhotoJNI;->SetParams(IZZII)Z

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mGPhotoJNI:LvStudio/Android/GPhoto/GPhotoJNI;

    array-length v1, v8

    invoke-virtual {v0, v9, v8, v1, v6}, LvStudio/Android/GPhoto/GPhotoJNI;->setGridImage(I[BII)Z

    :cond_d8
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_10

    :cond_dc
    iput v2, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    goto :goto_5f
.end method

.method private getPicScale(II)I
    .registers 11

    int-to-double v4, p1

    int-to-double v6, p2

    div-double/2addr v4, v6

    const-wide/high16 v6, 0x3ff8

    div-double v2, v4, v6

    new-instance v4, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v0

    double-to-int v4, v0

    return v4
.end method

.method private getRightAngle(Ljava/lang/String;)I
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getPhotoOrientation(Ljava/lang/String;)I

    move-result v0

    sparse-switch v0, :sswitch_data_32

    :goto_9
    sget-object v2, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string/jumbo v4, "fileAngle : "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " rightAngle : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :sswitch_2a
    const/4 v1, 0x0

    goto :goto_9

    :sswitch_2c
    const/4 v1, 0x1

    goto :goto_9

    :sswitch_2e
    const/4 v1, 0x2

    goto :goto_9

    :sswitch_30
    const/4 v1, 0x3

    goto :goto_9

    :sswitch_data_32
    .sparse-switch
        0x0 -> :sswitch_2a
        0x5a -> :sswitch_2c
        0xb4 -> :sswitch_2e
        0x10e -> :sswitch_30
    .end sparse-switch
.end method

.method private initUI()V
    .registers 3

    const v0, 0x7f0a0189

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    invoke-static {p0}, Lcom/pinguo/camera360/ui/TextTitleView;->findMeByDefault(Landroid/app/Activity;)Lcom/pinguo/camera360/ui/TextTitleView;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/ui/TextTitleView;->setOnTitleViewClickListener(Lcom/pinguo/camera360/ui/TextTitleView$OnTextTitleClickListener;)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    const v1, 0x7f0802a3

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TextTitleView;->setTiTleText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    const v1, 0x7f0802c6

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TextTitleView;->setLeftBtnText(I)V

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    const v1, 0x7f0802c8

    invoke-virtual {v0, v1}, Lcom/pinguo/camera360/ui/TextTitleView;->setRightBtnText(I)V

    const v0, 0x7f0a03cb

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPicView:Landroid/widget/ImageView;

    return-void
.end method

.method private isSelectedPicChanged(Ljava/util/ArrayList;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v3, "C360_splice_last_data"

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "last_data"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mLastData:Ljava/lang/String;

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mLastData:Ljava/lang/String;

    if-eqz v3, :cond_25

    iget-object v3, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mLastData:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const/4 v0, 0x0

    :goto_24
    return v0

    :cond_25
    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mLastData:Ljava/lang/String;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    const-string/jumbo v4, "last_data"

    invoke-interface {v3, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    goto :goto_24
.end method

.method private saveSpliceFile()V
    .registers 4

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;-><init>(Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$SaveRuner;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private setLog(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-static {p1, p2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showPreivewPic()V
    .registers 5

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_PREV_TEMP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    sget-boolean v1, Lcom/pinguo/lib/ApiHelper;->AFTER_GINGERBREAD_MR1:Z

    if-eqz v1, :cond_20

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->decodeWithRegion()V

    :goto_14
    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->cancelProgress()V

    sget-object v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setp 4 ------------> showPreivewPic"

    invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_20
    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->decodeWithOutRegion()V

    goto :goto_14

    :cond_24
    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0802a2

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_14
.end method

.method private showProgress()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->finish()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 5

    const/16 v2, 0x400

    invoke-super {p0, p1}, Lcom/pinguo/camera360/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v2, v2}, Landroid/view/Window;->setFlags(II)V

    const v1, 0x7f0300a2

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "intent_key_puzzle_array"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mNewPicPathList:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->initUI()V

    sget-object v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "setp 1 ------------> get mNewPicPathList"

    invoke-direct {p0, v1, v2}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setLog(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->SPLICE_PREV_TEMP_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mNewPicPathList:Ljava/util/ArrayList;

    invoke-direct {p0, v1}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->isSelectedPicChanged(Ljava/util/ArrayList;)Z

    move-result v1

    if-nez v1, :cond_3f

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_50

    :cond_3f
    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->showProgress()V

    new-instance v1, Ljava/lang/Thread;

    iget-object v2, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mPhotoMakeRunner:Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity$PhotoMakeRunner;

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :goto_4c
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHasInit:Z

    return-void

    :cond_50
    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->showPreivewPic()V

    goto :goto_4c
.end method

.method protected onCreate(Landroid/os/Bundle;Z)V
    .registers 3

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    invoke-super {p0, p1, p2}, Lcom/pinguo/camera360/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_b
    return v0

    :pswitch_c
    iget-boolean v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mHasInit:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mCanCancelDialog:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mTextTitleView:Lcom/pinguo/camera360/ui/TextTitleView;

    invoke-virtual {v0}, Lcom/pinguo/camera360/ui/TextTitleView;->performLeftButtonClick()V

    :cond_19
    const/4 v0, 0x1

    goto :goto_b

    nop

    :pswitch_data_1c
    .packed-switch 0x4
        :pswitch_c
    .end packed-switch
.end method

.method public onLeftClick()V
    .registers 2

    iget-boolean v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mCanCancelDialog:Z

    if-eqz v0, :cond_12

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->clearBitmaps()V

    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->deleteSpliceFile()V

    const/16 v0, 0x7d0

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->setResult(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->finish()V

    :cond_12
    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onPause(Landroid/content/Context;)V

    const-string/jumbo v0, "Umeng_4.0"

    const-string/jumbo v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onPause()V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->unBind(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-static {p0}, Lcom/umeng/analytics/MobclickAgent;->onResume(Landroid/content/Context;)V

    const-string/jumbo v0, "Umeng_4.0"

    const-string/jumbo v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Lcom/pinguo/camera360/base/BaseActivity;->onResume()V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->start(Landroid/content/Context;)V

    invoke-static {}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->getInstance()Lcom/pinguo/camera360/save/processer/PhotoProcesser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesser;->bind(Landroid/content/Context;)V

    return-void
.end method

.method public onRightClick()V
    .registers 3

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mCanCancelDialog:Z

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1b

    :cond_f
    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->mProgressDialog:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/splice/PuzzleSpliceActivity;->saveSpliceFile()V

    :cond_1b
    return-void
.end method
