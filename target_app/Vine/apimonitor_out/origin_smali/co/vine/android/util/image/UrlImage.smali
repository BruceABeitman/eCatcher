.class public Lco/vine/android/util/image/UrlImage;
.super Lco/vine/android/util/UrlResource;
.source "UrlImage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/util/UrlResource",
        "<",
        "Lco/vine/android/util/image/ImageUtils$BitmapInfo;",
        ">;"
    }
.end annotation


# instance fields
.field public bitmap:Landroid/graphics/Bitmap;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lco/vine/android/util/image/ImageUtils$BitmapInfo;)V
    .registers 4

    invoke-direct {p0, p1}, Lco/vine/android/util/UrlResource;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lco/vine/android/util/image/UrlImage;->value:Ljava/lang/Object;

    if-eqz p2, :cond_b

    iget-object v0, p2, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    :cond_b
    return-void
.end method


# virtual methods
.method public originalSize()I
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/image/UrlImage;->value:Ljava/lang/Object;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lco/vine/android/util/image/UrlImage;->value:Ljava/lang/Object;

    check-cast v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget v1, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origWidth:I

    iget-object v0, p0, Lco/vine/android/util/image/UrlImage;->value:Ljava/lang/Object;

    check-cast v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;

    iget v0, v0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origHeight:I

    mul-int/2addr v0, v1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method

.method public size()I
    .registers 3

    iget-object v0, p0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getRowBytes()I

    move-result v0

    iget-object v1, p0, Lco/vine/android/util/image/UrlImage;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    mul-int/2addr v0, v1

    :goto_11
    return v0

    :cond_12
    const/4 v0, 0x0

    goto :goto_11
.end method
