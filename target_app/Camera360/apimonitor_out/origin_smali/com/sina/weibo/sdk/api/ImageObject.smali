.class public Lcom/sina/weibo/sdk/api/ImageObject;
.super Lcom/sina/weibo/sdk/api/BaseMediaObject;
.source "ImageObject.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/sina/weibo/sdk/api/ImageObject;",
            ">;"
        }
    .end annotation
.end field

.field private static final DATA_SIZE:I = 0x200000


# instance fields
.field public imageData:[B

.field public imagePath:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sina/weibo/sdk/api/ImageObject$1;

    invoke-direct {v0}, Lcom/sina/weibo/sdk/api/ImageObject$1;-><init>()V

    sput-object v0, Lcom/sina/weibo/sdk/api/ImageObject;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 3

    invoke-direct {p0}, Lcom/sina/weibo/sdk/api/BaseMediaObject;-><init>()V

    invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkArgs()Z
    .registers 8

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-nez v3, :cond_13

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-nez v3, :cond_13

    const-string/jumbo v3, "Weibo.ImageObject"

    const-string/jumbo v4, "imageData and imagePath are null"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_12
    return v2

    :cond_13
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    if-eqz v3, :cond_28

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    array-length v3, v3

    const/high16 v4, 0x20

    if-le v3, v4, :cond_28

    const-string/jumbo v3, "Weibo.ImageObject"

    const-string/jumbo v4, "imageData is too large"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_28
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_40

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x200

    if-le v3, v4, :cond_40

    const-string/jumbo v3, "Weibo.ImageObject"

    const-string/jumbo v4, "imagePath is too length"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_40
    iget-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    if-eqz v3, :cond_7b

    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :try_start_4b
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_66

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_66

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/32 v5, 0xa00000

    cmp-long v3, v3, v5

    if-lez v3, :cond_7b

    :cond_66
    const-string/jumbo v3, "Weibo.ImageObject"

    const-string/jumbo v4, "checkArgs fail, image content is too large or not exists"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_6f
    .catch Ljava/lang/SecurityException; {:try_start_4b .. :try_end_6f} :catch_70

    goto :goto_12

    :catch_70
    move-exception v0

    const-string/jumbo v3, "Weibo.ImageObject"

    const-string/jumbo v4, "checkArgs fail, image content is too large or not exists"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_12

    :cond_7b
    const/4 v2, 0x1

    goto :goto_12
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getObjType()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final setImageObject(Landroid/graphics/Bitmap;)V
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_6
    .catchall {:try_start_1 .. :try_end_6} :catchall_32
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1a

    :try_start_6
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x55

    invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    iput-object v3, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B
    :try_end_13
    .catchall {:try_start_6 .. :try_end_13} :catchall_44
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_47

    if-eqz v2, :cond_42

    :try_start_15
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3e

    move-object v1, v2

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v0

    :goto_1b
    :try_start_1b
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v3, "Weibo.ImageObject"

    const-string/jumbo v4, "put thumb failed"

    invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_27
    .catchall {:try_start_1b .. :try_end_27} :catchall_32

    if-eqz v1, :cond_19

    :try_start_29
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d

    goto :goto_19

    :catch_2d
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    :catchall_32
    move-exception v3

    :goto_33
    if-eqz v1, :cond_38

    :try_start_35
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_38
    .catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39

    :cond_38
    :goto_38
    throw v3

    :catch_39
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_38

    :catch_3e
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_42
    move-object v1, v2

    goto :goto_19

    :catchall_44
    move-exception v3

    move-object v1, v2

    goto :goto_33

    :catch_47
    move-exception v0

    move-object v1, v2

    goto :goto_1b
.end method

.method protected toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
    .registers 2

    return-object p0
.end method

.method protected toExtraMediaString()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ""

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imageData:[B

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    iget-object v0, p0, Lcom/sina/weibo/sdk/api/ImageObject;->imagePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
