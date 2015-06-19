.class  Lcom/pinguo/album/exif/ExifOutputStream;
.super Ljava/io/FilterOutputStream;
.source "ExifOutputStream.java"
.field private static final DEBUG:Z = false
.field private static final EXIF_HEADER:I = 0x45786966
.field private static final MAX_EXIF_SIZE:I = 0xffff
.field private static final STATE_FRAME_HEADER:I = 0x1
.field private static final STATE_JPEG_DATA:I = 0x2
.field private static final STATE_SOI:I = 0x0
.field private static final STREAMBUFFER_SIZE:I = 0x10000
.field private static final TAG:Ljava/lang/String; = "ExifOutputStream"
.field private static final TAG_SIZE:S = 0xcs
.field private static final TIFF_BIG_ENDIAN:S = 0x4d4ds
.field private static final TIFF_HEADER:S = 0x2as
.field private static final TIFF_HEADER_SIZE:S = 0x8s
.field private static final TIFF_LITTLE_ENDIAN:S = 0x4949s
.field private mBuffer:Ljava/nio/ByteBuffer;
.field private mByteToCopy:I
.field private mByteToSkip:I
.field private mExifData:Lcom/pinguo/album/exif/ExifData;
.field private final mInterface:Lcom/pinguo/album/exif/ExifInterface;
.field private mSingleByteArray:[B
.field private mState:I
.method protected constructor <init>(Ljava/io/OutputStream;Lcom/pinguo/album/exif/ExifInterface;)V
.registers 5
new-instance v0, Ljava/io/BufferedOutputStream;
const/high16 v1, 0x1
invoke-direct {v0, p1, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
invoke-direct {p0, v0}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mState:I
const/4 v0, 0x1
new-array v0, v0, [B
iput-object v0, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mSingleByteArray:[B
const/4 v0, 0x4
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
iput-object p2, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
return-void
.end method
.method private calculateAllOffset()I
.registers 12
const/16 v6, 0x8
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v10, 0x0
invoke-virtual {v9, v10}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v3
invoke-direct {p0, v3, v6}, Lcom/pinguo/album/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/pinguo/album/exif/IfdData;I)I
move-result v6
sget v9, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_IFD:I
invoke-static {v9}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v9
invoke-virtual {v3, v9}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v9
invoke-virtual {v9, v6}, Lcom/pinguo/album/exif/ExifTag;->setValue(I)Z
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v10, 0x2
invoke-virtual {v9, v10}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v0
invoke-direct {p0, v0, v6}, Lcom/pinguo/album/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/pinguo/album/exif/IfdData;I)I
move-result v6
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v10, 0x3
invoke-virtual {v9, v10}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v5
if-eqz v5, :cond_3f
sget v9, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I
invoke-static {v9}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v9
invoke-virtual {v0, v9}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v9
invoke-virtual {v9, v6}, Lcom/pinguo/album/exif/ExifTag;->setValue(I)Z
invoke-direct {p0, v5, v6}, Lcom/pinguo/album/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/pinguo/album/exif/IfdData;I)I
move-result v6
:cond_3f
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v10, 0x4
invoke-virtual {v9, v10}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v1
if-eqz v1, :cond_59
sget v9, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IFD:I
invoke-static {v9}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v9
invoke-virtual {v3, v9}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v9
invoke-virtual {v9, v6}, Lcom/pinguo/album/exif/ExifTag;->setValue(I)Z
invoke-direct {p0, v1, v6}, Lcom/pinguo/album/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/pinguo/album/exif/IfdData;I)I
move-result v6
:cond_59
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v10, 0x1
invoke-virtual {v9, v10}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v4
if-eqz v4, :cond_69
invoke-virtual {v3, v6}, Lcom/pinguo/album/exif/IfdData;->setOffsetToNextIfd(I)V
invoke-direct {p0, v4, v6}, Lcom/pinguo/album/exif/ExifOutputStream;->calculateOffsetOfIfd(Lcom/pinguo/album/exif/IfdData;I)I
move-result v6
:cond_69
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifData;->hasCompressedThumbnail()Z
move-result v9
if-eqz v9, :cond_87
sget v9, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I
invoke-static {v9}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v9
invoke-virtual {v4, v9}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v9
invoke-virtual {v9, v6}, Lcom/pinguo/album/exif/ExifTag;->setValue(I)Z
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifData;->getCompressedThumbnail()[B
move-result-object v9
array-length v9, v9
add-int/2addr v6, v9
:cond_86
:goto_86
return v6
:cond_87
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifData;->hasUncompressedStrip()Z
move-result v9
if-eqz v9, :cond_86
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifData;->getStripCount()I
move-result v8
new-array v7, v8, [J
const/4 v2, 0x0
:goto_98
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifData;->getStripCount()I
move-result v9
if-lt v2, v9, :cond_ae
sget v9, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I
invoke-static {v9}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v9
invoke-virtual {v4, v9}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v9
invoke-virtual {v9, v7}, Lcom/pinguo/album/exif/ExifTag;->setValue([J)Z
goto :goto_86
:cond_ae
int-to-long v9, v6
aput-wide v9, v7, v2
iget-object v9, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v9, v2}, Lcom/pinguo/album/exif/ExifData;->getStrip(I)[B
move-result-object v9
array-length v9, v9
add-int/2addr v6, v9
add-int/lit8 v2, v2, 0x1
goto :goto_98
.end method
.method private calculateOffsetOfIfd(Lcom/pinguo/album/exif/IfdData;I)I
.registers 9
invoke-virtual {p1}, Lcom/pinguo/album/exif/IfdData;->getTagCount()I
move-result v2
mul-int/lit8 v2, v2, 0xc
add-int/lit8 v2, v2, 0x2
add-int/lit8 v2, v2, 0x4
add-int/2addr p2, v2
invoke-virtual {p1}, Lcom/pinguo/album/exif/IfdData;->getAllTags()[Lcom/pinguo/album/exif/ExifTag;
move-result-object v1
array-length v3, v1
const/4 v2, 0x0
:goto_11
if-lt v2, v3, :cond_14
return p2
:cond_14
aget-object v0, v1, v2
invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getDataSize()I
move-result v4
const/4 v5, 0x4
if-le v4, v5, :cond_25
invoke-virtual {v0, p2}, Lcom/pinguo/album/exif/ExifTag;->setOffset(I)V
invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getDataSize()I
move-result v4
add-int/2addr p2, v4
:cond_25
add-int/lit8 v2, v2, 0x1
goto :goto_11
.end method
.method private createRequiredIfdAndTag()V
.registers 18
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v15, 0x0
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v6
if-nez v6, :cond_18
new-instance v6, Lcom/pinguo/album/exif/IfdData;
const/4 v14, 0x0
invoke-direct {v6, v14}, Lcom/pinguo/album/exif/IfdData;-><init>(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14, v6}, Lcom/pinguo/album/exif/ExifData;->addIfdData(Lcom/pinguo/album/exif/IfdData;)V
:cond_18
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
sget v15, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_IFD:I
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifInterface;->buildUninitializedTag(I)Lcom/pinguo/album/exif/ExifTag;
move-result-object v2
if-nez v2, :cond_3c
new-instance v14, Ljava/io/IOException;
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "No definition for crucial exif tag: "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v16, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_IFD:I
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v14
:cond_3c
invoke-virtual {v6, v2}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v15, 0x2
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v1
if-nez v1, :cond_57
new-instance v1, Lcom/pinguo/album/exif/IfdData;
const/4 v14, 0x2
invoke-direct {v1, v14}, Lcom/pinguo/album/exif/IfdData;-><init>(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14, v1}, Lcom/pinguo/album/exif/ExifData;->addIfdData(Lcom/pinguo/album/exif/IfdData;)V
:cond_57
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v15, 0x4
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v3
if-eqz v3, :cond_89
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
sget v15, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IFD:I
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifInterface;->buildUninitializedTag(I)Lcom/pinguo/album/exif/ExifTag;
move-result-object v4
if-nez v4, :cond_86
new-instance v14, Ljava/io/IOException;
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "No definition for crucial exif tag: "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v16, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IFD:I
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v14
:cond_86
invoke-virtual {v6, v4}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
:cond_89
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v15, 0x3
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v8
if-eqz v8, :cond_bb
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
sget v15, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifInterface;->buildUninitializedTag(I)Lcom/pinguo/album/exif/ExifTag;
move-result-object v9
if-nez v9, :cond_b8
new-instance v14, Ljava/io/IOException;
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "No definition for crucial exif tag: "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v16, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v14
:cond_b8
invoke-virtual {v1, v9}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
:cond_bb
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v15, 0x1
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v7
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14}, Lcom/pinguo/album/exif/ExifData;->hasCompressedThumbnail()Z
move-result v14
if-eqz v14, :cond_14a
if-nez v7, :cond_dd
new-instance v7, Lcom/pinguo/album/exif/IfdData;
const/4 v14, 0x1
invoke-direct {v7, v14}, Lcom/pinguo/album/exif/IfdData;-><init>(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14, v7}, Lcom/pinguo/album/exif/ExifData;->addIfdData(Lcom/pinguo/album/exif/IfdData;)V
:cond_dd
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
sget v15, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifInterface;->buildUninitializedTag(I)Lcom/pinguo/album/exif/ExifTag;
move-result-object v12
if-nez v12, :cond_101
new-instance v14, Ljava/io/IOException;
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "No definition for crucial exif tag: "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v16, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v14
:cond_101
invoke-virtual {v7, v12}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
sget v15, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifInterface;->buildUninitializedTag(I)Lcom/pinguo/album/exif/ExifTag;
move-result-object v10
if-nez v10, :cond_128
new-instance v14, Ljava/io/IOException;
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "No definition for crucial exif tag: "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v16, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v14
:cond_128
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14}, Lcom/pinguo/album/exif/ExifData;->getCompressedThumbnail()[B
move-result-object v14
array-length v14, v14
invoke-virtual {v10, v14}, Lcom/pinguo/album/exif/ExifTag;->setValue(I)Z
invoke-virtual {v7, v10}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
sget v14, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I
invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v14
invoke-virtual {v7, v14}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
sget v14, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I
invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v14
invoke-virtual {v7, v14}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
:goto_149
:cond_149
return-void
:cond_14a
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14}, Lcom/pinguo/album/exif/ExifData;->hasUncompressedStrip()Z
move-result v14
if-eqz v14, :cond_1ec
if-nez v7, :cond_163
new-instance v7, Lcom/pinguo/album/exif/IfdData;
const/4 v14, 0x1
invoke-direct {v7, v14}, Lcom/pinguo/album/exif/IfdData;-><init>(I)V
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14, v7}, Lcom/pinguo/album/exif/ExifData;->addIfdData(Lcom/pinguo/album/exif/IfdData;)V
:cond_163
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14}, Lcom/pinguo/album/exif/ExifData;->getStripCount()I
move-result v13
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
sget v15, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifInterface;->buildUninitializedTag(I)Lcom/pinguo/album/exif/ExifTag;
move-result-object v12
if-nez v12, :cond_18f
new-instance v14, Ljava/io/IOException;
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "No definition for crucial exif tag: "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v16, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v14
:cond_18f
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
sget v15, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I
invoke-virtual {v14, v15}, Lcom/pinguo/album/exif/ExifInterface;->buildUninitializedTag(I)Lcom/pinguo/album/exif/ExifTag;
move-result-object v10
if-nez v10, :cond_1b3
new-instance v14, Ljava/io/IOException;
new-instance v15, Ljava/lang/StringBuilder;
const-string/jumbo v16, "No definition for crucial exif tag: "
invoke-direct/range {v15 .. v16}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v16, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I
invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v15
invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v15
invoke-direct {v14, v15}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v14
:cond_1b3
new-array v11, v13, [J
const/4 v5, 0x0
:goto_1b6
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14}, Lcom/pinguo/album/exif/ExifData;->getStripCount()I
move-result v14
if-lt v5, v14, :cond_1dd
invoke-virtual {v10, v11}, Lcom/pinguo/album/exif/ExifTag;->setValue([J)Z
invoke-virtual {v7, v12}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
invoke-virtual {v7, v10}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
sget v14, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I
invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v14
invoke-virtual {v7, v14}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
sget v14, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I
invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v14
invoke-virtual {v7, v14}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
goto/16 :goto_149
:cond_1dd
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v14, v5}, Lcom/pinguo/album/exif/ExifData;->getStrip(I)[B
move-result-object v14
array-length v14, v14
int-to-long v14, v14
aput-wide v14, v11, v5
add-int/lit8 v5, v5, 0x1
goto :goto_1b6
:cond_1ec
if-eqz v7, :cond_149
sget v14, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I
invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v14
invoke-virtual {v7, v14}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
sget v14, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I
invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v14
invoke-virtual {v7, v14}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
sget v14, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I
invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v14
invoke-virtual {v7, v14}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
sget v14, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I
invoke-static {v14}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v14
invoke-virtual {v7, v14}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
goto/16 :goto_149
.end method
.method private requestByteToBuffer(I[BII)I
.registers 8
iget-object v2, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I
move-result v2
sub-int v0, p1, v2
if-le p4, v0, :cond_11
move v1, v0
:goto_b
iget-object v2, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v2, p2, p3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
return v1
:cond_11
move v1, p4
goto :goto_b
.end method
.method private stripNullValueTags(Lcom/pinguo/album/exif/ExifData;)Ljava/util/ArrayList;
.registers 7
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifData;->getAllTags()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_d
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-nez v3, :cond_14
return-object v0
:cond_14
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/pinguo/album/exif/ExifTag;
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifTag;->getValue()Ljava/lang/Object;
move-result-object v3
if-nez v3, :cond_d
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S
move-result v3
invoke-static {v3}, Lcom/pinguo/album/exif/ExifInterface;->isOffsetTag(S)Z
move-result v3
if-nez v3, :cond_d
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S
move-result v3
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifTag;->getIfd()I
move-result v4
invoke-virtual {p1, v3, v4}, Lcom/pinguo/album/exif/ExifData;->removeTag(SI)V
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d
.end method
.method private writeAllTags(Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
.registers 8
const/4 v5, 0x1
iget-object v3, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v3
invoke-direct {p0, v3, p1}, Lcom/pinguo/album/exif/ExifOutputStream;->writeIfd(Lcom/pinguo/album/exif/IfdData;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
iget-object v3, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v4, 0x2
invoke-virtual {v3, v4}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v3
invoke-direct {p0, v3, p1}, Lcom/pinguo/album/exif/ExifOutputStream;->writeIfd(Lcom/pinguo/album/exif/IfdData;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
iget-object v3, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v4, 0x3
invoke-virtual {v3, v4}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v2
if-eqz v2, :cond_21
invoke-direct {p0, v2, p1}, Lcom/pinguo/album/exif/ExifOutputStream;->writeIfd(Lcom/pinguo/album/exif/IfdData;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
:cond_21
iget-object v3, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
const/4 v4, 0x4
invoke-virtual {v3, v4}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v0
if-eqz v0, :cond_2d
invoke-direct {p0, v0, p1}, Lcom/pinguo/album/exif/ExifOutputStream;->writeIfd(Lcom/pinguo/album/exif/IfdData;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
:cond_2d
iget-object v3, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v3, v5}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v1
if-eqz v1, :cond_3e
iget-object v3, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v3, v5}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v3
invoke-direct {p0, v3, p1}, Lcom/pinguo/album/exif/ExifOutputStream;->writeIfd(Lcom/pinguo/album/exif/IfdData;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
:cond_3e
return-void
.end method
.method private writeExifData()V
.registers 7
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
if-nez v4, :cond_5
:cond_4
return-void
:cond_5
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-direct {p0, v4}, Lcom/pinguo/album/exif/ExifOutputStream;->stripNullValueTags(Lcom/pinguo/album/exif/ExifData;)Ljava/util/ArrayList;
move-result-object v2
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifOutputStream;->createRequiredIfdAndTag()V
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifOutputStream;->calculateAllOffset()I
move-result v1
add-int/lit8 v4, v1, 0x8
const v5, 0xffff
if-le v4, v5, :cond_22
new-instance v4, Ljava/io/IOException;
const-string/jumbo v5, "Exif header is too large (>64Kb)"
invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
:cond_22
new-instance v0, Lcom/pinguo/album/exif/OrderedDataOutputStream;
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->out:Ljava/io/OutputStream;
invoke-direct {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;-><init>(Ljava/io/OutputStream;)V
sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/pinguo/album/exif/OrderedDataOutputStream;
const/16 v4, -0x1f
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
add-int/lit8 v4, v1, 0x8
int-to-short v4, v4
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
const v4, 0x45786966
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
const/4 v4, 0x0
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v4}, Lcom/pinguo/album/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;
move-result-object v4
sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
if-ne v4, v5, :cond_81
const/16 v4, 0x4d4d
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
:goto_52
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v4}, Lcom/pinguo/album/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)Lcom/pinguo/album/exif/OrderedDataOutputStream;
const/16 v4, 0x2a
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
const/16 v4, 0x8
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
invoke-direct {p0, v0}, Lcom/pinguo/album/exif/ExifOutputStream;->writeAllTags(Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
invoke-direct {p0, v0}, Lcom/pinguo/album/exif/ExifOutputStream;->writeThumbnail(Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v4
:goto_6f
invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z
move-result v5
if-eqz v5, :cond_4
invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/pinguo/album/exif/ExifTag;
iget-object v5, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v5, v3}, Lcom/pinguo/album/exif/ExifData;->addTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
goto :goto_6f
:cond_81
const/16 v4, 0x4949
invoke-virtual {v0, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
goto :goto_52
.end method
.method private writeIfd(Lcom/pinguo/album/exif/IfdData;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
.registers 12
const/4 v8, 0x4
const/4 v4, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/exif/IfdData;->getAllTags()[Lcom/pinguo/album/exif/ExifTag;
move-result-object v3
array-length v5, v3
int-to-short v5, v5
invoke-virtual {p2, v5}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
array-length v6, v3
move v5, v4
:goto_d
if-lt v5, v6, :cond_1a
invoke-virtual {p1}, Lcom/pinguo/album/exif/IfdData;->getOffsetToNextIfd()I
move-result v5
invoke-virtual {p2, v5}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
array-length v5, v3
:goto_17
if-lt v4, v5, :cond_53
return-void
:cond_1a
aget-object v2, v3, v5
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S
move-result v7
invoke-virtual {p2, v7}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v7
invoke-virtual {p2, v7}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v7
invoke-virtual {p2, v7}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifTag;->getDataSize()I
move-result v7
if-le v7, v8, :cond_41
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifTag;->getOffset()I
move-result v7
invoke-virtual {p2, v7}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
:cond_3e
add-int/lit8 v5, v5, 0x1
goto :goto_d
:cond_41
invoke-static {v2, p2}, Lcom/pinguo/album/exif/ExifOutputStream;->writeTagValue(Lcom/pinguo/album/exif/ExifTag;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
const/4 v0, 0x0
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifTag;->getDataSize()I
move-result v7
rsub-int/lit8 v1, v7, 0x4
:goto_4b
if-ge v0, v1, :cond_3e
invoke-virtual {p2, v4}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->write(I)V
add-int/lit8 v0, v0, 0x1
goto :goto_4b
:cond_53
aget-object v2, v3, v4
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifTag;->getDataSize()I
move-result v6
if-le v6, v8, :cond_5e
invoke-static {v2, p2}, Lcom/pinguo/album/exif/ExifOutputStream;->writeTagValue(Lcom/pinguo/album/exif/ExifTag;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
:cond_5e
add-int/lit8 v4, v4, 0x1
goto :goto_17
.end method
.method static writeTagValue(Lcom/pinguo/album/exif/ExifTag;Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
.registers 8
const/4 v5, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v3
packed-switch v3, :pswitch_data_68
:pswitch_8
:goto_8
:cond_8
return-void
:pswitch_9
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getStringByte()[B
move-result-object v0
array-length v3, v0
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v4
if-ne v3, v4, :cond_1d
array-length v3, v0
add-int/lit8 v3, v3, -0x1
aput-byte v5, v0, v3
invoke-virtual {p1, v0}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->write([B)V
goto :goto_8
:cond_1d
invoke-virtual {p1, v0}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->write([B)V
invoke-virtual {p1, v5}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->write(I)V
goto :goto_8
:pswitch_24
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v2
:goto_29
if-ge v1, v2, :cond_8
invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v3
long-to-int v3, v3
invoke-virtual {p1, v3}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeInt(I)Lcom/pinguo/album/exif/OrderedDataOutputStream;
add-int/lit8 v1, v1, 0x1
goto :goto_29
:pswitch_36
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v2
:goto_3b
if-ge v1, v2, :cond_8
invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->getRational(I)Lcom/pinguo/album/exif/Rational;
move-result-object v3
invoke-virtual {p1, v3}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeRational(Lcom/pinguo/album/exif/Rational;)Lcom/pinguo/album/exif/OrderedDataOutputStream;
add-int/lit8 v1, v1, 0x1
goto :goto_3b
:pswitch_47
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v3
new-array v0, v3, [B
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifTag;->getBytes([B)V
invoke-virtual {p1, v0}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->write([B)V
goto :goto_8
:pswitch_54
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v2
:goto_59
if-ge v1, v2, :cond_8
invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v3
long-to-int v3, v3
int-to-short v3, v3
invoke-virtual {p1, v3}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->writeShort(S)Lcom/pinguo/album/exif/OrderedDataOutputStream;
add-int/lit8 v1, v1, 0x1
goto :goto_59
nop
:pswitch_data_68
.packed-switch 0x1
:pswitch_47
:pswitch_9
:pswitch_54
:pswitch_24
:pswitch_36
:pswitch_8
:pswitch_47
:pswitch_8
:pswitch_24
:pswitch_36
.end packed-switch
.end method
.method private writeThumbnail(Lcom/pinguo/album/exif/OrderedDataOutputStream;)V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifData;->hasCompressedThumbnail()Z
move-result v1
if-eqz v1, :cond_12
iget-object v1, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifData;->getCompressedThumbnail()[B
move-result-object v1
invoke-virtual {p1, v1}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->write([B)V
:cond_11
return-void
:cond_12
iget-object v1, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifData;->hasUncompressedStrip()Z
move-result v1
if-eqz v1, :cond_11
const/4 v0, 0x0
:goto_1b
iget-object v1, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifData;->getStripCount()I
move-result v1
if-ge v0, v1, :cond_11
iget-object v1, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v1, v0}, Lcom/pinguo/album/exif/ExifData;->getStrip(I)[B
move-result-object v1
invoke-virtual {p1, v1}, Lcom/pinguo/album/exif/OrderedDataOutputStream;->write([B)V
add-int/lit8 v0, v0, 0x1
goto :goto_1b
.end method
.method protected getExifData()Lcom/pinguo/album/exif/ExifData;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
return-object v0
.end method
.method protected setExifData(Lcom/pinguo/album/exif/ExifData;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mExifData:Lcom/pinguo/album/exif/ExifData;
return-void
.end method
.method public write(I)V
.registers 5
iget-object v0, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mSingleByteArray:[B
const/4 v1, 0x0
and-int/lit16 v2, p1, 0xff
int-to-byte v2, v2
aput-byte v2, v0, v1
iget-object v0, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mSingleByteArray:[B
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifOutputStream;->write([B)V
return-void
.end method
.method public write([B)V
.registers 4
const/4 v0, 0x0
array-length v1, p1
invoke-virtual {p0, p1, v0, v1}, Lcom/pinguo/album/exif/ExifOutputStream;->write([BII)V
return-void
.end method
.method public write([BII)V
.registers 14
const v9, 0xffff
const/4 v8, 0x4
const/4 v7, 0x0
const/4 v6, 0x2
:goto_6
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToSkip:I
if-gtz v4, :cond_12
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToCopy:I
if-gtz v4, :cond_12
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mState:I
if-eq v4, v6, :cond_14
:cond_12
if-gtz p3, :cond_1c
:cond_14
if-lez p3, :cond_1b
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v4, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
:cond_1b
return-void
:cond_1c
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToSkip:I
if-lez v4, :cond_2d
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToSkip:I
if-le p3, v4, :cond_71
iget v1, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToSkip:I
:goto_26
sub-int/2addr p3, v1
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToSkip:I
sub-int/2addr v4, v1
iput v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToSkip:I
add-int/2addr p2, v1
:cond_2d
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToCopy:I
if-lez v4, :cond_43
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToCopy:I
if-le p3, v4, :cond_73
iget v1, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToCopy:I
:goto_37
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v4, p1, p2, v1}, Ljava/io/OutputStream;->write([BII)V
sub-int/2addr p3, v1
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToCopy:I
sub-int/2addr v4, v1
iput v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToCopy:I
add-int/2addr p2, v1
:cond_43
if-eqz p3, :cond_1b
iget v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mState:I
packed-switch v4, :pswitch_data_10c
goto :goto_6
:pswitch_4b
invoke-direct {p0, v6, p1, p2, p3}, Lcom/pinguo/album/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I
move-result v0
add-int/2addr p2, v0
sub-int/2addr p3, v0
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I
move-result v4
if-lt v4, v6, :cond_1b
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S
move-result v4
const/16 v5, -0x28
if-eq v4, v5, :cond_75
new-instance v4, Ljava/io/IOException;
const-string/jumbo v5, "Not a valid jpeg image, cannot write exif"
invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v4
:cond_71
move v1, p3
goto :goto_26
:cond_73
move v1, p3
goto :goto_37
:cond_75
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->out:Ljava/io/OutputStream;
iget-object v5, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v5
invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
const/4 v4, 0x1
iput v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mState:I
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifOutputStream;->writeExifData()V
goto/16 :goto_6
:pswitch_8d
invoke-direct {p0, v8, p1, p2, p3}, Lcom/pinguo/album/exif/ExifOutputStream;->requestByteToBuffer(I[BII)I
move-result v0
add-int/2addr p2, v0
sub-int/2addr p3, v0
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I
move-result v4
if-ne v4, v6, :cond_b5
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S
move-result v3
const/16 v4, -0x27
if-ne v3, v4, :cond_b5
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->out:Ljava/io/OutputStream;
iget-object v5, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v5
invoke-virtual {v4, v5, v7, v6}, Ljava/io/OutputStream;->write([BII)V
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
:cond_b5
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I
move-result v4
if-lt v4, v8, :cond_1b
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S
move-result v2
const/16 v4, -0x1f
if-ne v2, v4, :cond_e0
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S
move-result v4
and-int/2addr v4, v9
add-int/lit8 v4, v4, -0x2
iput v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToSkip:I
iput v6, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mState:I
:goto_d9
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;
goto/16 :goto_6
:cond_e0
invoke-static {v2}, Lcom/pinguo/album/exif/JpegHeader;->isSofMarker(S)Z
move-result v4
if-nez v4, :cond_fd
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->out:Ljava/io/OutputStream;
iget-object v5, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v5
invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getShort()S
move-result v4
and-int/2addr v4, v9
add-int/lit8 v4, v4, -0x2
iput v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mByteToCopy:I
goto :goto_d9
:cond_fd
iget-object v4, p0, Lcom/pinguo/album/exif/ExifOutputStream;->out:Ljava/io/OutputStream;
iget-object v5, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v5}, Ljava/nio/ByteBuffer;->array()[B
move-result-object v5
invoke-virtual {v4, v5, v7, v8}, Ljava/io/OutputStream;->write([BII)V
iput v6, p0, Lcom/pinguo/album/exif/ExifOutputStream;->mState:I
goto :goto_d9
nop
:pswitch_data_10c
.packed-switch 0x0
:pswitch_4b
:pswitch_8d
.end packed-switch
.end method