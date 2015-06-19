.class  Lcom/pinguo/album/exif/ExifReader;
.super Ljava/lang/Object;
.source "ExifReader.java"
.field private static final TAG:Ljava/lang/String; = "ExifReader"
.field private final mInterface:Lcom/pinguo/album/exif/ExifInterface;
.method constructor <init>(Lcom/pinguo/album/exif/ExifInterface;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/pinguo/album/exif/ExifReader;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
return-void
.end method
.method protected read(Ljava/io/InputStream;)Lcom/pinguo/album/exif/ExifData;
.registers 9
iget-object v5, p0, Lcom/pinguo/album/exif/ExifReader;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
invoke-static {p1, v5}, Lcom/pinguo/album/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/pinguo/album/exif/ExifInterface;)Lcom/pinguo/album/exif/ExifParser;
move-result-object v3
new-instance v2, Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;
move-result-object v5
invoke-direct {v2, v5}, Lcom/pinguo/album/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V
const/4 v4, 0x0
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->next()I
move-result v1
:goto_14
const/4 v5, 0x5
if-ne v1, v5, :cond_18
return-object v2
:cond_18
packed-switch v1, :pswitch_data_9c
:goto_1b
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->next()I
move-result v1
goto :goto_14
:pswitch_20
new-instance v5, Lcom/pinguo/album/exif/IfdData;
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->getCurrentIfd()I
move-result v6
invoke-direct {v5, v6}, Lcom/pinguo/album/exif/IfdData;-><init>(I)V
invoke-virtual {v2, v5}, Lcom/pinguo/album/exif/ExifData;->addIfdData(Lcom/pinguo/album/exif/IfdData;)V
goto :goto_1b
:pswitch_2d
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->getTag()Lcom/pinguo/album/exif/ExifTag;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/album/exif/ExifTag;->hasValue()Z
move-result v5
if-nez v5, :cond_3b
invoke-virtual {v3, v4}, Lcom/pinguo/album/exif/ExifParser;->registerForTagValue(Lcom/pinguo/album/exif/ExifTag;)V
goto :goto_1b
:cond_3b
invoke-virtual {v4}, Lcom/pinguo/album/exif/ExifTag;->getIfd()I
move-result v5
invoke-virtual {v2, v5}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v5
invoke-virtual {v5, v4}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
goto :goto_1b
:pswitch_47
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->getTag()Lcom/pinguo/album/exif/ExifTag;
move-result-object v4
invoke-virtual {v4}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v5
const/4 v6, 0x7
if-ne v5, v6, :cond_55
invoke-virtual {v3, v4}, Lcom/pinguo/album/exif/ExifParser;->readFullTagValue(Lcom/pinguo/album/exif/ExifTag;)V
:cond_55
invoke-virtual {v4}, Lcom/pinguo/album/exif/ExifTag;->getIfd()I
move-result v5
invoke-virtual {v2, v5}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v5
invoke-virtual {v5, v4}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
goto :goto_1b
:pswitch_61
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->getCompressedImageSize()I
move-result v5
new-array v0, v5, [B
array-length v5, v0
invoke-virtual {v3, v0}, Lcom/pinguo/album/exif/ExifParser;->read([B)I
move-result v6
if-ne v5, v6, :cond_72
invoke-virtual {v2, v0}, Lcom/pinguo/album/exif/ExifData;->setCompressedThumbnail([B)V
goto :goto_1b
:cond_72
const-string/jumbo v5, "ExifReader"
const-string/jumbo v6, "Failed to read the compressed thumbnail"
invoke-static {v5, v6}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
:pswitch_7c
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->getStripSize()I
move-result v5
new-array v0, v5, [B
array-length v5, v0
invoke-virtual {v3, v0}, Lcom/pinguo/album/exif/ExifParser;->read([B)I
move-result v6
if-ne v5, v6, :cond_91
invoke-virtual {v3}, Lcom/pinguo/album/exif/ExifParser;->getStripIndex()I
move-result v5
invoke-virtual {v2, v5, v0}, Lcom/pinguo/album/exif/ExifData;->setStripBytes(I[B)V
goto :goto_1b
:cond_91
const-string/jumbo v5, "ExifReader"
const-string/jumbo v6, "Failed to read the strip bytes"
invoke-static {v5, v6}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_1b
nop
:pswitch_data_9c
.packed-switch 0x0
:pswitch_20
:pswitch_2d
:pswitch_47
:pswitch_61
:pswitch_7c
.end packed-switch
.end method