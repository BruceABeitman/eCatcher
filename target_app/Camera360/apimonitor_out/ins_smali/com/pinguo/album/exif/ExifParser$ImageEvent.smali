.class  Lcom/pinguo/album/exif/ExifParser$ImageEvent;
.super Ljava/lang/Object;
.source "ExifParser.java"
.field  stripIndex:I
.field  type:I
.method constructor <init>(I)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/exif/ExifParser$ImageEvent;->stripIndex:I
iput p1, p0, Lcom/pinguo/album/exif/ExifParser$ImageEvent;->type:I
return-void
.end method
.method constructor <init>(II)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/pinguo/album/exif/ExifParser$ImageEvent;->type:I
iput p2, p0, Lcom/pinguo/album/exif/ExifParser$ImageEvent;->stripIndex:I
return-void
.end method