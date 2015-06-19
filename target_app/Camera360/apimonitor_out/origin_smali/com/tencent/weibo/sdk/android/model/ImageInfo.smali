.class public Lcom/tencent/weibo/sdk/android/model/ImageInfo;
.super Lcom/tencent/weibo/sdk/android/model/BaseVO;
.source "ImageInfo.java"


# static fields
.field private static final serialVersionUID:J = 0x24bcac05e58a47acL


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private imageName:Ljava/lang/String;

.field private imagePath:Ljava/lang/String;

.field private playPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/weibo/sdk/android/model/BaseVO;-><init>()V

    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->imageName:Ljava/lang/String;

    return-object v0
.end method

.method public getImagePath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->imagePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPlayPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->playPath:Ljava/lang/String;

    return-object v0
.end method

.method public setDrawable(Landroid/graphics/drawable/Drawable;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->drawable:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setImageName(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->imageName:Ljava/lang/String;

    return-void
.end method

.method public setImagePath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->imagePath:Ljava/lang/String;

    return-void
.end method

.method public setPlayPath(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/weibo/sdk/android/model/ImageInfo;->playPath:Ljava/lang/String;

    return-void
.end method
