.class public Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;
.super Ljava/lang/Object;
.source "CaptureIntentManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/camera/logic/CaptureIntentManager$OnCaptrueIntentFinishListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mBitMap:Landroid/graphics/Bitmap;

.field private mCaptureIntentUri:Landroid/net/Uri;

.field private mListener:Lcom/pinguo/camera360/camera/logic/CaptureIntentManager$OnCaptrueIntentFinishListener;

.field private mTaskState:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z

    if-nez p1, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mCaptureIntentUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    const-string/jumbo v2, "output"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iput-object v2, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mCaptureIntentUri:Landroid/net/Uri;

    goto :goto_8
.end method

.method private returnByData(Landroid/graphics/Bitmap;)V
    .registers 5

    invoke-static {p1}, Lcom/pinguo/lib/image/ImageUtil;->Bitmap2Bytes(Landroid/graphics/Bitmap;)[B

    move-result-object v0

    const v1, 0xc800

    invoke-static {v0, v1}, Lcom/pinguo/lib/image/ImageUtil;->makeBitmap([BI)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_11

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z

    :goto_10
    return-void

    :cond_11
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z

    sget-object v1, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "return Intent data ok"

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->setSuccessResultByData(Landroid/graphics/Bitmap;)V

    goto :goto_10
.end method

.method private returnByFile(Landroid/graphics/Bitmap;)V
    .registers 7

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_7
    iget-object v3, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mCaptureIntentUri:Landroid/net/Uri;

    invoke-virtual {v1, v3}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;

    move-result-object v2

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x4b

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->setSuccessResultByFile()V
    :try_end_1d
    .catchall {:try_start_7 .. :try_end_1d} :catchall_3d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_1d} :catch_2b

    if-eqz v2, :cond_22

    :try_start_1f
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_22} :catch_49

    :cond_22
    :goto_22
    sget-object v3, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->TAG:Ljava/lang/String;

    const-string/jumbo v4, "return Intent file ok"

    invoke-static {v3, v4}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_2b
    move-exception v0

    :try_start_2c
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z
    :try_end_32
    .catchall {:try_start_2c .. :try_end_32} :catchall_3d

    if-eqz v2, :cond_22

    :try_start_34
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_37
    .catch Ljava/io/IOException; {:try_start_34 .. :try_end_37} :catch_38

    goto :goto_22

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22

    :catchall_3d
    move-exception v3

    if-eqz v2, :cond_43

    :try_start_40
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_43
    .catch Ljava/io/IOException; {:try_start_40 .. :try_end_43} :catch_44

    :cond_43
    :goto_43
    throw v3

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_43

    :catch_49
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_22
.end method

.method private returnResult(Landroid/graphics/Bitmap;)V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mCaptureIntentUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->returnByFile(Landroid/graphics/Bitmap;)V

    :goto_7
    return-void

    :cond_8
    invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->returnByData(Landroid/graphics/Bitmap;)V

    goto :goto_7
.end method


# virtual methods
.method protected getActivity()Landroid/app/Activity;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method public makeResult()V
    .registers 5

    iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mBitMap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_34

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->returnResult(Landroid/graphics/Bitmap;)V

    :goto_7
    sget-object v1, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, " return Intent success = "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v3, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z

    if-nez v1, :cond_25

    invoke-virtual {p0}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->setCanceledResult()V

    :cond_25
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mBitMap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mListener:Lcom/pinguo/camera360/camera/logic/CaptureIntentManager$OnCaptrueIntentFinishListener;

    if-eqz v1, :cond_33

    iget-object v1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mListener:Lcom/pinguo/camera360/camera/logic/CaptureIntentManager$OnCaptrueIntentFinishListener;

    iget-boolean v2, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager$OnCaptrueIntentFinishListener;->onFinish(Z)V

    :cond_33
    return-void

    :cond_34
    sget-object v1, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "return Intent fail : org image is null .."

    invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mTaskState:Z

    goto :goto_7
.end method

.method protected setCanceledResult()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method

.method public setIntentBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mBitMap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setOnCaptrueIntentFinishListner(Lcom/pinguo/camera360/camera/logic/CaptureIntentManager$OnCaptrueIntentFinishListener;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mListener:Lcom/pinguo/camera360/camera/logic/CaptureIntentManager$OnCaptrueIntentFinishListener;

    return-void
.end method

.method protected setSuccessResultByData(Landroid/graphics/Bitmap;)V
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    new-instance v2, Landroid/content/Intent;

    const-string/jumbo v3, "inline-data"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "data"

    invoke-virtual {v2, v3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    return-void
.end method

.method protected setSuccessResultByFile()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/camera360/camera/logic/CaptureIntentManager;->mActivity:Landroid/app/Activity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setResult(I)V

    return-void
.end method
