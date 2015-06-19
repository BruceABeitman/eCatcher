.class public Lco/vine/android/util/image/ImageUtils$BitmapInfo;
.super Ljava/lang/Object;
.source "ImageUtils.java"
.field public final bitmap:Landroid/graphics/Bitmap;
.field public final origHeight:I
.field public final origWidth:I
.field public final scale:I
.method public constructor <init>(Landroid/graphics/Bitmap;III)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->bitmap:Landroid/graphics/Bitmap;
iput p2, p0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->scale:I
iput p3, p0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origWidth:I
iput p4, p0, Lco/vine/android/util/image/ImageUtils$BitmapInfo;->origHeight:I
return-void
.end method