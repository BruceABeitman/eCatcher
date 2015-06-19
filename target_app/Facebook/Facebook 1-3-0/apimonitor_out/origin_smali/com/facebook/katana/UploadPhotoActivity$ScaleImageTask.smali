.class Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;
.super Ljava/lang/Thread;
.source "UploadPhotoActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/UploadPhotoActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScaleImageTask"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mDeleteInputWhenDone:Z

.field private final mHandler:Landroid/os/Handler;

.field private mOpex:Ljava/lang/Exception;

.field private mOutBitmap:Landroid/graphics/Bitmap;

.field private final mPhotoUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/facebook/katana/UploadPhotoActivity;


# direct methods
.method public constructor <init>(Lcom/facebook/katana/UploadPhotoActivity;Landroid/content/Context;Landroid/os/Handler;Landroid/net/Uri;Z)V
    .registers 6

    iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p2, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mHandler:Landroid/os/Handler;

    iput-object p4, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mPhotoUri:Landroid/net/Uri;

    iput-boolean p5, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mDeleteInputWhenDone:Z

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOpex:Ljava/lang/Exception;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mDeleteInputWhenDone:Z

    return v0
.end method

.method static synthetic access$2(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mPhotoUri:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOutBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOutBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static synthetic access$6(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)Lcom/facebook/katana/UploadPhotoActivity;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->this$0:Lcom/facebook/katana/UploadPhotoActivity;

    return-object v0
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mPhotoUri:Landroid/net/Uri;

    const/16 v3, 0x25c

    const/16 v4, 0x25c

    invoke-static {v1, v2, v3, v4}, Lcom/facebook/katana/util/ImageUtils;->scaleImage(Landroid/content/Context;Landroid/net/Uri;II)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOutBitmap:Landroid/graphics/Bitmap;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_e} :catch_19

    :goto_e
    iget-object v1, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;

    invoke-direct {v2, p0}, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask$1;-><init>(Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :catch_19
    move-exception v1

    move-object v0, v1

    const-string v1, "ScaleImageTask.run"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Exception: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-object v0, p0, Lcom/facebook/katana/UploadPhotoActivity$ScaleImageTask;->mOpex:Ljava/lang/Exception;

    goto :goto_e
.end method
