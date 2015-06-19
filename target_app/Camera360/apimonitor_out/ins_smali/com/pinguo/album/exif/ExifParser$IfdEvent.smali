.class  Lcom/pinguo/album/exif/ExifParser$IfdEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"
.field  ifd:I
.field  isRequested:Z
.method constructor <init>(IZ)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/pinguo/album/exif/ExifParser$IfdEvent;->ifd:I
iput-boolean p2, p0, Lcom/pinguo/album/exif/ExifParser$IfdEvent;->isRequested:Z
return-void
.end method