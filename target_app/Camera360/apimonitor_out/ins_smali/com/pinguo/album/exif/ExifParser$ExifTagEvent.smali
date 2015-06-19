.class  Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"
.field  isRequested:Z
.field  tag:Lcom/pinguo/album/exif/ExifTag;
.method constructor <init>(Lcom/pinguo/album/exif/ExifTag;Z)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;->tag:Lcom/pinguo/album/exif/ExifTag;
iput-boolean p2, p0, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;->isRequested:Z
return-void
.end method