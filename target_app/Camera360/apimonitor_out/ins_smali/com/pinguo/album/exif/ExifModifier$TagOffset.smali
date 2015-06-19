.class  Lcom/pinguo/album/exif/ExifModifier$TagOffset;
.super Ljava/lang/Object;
.source "ExifModifier.java"
.field final mOffset:I
.field final mTag:Lcom/pinguo/album/exif/ExifTag;
.method constructor <init>(Lcom/pinguo/album/exif/ExifTag;I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/exif/ExifModifier$TagOffset;->mTag:Lcom/pinguo/album/exif/ExifTag;
iput p2, p0, Lcom/pinguo/album/exif/ExifModifier$TagOffset;->mOffset:I
return-void
.end method