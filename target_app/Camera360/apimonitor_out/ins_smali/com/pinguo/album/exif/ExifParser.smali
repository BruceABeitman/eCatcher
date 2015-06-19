.class  Lcom/pinguo/album/exif/ExifParser;
.super Ljava/lang/Object;
.source "ExifParser.java"
.field protected static final BIG_ENDIAN_TAG:S = 0x4d4ds
.field protected static final DEFAULT_IFD0_OFFSET:I = 0x8
.field public static final EVENT_COMPRESSED_IMAGE:I = 0x3
.field public static final EVENT_END:I = 0x5
.field public static final EVENT_NEW_TAG:I = 0x1
.field public static final EVENT_START_OF_IFD:I = 0x0
.field public static final EVENT_UNCOMPRESSED_STRIP:I = 0x4
.field public static final EVENT_VALUE_OF_REGISTERED_TAG:I = 0x2
.field protected static final EXIF_HEADER:I = 0x45786966
.field protected static final EXIF_HEADER_TAIL:S = 0x0s
.field protected static final LITTLE_ENDIAN_TAG:S = 0x4949s
.field private static final LOGV:Z = false
.field protected static final OFFSET_SIZE:I = 0x2
.field public static final OPTION_IFD_0:I = 0x1
.field public static final OPTION_IFD_1:I = 0x2
.field public static final OPTION_IFD_EXIF:I = 0x4
.field public static final OPTION_IFD_GPS:I = 0x8
.field public static final OPTION_IFD_INTEROPERABILITY:I = 0x10
.field public static final OPTION_THUMBNAIL:I = 0x20
.field private static final TAG:Ljava/lang/String; = "ExifParser"
.field private static final TAG_EXIF_IFD:S = 0x0s
.field private static final TAG_GPS_IFD:S = 0x0s
.field private static final TAG_INTEROPERABILITY_IFD:S = 0x0s
.field private static final TAG_JPEG_INTERCHANGE_FORMAT:S = 0x0s
.field private static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S = 0x0s
.field protected static final TAG_SIZE:I = 0xc
.field private static final TAG_STRIP_BYTE_COUNTS:S = 0x0s
.field private static final TAG_STRIP_OFFSETS:S = 0x0s
.field protected static final TIFF_HEADER_TAIL:S = 0x2as
.field private static final US_ASCII:Ljava/nio/charset/Charset;
.field private mApp1End:I
.field private mContainExifData:Z
.field private final mCorrespondingEvent:Ljava/util/TreeMap;
.field private mDataAboveIfd0:[B
.field private mIfd0Position:I
.field private mIfdStartOffset:I
.field private mIfdType:I
.field private mImageEvent:Lcom/pinguo/album/exif/ExifParser$ImageEvent;
.field private final mInterface:Lcom/pinguo/album/exif/ExifInterface;
.field private mJpegSizeTag:Lcom/pinguo/album/exif/ExifTag;
.field private mNeedToParseOffsetsInCurrentIfd:Z
.field private mNumOfTagInIfd:I
.field private mOffsetToApp1EndFromSOF:I
.field private final mOptions:I
.field private mStripCount:I
.field private mStripSizeTag:Lcom/pinguo/album/exif/ExifTag;
.field private mTag:Lcom/pinguo/album/exif/ExifTag;
.field private mTiffStartPosition:I
.field private final mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "US-ASCII"
invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;
move-result-object v0
sput-object v0, Lcom/pinguo/album/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;
sget v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_IFD:I
invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v0
sput-short v0, Lcom/pinguo/album/exif/ExifParser;->TAG_EXIF_IFD:S
sget v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IFD:I
invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v0
sput-short v0, Lcom/pinguo/album/exif/ExifParser;->TAG_GPS_IFD:S
sget v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I
invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v0
sput-short v0, Lcom/pinguo/album/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S
sget v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I
invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v0
sput-short v0, Lcom/pinguo/album/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S
sget v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I
invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v0
sput-short v0, Lcom/pinguo/album/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S
sget v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I
invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v0
sput-short v0, Lcom/pinguo/album/exif/ExifParser;->TAG_STRIP_OFFSETS:S
sget v0, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I
invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v0
sput-short v0, Lcom/pinguo/album/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S
return-void
.end method
.method private constructor <init>(Ljava/io/InputStream;ILcom/pinguo/album/exif/ExifInterface;)V
.registers 9
const/4 v4, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v4, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdStartOffset:I
iput v4, p0, Lcom/pinguo/album/exif/ExifParser;->mNumOfTagInIfd:I
iput-boolean v4, p0, Lcom/pinguo/album/exif/ExifParser;->mContainExifData:Z
iput v4, p0, Lcom/pinguo/album/exif/ExifParser;->mOffsetToApp1EndFromSOF:I
new-instance v2, Ljava/util/TreeMap;
invoke-direct {v2}, Ljava/util/TreeMap;-><init>()V
iput-object v2, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
if-nez p1, :cond_1e
new-instance v2, Ljava/io/IOException;
const-string/jumbo v3, "Null argument inputStream to ExifParser"
invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v2
:cond_1e
iput-object p3, p0, Lcom/pinguo/album/exif/ExifParser;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
invoke-direct {p0, p1}, Lcom/pinguo/album/exif/ExifParser;->seekTiffData(Ljava/io/InputStream;)Z
move-result v2
iput-boolean v2, p0, Lcom/pinguo/album/exif/ExifParser;->mContainExifData:Z
new-instance v2, Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-direct {v2, p1}, Lcom/pinguo/album/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V
iput-object v2, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
iput p2, p0, Lcom/pinguo/album/exif/ExifParser;->mOptions:I
iget-boolean v2, p0, Lcom/pinguo/album/exif/ExifParser;->mContainExifData:Z
if-nez v2, :cond_34
:goto_33
:cond_33
return-void
:cond_34
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->parseTiffHeader()V
iget-object v2, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v2}, Lcom/pinguo/album/exif/CountedDataInputStream;->readUnsignedInt()J
move-result-wide v0
const-wide/32 v2, 0x7fffffff
cmp-long v2, v0, v2
if-lez v2, :cond_5a
new-instance v2, Lcom/pinguo/album/exif/ExifInvalidFormatException;
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v4, "Invalid offset "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Lcom/pinguo/album/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V
throw v2
:cond_5a
long-to-int v2, v0
iput v2, p0, Lcom/pinguo/album/exif/ExifParser;->mIfd0Position:I
iput v4, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdType:I
invoke-direct {p0, v4}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v2
if-nez v2, :cond_6b
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z
move-result v2
if-eqz v2, :cond_33
:cond_6b
invoke-direct {p0, v4, v0, v1}, Lcom/pinguo/album/exif/ExifParser;->registerIfd(IJ)V
const-wide/16 v2, 0x8
cmp-long v2, v0, v2
if-eqz v2, :cond_33
long-to-int v2, v0
add-int/lit8 v2, v2, -0x8
new-array v2, v2, [B
iput-object v2, p0, Lcom/pinguo/album/exif/ExifParser;->mDataAboveIfd0:[B
iget-object v2, p0, Lcom/pinguo/album/exif/ExifParser;->mDataAboveIfd0:[B
invoke-virtual {p0, v2}, Lcom/pinguo/album/exif/ExifParser;->read([B)I
goto :goto_33
.end method
.method private checkAllowed(II)Z
.registers 5
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
invoke-virtual {v1}, Lcom/pinguo/album/exif/ExifInterface;->getTagInfo()Landroid/util/SparseIntArray;
move-result-object v1
invoke-virtual {v1, p2}, Landroid/util/SparseIntArray;->get(I)I
move-result v0
if-nez v0, :cond_e
const/4 v1, 0x0
:goto_d
return v1
:cond_e
invoke-static {v0, p1}, Lcom/pinguo/album/exif/ExifInterface;->isIfdAllowed(II)Z
move-result v1
goto :goto_d
.end method
.method private checkOffsetOrImageTag(Lcom/pinguo/album/exif/ExifTag;)V
.registers 11
const/4 v8, 0x4
const/4 v7, 0x2
const/4 v5, 0x3
const/4 v6, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v3
if-nez v3, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S
move-result v2
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getIfd()I
move-result v1
sget-short v3, Lcom/pinguo/album/exif/ExifParser;->TAG_EXIF_IFD:S
if-ne v2, v3, :cond_33
sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_EXIF_IFD:I
invoke-direct {p0, v1, v3}, Lcom/pinguo/album/exif/ExifParser;->checkAllowed(II)Z
move-result v3
if-eqz v3, :cond_33
invoke-direct {p0, v7}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v3
if-nez v3, :cond_2b
invoke-direct {p0, v5}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v3
if-eqz v3, :cond_a
:cond_2b
invoke-virtual {p1, v6}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v3
invoke-direct {p0, v7, v3, v4}, Lcom/pinguo/album/exif/ExifParser;->registerIfd(IJ)V
goto :goto_a
:cond_33
sget-short v3, Lcom/pinguo/album/exif/ExifParser;->TAG_GPS_IFD:S
if-ne v2, v3, :cond_4d
sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_GPS_IFD:I
invoke-direct {p0, v1, v3}, Lcom/pinguo/album/exif/ExifParser;->checkAllowed(II)Z
move-result v3
if-eqz v3, :cond_4d
invoke-direct {p0, v8}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v3
if-eqz v3, :cond_a
invoke-virtual {p1, v6}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v3
invoke-direct {p0, v8, v3, v4}, Lcom/pinguo/album/exif/ExifParser;->registerIfd(IJ)V
goto :goto_a
:cond_4d
sget-short v3, Lcom/pinguo/album/exif/ExifParser;->TAG_INTEROPERABILITY_IFD:S
if-ne v2, v3, :cond_67
sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_INTEROPERABILITY_IFD:I
invoke-direct {p0, v1, v3}, Lcom/pinguo/album/exif/ExifParser;->checkAllowed(II)Z
move-result v3
if-eqz v3, :cond_67
invoke-direct {p0, v5}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v3
if-eqz v3, :cond_a
invoke-virtual {p1, v6}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v3
invoke-direct {p0, v5, v3, v4}, Lcom/pinguo/album/exif/ExifParser;->registerIfd(IJ)V
goto :goto_a
:cond_67
sget-short v3, Lcom/pinguo/album/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT:S
if-ne v2, v3, :cond_81
sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT:I
invoke-direct {p0, v1, v3}, Lcom/pinguo/album/exif/ExifParser;->checkAllowed(II)Z
move-result v3
if-eqz v3, :cond_81
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->isThumbnailRequested()Z
move-result v3
if-eqz v3, :cond_a
invoke-virtual {p1, v6}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v3
invoke-direct {p0, v3, v4}, Lcom/pinguo/album/exif/ExifParser;->registerCompressedImage(J)V
goto :goto_a
:cond_81
sget-short v3, Lcom/pinguo/album/exif/ExifParser;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:S
if-ne v2, v3, :cond_97
sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:I
invoke-direct {p0, v1, v3}, Lcom/pinguo/album/exif/ExifParser;->checkAllowed(II)Z
move-result v3
if-eqz v3, :cond_97
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->isThumbnailRequested()Z
move-result v3
if-eqz v3, :cond_a
iput-object p1, p0, Lcom/pinguo/album/exif/ExifParser;->mJpegSizeTag:Lcom/pinguo/album/exif/ExifTag;
goto/16 :goto_a
:cond_97
sget-short v3, Lcom/pinguo/album/exif/ExifParser;->TAG_STRIP_OFFSETS:S
if-ne v2, v3, :cond_e2
sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_OFFSETS:I
invoke-direct {p0, v1, v3}, Lcom/pinguo/album/exif/ExifParser;->checkAllowed(II)Z
move-result v3
if-eqz v3, :cond_e2
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->isThumbnailRequested()Z
move-result v3
if-eqz v3, :cond_a
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->hasValue()Z
move-result v3
if-eqz v3, :cond_ce
const/4 v0, 0x0
:goto_b0
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v3
if-ge v0, v3, :cond_a
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v3
if-ne v3, v5, :cond_c6
invoke-virtual {p1, v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v3
invoke-direct {p0, v0, v3, v4}, Lcom/pinguo/album/exif/ExifParser;->registerUncompressedStrip(IJ)V
:goto_c3
add-int/lit8 v0, v0, 0x1
goto :goto_b0
:cond_c6
invoke-virtual {p1, v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v3
invoke-direct {p0, v0, v3, v4}, Lcom/pinguo/album/exif/ExifParser;->registerUncompressedStrip(IJ)V
goto :goto_c3
:cond_ce
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getOffset()I
move-result v4
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
new-instance v5, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;
invoke-direct {v5, p1, v6}, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;-><init>(Lcom/pinguo/album/exif/ExifTag;Z)V
invoke-virtual {v3, v4, v5}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto/16 :goto_a
:cond_e2
sget-short v3, Lcom/pinguo/album/exif/ExifParser;->TAG_STRIP_BYTE_COUNTS:S
if-ne v2, v3, :cond_a
sget v3, Lcom/pinguo/album/exif/ExifInterface;->TAG_STRIP_BYTE_COUNTS:I
invoke-direct {p0, v1, v3}, Lcom/pinguo/album/exif/ExifParser;->checkAllowed(II)Z
move-result v3
if-eqz v3, :cond_a
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->isThumbnailRequested()Z
move-result v3
if-eqz v3, :cond_a
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->hasValue()Z
move-result v3
if-eqz v3, :cond_a
iput-object p1, p0, Lcom/pinguo/album/exif/ExifParser;->mStripSizeTag:Lcom/pinguo/album/exif/ExifTag;
goto/16 :goto_a
.end method
.method private isIfdRequested(I)Z
.registers 5
const/4 v0, 0x1
const/4 v1, 0x0
packed-switch p1, :pswitch_data_30
move v0, v1
:goto_6
:cond_6
return v0
:pswitch_7
iget v2, p0, Lcom/pinguo/album/exif/ExifParser;->mOptions:I
and-int/lit8 v2, v2, 0x1
if-nez v2, :cond_6
move v0, v1
goto :goto_6
:pswitch_f
iget v2, p0, Lcom/pinguo/album/exif/ExifParser;->mOptions:I
and-int/lit8 v2, v2, 0x2
if-nez v2, :cond_6
move v0, v1
goto :goto_6
:pswitch_17
iget v2, p0, Lcom/pinguo/album/exif/ExifParser;->mOptions:I
and-int/lit8 v2, v2, 0x4
if-nez v2, :cond_6
move v0, v1
goto :goto_6
:pswitch_1f
iget v2, p0, Lcom/pinguo/album/exif/ExifParser;->mOptions:I
and-int/lit8 v2, v2, 0x8
if-nez v2, :cond_6
move v0, v1
goto :goto_6
:pswitch_27
iget v2, p0, Lcom/pinguo/album/exif/ExifParser;->mOptions:I
and-int/lit8 v2, v2, 0x10
if-nez v2, :cond_6
move v0, v1
goto :goto_6
nop
:pswitch_data_30
.packed-switch 0x0
:pswitch_7
:pswitch_f
:pswitch_17
:pswitch_27
:pswitch_1f
.end packed-switch
.end method
.method private isThumbnailRequested()Z
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifParser;->mOptions:I
and-int/lit8 v0, v0, 0x20
if-eqz v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method private needToParseOffsetsInCurrentIfd()Z
.registers 5
const/4 v3, 0x3
const/4 v1, 0x1
const/4 v0, 0x0
iget v2, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdType:I
packed-switch v2, :pswitch_data_30
:goto_8
:cond_8
return v0
:pswitch_9
const/4 v2, 0x2
invoke-direct {p0, v2}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v2
if-nez v2, :cond_23
const/4 v2, 0x4
invoke-direct {p0, v2}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v2
if-nez v2, :cond_23
invoke-direct {p0, v3}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v2
if-nez v2, :cond_23
invoke-direct {p0, v1}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v2
if-eqz v2, :cond_8
:cond_23
move v0, v1
goto :goto_8
:pswitch_25
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->isThumbnailRequested()Z
move-result v0
goto :goto_8
:pswitch_2a
invoke-direct {p0, v3}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v0
goto :goto_8
nop
:pswitch_data_30
.packed-switch 0x0
:pswitch_9
:pswitch_25
:pswitch_2a
.end packed-switch
.end method
.method protected static parse(Ljava/io/InputStream;ILcom/pinguo/album/exif/ExifInterface;)Lcom/pinguo/album/exif/ExifParser;
.registers 4
new-instance v0, Lcom/pinguo/album/exif/ExifParser;
invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/album/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/pinguo/album/exif/ExifInterface;)V
return-object v0
.end method
.method protected static parse(Ljava/io/InputStream;Lcom/pinguo/album/exif/ExifInterface;)Lcom/pinguo/album/exif/ExifParser;
.registers 4
new-instance v0, Lcom/pinguo/album/exif/ExifParser;
const/16 v1, 0x3f
invoke-direct {v0, p0, v1, p1}, Lcom/pinguo/album/exif/ExifParser;-><init>(Ljava/io/InputStream;ILcom/pinguo/album/exif/ExifInterface;)V
return-object v0
.end method
.method private parseTiffHeader()V
.registers 4
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v1}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v0
const/16 v1, 0x4949
if-ne v1, v0, :cond_24
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
sget-object v2, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
invoke-virtual {v1, v2}, Lcom/pinguo/album/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V
:goto_11
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v1}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v1
const/16 v2, 0x2a
if-eq v1, v2, :cond_39
new-instance v1, Lcom/pinguo/album/exif/ExifInvalidFormatException;
const-string/jumbo v2, "Invalid TIFF header"
invoke-direct {v1, v2}, Lcom/pinguo/album/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_24
const/16 v1, 0x4d4d
if-ne v1, v0, :cond_30
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;
invoke-virtual {v1, v2}, Lcom/pinguo/album/exif/CountedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V
goto :goto_11
:cond_30
new-instance v1, Lcom/pinguo/album/exif/ExifInvalidFormatException;
const-string/jumbo v2, "Invalid TIFF header"
invoke-direct {v1, v2}, Lcom/pinguo/album/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V
throw v1
:cond_39
return-void
.end method
.method private readTag()Lcom/pinguo/album/exif/ExifTag;
.registers 16
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v3}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v1
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v3}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v2
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v3}, Lcom/pinguo/album/exif/CountedDataInputStream;->readUnsignedInt()J
move-result-wide v9
const-wide/32 v3, 0x7fffffff
cmp-long v3, v9, v3
if-lez v3, :cond_22
new-instance v3, Lcom/pinguo/album/exif/ExifInvalidFormatException;
const-string/jumbo v4, "Number of component is larger then Integer.MAX_VALUE"
invoke-direct {v3, v4}, Lcom/pinguo/album/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V
throw v3
:cond_22
invoke-static {v2}, Lcom/pinguo/album/exif/ExifTag;->isValidType(S)Z
move-result v3
if-nez v3, :cond_4f
const-string/jumbo v3, "ExifParser"
const-string/jumbo v4, "Tag %04x: Invalid data type %d"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v13, 0x0
invoke-static {v1}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v14
aput-object v14, v5, v13
const/4 v13, 0x1
invoke-static {v2}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;
move-result-object v14
aput-object v14, v5, v13
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
const-wide/16 v4, 0x4
invoke-virtual {v3, v4, v5}, Lcom/pinguo/album/exif/CountedDataInputStream;->skip(J)J
const/4 v0, 0x0
:goto_4e
return-object v0
:cond_4f
new-instance v0, Lcom/pinguo/album/exif/ExifTag;
long-to-int v3, v9
iget v4, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdType:I
long-to-int v5, v9
if-eqz v5, :cond_78
const/4 v5, 0x1
:goto_58
invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/exif/ExifTag;-><init>(SSIIZ)V
invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->getDataSize()I
move-result v7
const/4 v3, 0x4
if-le v7, v3, :cond_9a
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v3}, Lcom/pinguo/album/exif/CountedDataInputStream;->readUnsignedInt()J
move-result-wide v11
const-wide/32 v3, 0x7fffffff
cmp-long v3, v11, v3
if-lez v3, :cond_7a
new-instance v3, Lcom/pinguo/album/exif/ExifInvalidFormatException;
const-string/jumbo v4, "offset is larger then Integer.MAX_VALUE"
invoke-direct {v3, v4}, Lcom/pinguo/album/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V
throw v3
:cond_78
const/4 v5, 0x0
goto :goto_58
:cond_7a
iget v3, p0, Lcom/pinguo/album/exif/ExifParser;->mIfd0Position:I
int-to-long v3, v3
cmp-long v3, v11, v3
if-gez v3, :cond_95
const/4 v3, 0x7
if-ne v2, v3, :cond_95
long-to-int v3, v9
new-array v6, v3, [B
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mDataAboveIfd0:[B
long-to-int v4, v11
add-int/lit8 v4, v4, -0x8
const/4 v5, 0x0
long-to-int v13, v9
invoke-static {v3, v4, v6, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-virtual {v0, v6}, Lcom/pinguo/album/exif/ExifTag;->setValue([B)Z
goto :goto_4e
:cond_95
long-to-int v3, v11
invoke-virtual {v0, v3}, Lcom/pinguo/album/exif/ExifTag;->setOffset(I)V
goto :goto_4e
:cond_9a
invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifTag;->hasDefinedCount()Z
move-result v8
const/4 v3, 0x0
invoke-virtual {v0, v3}, Lcom/pinguo/album/exif/ExifTag;->setHasDefinedCount(Z)V
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifParser;->readFullTagValue(Lcom/pinguo/album/exif/ExifTag;)V
invoke-virtual {v0, v8}, Lcom/pinguo/album/exif/ExifTag;->setHasDefinedCount(Z)V
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
rsub-int/lit8 v4, v7, 0x4
int-to-long v4, v4
invoke-virtual {v3, v4, v5}, Lcom/pinguo/album/exif/CountedDataInputStream;->skip(J)J
iget-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v3}, Lcom/pinguo/album/exif/CountedDataInputStream;->getReadByteCount()I
move-result v3
add-int/lit8 v3, v3, -0x4
invoke-virtual {v0, v3}, Lcom/pinguo/album/exif/ExifTag;->setOffset(I)V
goto :goto_4e
.end method
.method private registerCompressedImage(J)V
.registers 7
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
long-to-int v1, p1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
new-instance v2, Lcom/pinguo/album/exif/ExifParser$ImageEvent;
const/4 v3, 0x3
invoke-direct {v2, v3}, Lcom/pinguo/album/exif/ExifParser$ImageEvent;-><init>(I)V
invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private registerIfd(IJ)V
.registers 8
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
long-to-int v1, p2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
new-instance v2, Lcom/pinguo/album/exif/ExifParser$IfdEvent;
invoke-direct {p0, p1}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v3
invoke-direct {v2, p1, v3}, Lcom/pinguo/album/exif/ExifParser$IfdEvent;-><init>(IZ)V
invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private registerUncompressedStrip(IJ)V
.registers 8
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
long-to-int v1, p2
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
new-instance v2, Lcom/pinguo/album/exif/ExifParser$ImageEvent;
const/4 v3, 0x4
invoke-direct {v2, v3, p1}, Lcom/pinguo/album/exif/ExifParser$ImageEvent;-><init>(II)V
invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method private seekTiffData(Ljava/io/InputStream;)Z
.registers 12
const/4 v5, 0x0
new-instance v0, Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-direct {v0, p1}, Lcom/pinguo/album/exif/CountedDataInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v6
const/16 v7, -0x28
if-eq v6, v7, :cond_17
new-instance v5, Lcom/pinguo/album/exif/ExifInvalidFormatException;
const-string/jumbo v6, "Invalid JPEG format"
invoke-direct {v5, v6}, Lcom/pinguo/album/exif/ExifInvalidFormatException;-><init>(Ljava/lang/String;)V
throw v5
:cond_17
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v4
:goto_1b
const/16 v6, -0x27
if-eq v4, v6, :cond_25
invoke-static {v4}, Lcom/pinguo/album/exif/JpegHeader;->isSofMarker(S)Z
move-result v6
if-eqz v6, :cond_26
:goto_25
:cond_25
return v5
:cond_26
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readUnsignedShort()I
move-result v3
const/16 v6, -0x1f
if-ne v4, v6, :cond_56
const/4 v1, 0x0
const/4 v2, 0x0
const/16 v6, 0x8
if-lt v3, v6, :cond_56
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readInt()I
move-result v1
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v2
add-int/lit8 v3, v3, -0x6
const v6, 0x45786966
if-ne v1, v6, :cond_56
if-nez v2, :cond_56
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->getReadByteCount()I
move-result v5
iput v5, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStartPosition:I
iput v3, p0, Lcom/pinguo/album/exif/ExifParser;->mApp1End:I
iget v5, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStartPosition:I
iget v6, p0, Lcom/pinguo/album/exif/ExifParser;->mApp1End:I
add-int/2addr v5, v6
iput v5, p0, Lcom/pinguo/album/exif/ExifParser;->mOffsetToApp1EndFromSOF:I
const/4 v5, 0x1
goto :goto_25
:cond_56
const/4 v6, 0x2
if-lt v3, v6, :cond_67
add-int/lit8 v6, v3, -0x2
int-to-long v6, v6
add-int/lit8 v8, v3, -0x2
int-to-long v8, v8
invoke-virtual {v0, v8, v9}, Lcom/pinguo/album/exif/CountedDataInputStream;->skip(J)J
move-result-wide v8
cmp-long v6, v6, v8
if-eqz v6, :cond_71
:cond_67
const-string/jumbo v6, "ExifParser"
const-string/jumbo v7, "Invalid JPEG format."
invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_25
:cond_71
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v4
goto :goto_1b
.end method
.method private skipTo(I)V
.registers 5
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
int-to-long v1, p1
invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/exif/CountedDataInputStream;->skipTo(J)V
:goto_6
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->isEmpty()Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->firstKey()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-lt v0, p1, :cond_1d
:cond_1c
return-void
:cond_1d
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v0}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;
goto :goto_6
.end method
.method protected getByteOrder()Ljava/nio/ByteOrder;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->getByteOrder()Ljava/nio/ByteOrder;
move-result-object v0
return-object v0
.end method
.method protected getCompressedImageSize()I
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mJpegSizeTag:Lcom/pinguo/album/exif/ExifTag;
if-nez v1, :cond_6
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mJpegSizeTag:Lcom/pinguo/album/exif/ExifTag;
invoke-virtual {v1, v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v0
long-to-int v0, v0
goto :goto_5
.end method
.method protected getCurrentIfd()I
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdType:I
return v0
.end method
.method protected getOffsetToExifEndFromSOF()I
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifParser;->mOffsetToApp1EndFromSOF:I
return v0
.end method
.method protected getStripCount()I
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifParser;->mStripCount:I
return v0
.end method
.method protected getStripIndex()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mImageEvent:Lcom/pinguo/album/exif/ExifParser$ImageEvent;
iget v0, v0, Lcom/pinguo/album/exif/ExifParser$ImageEvent;->stripIndex:I
return v0
.end method
.method protected getStripSize()I
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mStripSizeTag:Lcom/pinguo/album/exif/ExifTag;
if-nez v1, :cond_6
:goto_5
return v0
:cond_6
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mStripSizeTag:Lcom/pinguo/album/exif/ExifTag;
invoke-virtual {v1, v0}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v0
long-to-int v0, v0
goto :goto_5
.end method
.method protected getTag()Lcom/pinguo/album/exif/ExifTag;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
return-object v0
.end method
.method protected getTagCountInCurrentIfd()I
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifParser;->mNumOfTagInIfd:I
return v0
.end method
.method protected getTiffStartPosition()I
.registers 2
iget v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStartPosition:I
return v0
.end method
.method protected next()I
.registers 16
const-wide/16 v13, 0x0
const/4 v10, 0x5
const/4 v9, 0x1
iget-boolean v11, p0, Lcom/pinguo/album/exif/ExifParser;->mContainExifData:Z
if-nez v11, :cond_a
move v9, v10
:goto_9
:cond_9
return v9
:cond_a
iget-object v11, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v11}, Lcom/pinguo/album/exif/CountedDataInputStream;->getReadByteCount()I
move-result v6
iget v11, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdStartOffset:I
add-int/lit8 v11, v11, 0x2
iget v12, p0, Lcom/pinguo/album/exif/ExifParser;->mNumOfTagInIfd:I
mul-int/lit8 v12, v12, 0xc
add-int v1, v11, v12
if-ge v6, v1, :cond_35
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->readTag()Lcom/pinguo/album/exif/ExifTag;
move-result-object v10
iput-object v10, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
iget-object v10, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
if-nez v10, :cond_2b
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->next()I
move-result v9
goto :goto_9
:cond_2b
iget-boolean v10, p0, Lcom/pinguo/album/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z
if-eqz v10, :cond_9
iget-object v10, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
invoke-direct {p0, v10}, Lcom/pinguo/album/exif/ExifParser;->checkOffsetOrImageTag(Lcom/pinguo/album/exif/ExifTag;)V
goto :goto_9
:cond_35
if-ne v6, v1, :cond_52
iget v11, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdType:I
if-nez v11, :cond_5c
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readUnsignedLong()J
move-result-wide v4
invoke-direct {p0, v9}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v11
if-nez v11, :cond_4b
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->isThumbnailRequested()Z
move-result v11
if-eqz v11, :cond_52
:cond_4b
cmp-long v11, v4, v13
if-eqz v11, :cond_52
invoke-direct {p0, v9, v4, v5}, Lcom/pinguo/album/exif/ExifParser;->registerIfd(IJ)V
:cond_52
:goto_52
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v9}, Ljava/util/TreeMap;->size()I
move-result v9
if-nez v9, :cond_b6
move v9, v10
goto :goto_9
:cond_5c
const/4 v7, 0x4
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v9}, Ljava/util/TreeMap;->size()I
move-result v9
if-lez v9, :cond_7d
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v9}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;
move-result-object v9
invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Integer;
invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
move-result v9
iget-object v11, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v11}, Lcom/pinguo/album/exif/CountedDataInputStream;->getReadByteCount()I
move-result v11
sub-int v7, v9, v11
:cond_7d
const/4 v9, 0x4
if-ge v7, v9, :cond_97
const-string/jumbo v9, "ExifParser"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Invalid size of link to next IFD: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v9, v11}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_52
:cond_97
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readUnsignedLong()J
move-result-wide v4
cmp-long v9, v4, v13
if-eqz v9, :cond_52
const-string/jumbo v9, "ExifParser"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Invalid link to next IFD: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v9, v11}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_52
:cond_b6
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v9}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;
move-result-object v2
invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
:try_start_c0
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Integer;
invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
move-result v9
invoke-direct {p0, v9}, Lcom/pinguo/album/exif/ExifParser;->skipTo(I)V
:try_end_cd
.catch Ljava/io/IOException; {:try_start_c0 .. :try_end_cd} :catch_114
instance-of v9, v3, Lcom/pinguo/album/exif/ExifParser$IfdEvent;
if-eqz v9, :cond_15f
move-object v9, v3
check-cast v9, Lcom/pinguo/album/exif/ExifParser$IfdEvent;
iget v9, v9, Lcom/pinguo/album/exif/ExifParser$IfdEvent;->ifd:I
iput v9, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdType:I
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v9}, Lcom/pinguo/album/exif/CountedDataInputStream;->readUnsignedShort()I
move-result v9
iput v9, p0, Lcom/pinguo/album/exif/ExifParser;->mNumOfTagInIfd:I
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v9
check-cast v9, Ljava/lang/Integer;
invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I
move-result v9
iput v9, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdStartOffset:I
iget v9, p0, Lcom/pinguo/album/exif/ExifParser;->mNumOfTagInIfd:I
mul-int/lit8 v9, v9, 0xc
iget v11, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdStartOffset:I
add-int/2addr v9, v11
add-int/lit8 v9, v9, 0x2
iget v11, p0, Lcom/pinguo/album/exif/ExifParser;->mApp1End:I
if-le v9, v11, :cond_14b
const-string/jumbo v9, "ExifParser"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Invalid size of IFD "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v12, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdType:I
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v9, v11}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v9, v10
goto/16 :goto_9
:catch_114
move-exception v0
const-string/jumbo v9, "ExifParser"
new-instance v11, Ljava/lang/StringBuilder;
const-string/jumbo v12, "Failed to skip to data at: "
invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, " for "
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v12
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
const-string/jumbo v12, ", the file may be broken."
invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v11
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v11
invoke-static {v9, v11}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_52
:cond_14b
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->needToParseOffsetsInCurrentIfd()Z
move-result v9
iput-boolean v9, p0, Lcom/pinguo/album/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z
check-cast v3, Lcom/pinguo/album/exif/ExifParser$IfdEvent;
iget-boolean v9, v3, Lcom/pinguo/album/exif/ExifParser$IfdEvent;->isRequested:Z
if-eqz v9, :cond_15a
const/4 v9, 0x0
goto/16 :goto_9
:cond_15a
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
goto/16 :goto_52
:cond_15f
instance-of v9, v3, Lcom/pinguo/album/exif/ExifParser$ImageEvent;
if-eqz v9, :cond_16d
check-cast v3, Lcom/pinguo/album/exif/ExifParser$ImageEvent;
iput-object v3, p0, Lcom/pinguo/album/exif/ExifParser;->mImageEvent:Lcom/pinguo/album/exif/ExifParser$ImageEvent;
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mImageEvent:Lcom/pinguo/album/exif/ExifParser$ImageEvent;
iget v9, v9, Lcom/pinguo/album/exif/ExifParser$ImageEvent;->type:I
goto/16 :goto_9
:cond_16d
move-object v8, v3
check-cast v8, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;
iget-object v9, v8, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;->tag:Lcom/pinguo/album/exif/ExifTag;
iput-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v9
const/4 v11, 0x7
if-eq v9, v11, :cond_187
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
invoke-virtual {p0, v9}, Lcom/pinguo/album/exif/ExifParser;->readFullTagValue(Lcom/pinguo/album/exif/ExifTag;)V
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
invoke-direct {p0, v9}, Lcom/pinguo/album/exif/ExifParser;->checkOffsetOrImageTag(Lcom/pinguo/album/exif/ExifTag;)V
:cond_187
iget-boolean v9, v8, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;->isRequested:Z
if-eqz v9, :cond_52
const/4 v9, 0x2
goto/16 :goto_9
.end method
.method protected read([B)I
.registers 3
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/CountedDataInputStream;->read([B)I
move-result v0
return v0
.end method
.method protected read([BII)I
.registers 5
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/album/exif/CountedDataInputStream;->read([BII)I
move-result v0
return v0
.end method
.method protected readFullTagValue(Lcom/pinguo/album/exif/ExifTag;)V
.registers 13
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v6
const/4 v8, 0x2
if-eq v6, v8, :cond_d
const/4 v8, 0x7
if-eq v6, v8, :cond_d
const/4 v8, 0x1
if-ne v6, v8, :cond_7a
:cond_d
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v5
iget-object v8, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v8}, Ljava/util/TreeMap;->size()I
move-result v8
if-lez v8, :cond_7a
iget-object v8, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;
move-result-object v8
invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v8
check-cast v8, Ljava/lang/Integer;
invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
move-result v8
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v9}, Lcom/pinguo/album/exif/CountedDataInputStream;->getReadByteCount()I
move-result v9
add-int/2addr v9, v5
if-ge v8, v9, :cond_7a
iget-object v8, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;
move-result-object v8
invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
instance-of v8, v2, Lcom/pinguo/album/exif/ExifParser$ImageEvent;
if-eqz v8, :cond_82
const-string/jumbo v8, "ExifParser"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Thumbnail overlaps value for tag: \n"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
iget-object v8, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v8}, Ljava/util/TreeMap;->pollFirstEntry()Ljava/util/Map$Entry;
move-result-object v1
const-string/jumbo v8, "ExifParser"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Invalid thumbnail offset: "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_7a
:goto_7a
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v8
packed-switch v8, :pswitch_data_1b6
:goto_81
:pswitch_81
return-void
:cond_82
instance-of v8, v2, Lcom/pinguo/album/exif/ExifParser$IfdEvent;
if-eqz v8, :cond_f0
const-string/jumbo v8, "ExifParser"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Ifd "
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
check-cast v2, Lcom/pinguo/album/exif/ExifParser$IfdEvent;
iget v10, v2, Lcom/pinguo/album/exif/ExifParser$IfdEvent;->ifd:I
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, " overlaps value for tag: \n"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:cond_af
:goto_af
iget-object v8, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {v8}, Ljava/util/TreeMap;->firstEntry()Ljava/util/Map$Entry;
move-result-object v8
invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v8
check-cast v8, Ljava/lang/Integer;
invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I
move-result v8
iget-object v9, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v9}, Lcom/pinguo/album/exif/CountedDataInputStream;->getReadByteCount()I
move-result v9
sub-int v5, v8, v9
const-string/jumbo v8, "ExifParser"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Invalid size of tag: \n"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, " setting count to: "
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1, v5}, Lcom/pinguo/album/exif/ExifTag;->forceSetComponentCount(I)V
goto :goto_7a
:cond_f0
instance-of v8, v2, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;
if-eqz v8, :cond_af
const-string/jumbo v8, "ExifParser"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Tag value for tag: \n"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
check-cast v2, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;
iget-object v10, v2, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;->tag:Lcom/pinguo/album/exif/ExifTag;
invoke-virtual {v10}, Lcom/pinguo/album/exif/ExifTag;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
const-string/jumbo v10, " overlaps value for tag: \n"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->toString()Ljava/lang/String;
move-result-object v10
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_af
:pswitch_122
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v8
new-array v0, v8, [B
invoke-virtual {p0, v0}, Lcom/pinguo/album/exif/ExifParser;->read([B)I
invoke-virtual {p1, v0}, Lcom/pinguo/album/exif/ExifTag;->setValue([B)Z
goto/16 :goto_81
:pswitch_130
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v8
invoke-virtual {p0, v8}, Lcom/pinguo/album/exif/ExifParser;->readString(I)Ljava/lang/String;
move-result-object v8
invoke-virtual {p1, v8}, Lcom/pinguo/album/exif/ExifTag;->setValue(Ljava/lang/String;)Z
goto/16 :goto_81
:pswitch_13d
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v8
new-array v7, v8, [J
const/4 v3, 0x0
array-length v4, v7
:goto_145
if-lt v3, v4, :cond_14c
invoke-virtual {p1, v7}, Lcom/pinguo/album/exif/ExifTag;->setValue([J)Z
goto/16 :goto_81
:cond_14c
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readUnsignedLong()J
move-result-wide v8
aput-wide v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_145
:pswitch_155
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v8
new-array v7, v8, [Lcom/pinguo/album/exif/Rational;
const/4 v3, 0x0
array-length v4, v7
:goto_15d
if-lt v3, v4, :cond_164
invoke-virtual {p1, v7}, Lcom/pinguo/album/exif/ExifTag;->setValue([Lcom/pinguo/album/exif/Rational;)Z
goto/16 :goto_81
:cond_164
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readUnsignedRational()Lcom/pinguo/album/exif/Rational;
move-result-object v8
aput-object v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_15d
:pswitch_16d
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v8
new-array v7, v8, [I
const/4 v3, 0x0
array-length v4, v7
:goto_175
if-lt v3, v4, :cond_17c
invoke-virtual {p1, v7}, Lcom/pinguo/album/exif/ExifTag;->setValue([I)Z
goto/16 :goto_81
:cond_17c
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readUnsignedShort()I
move-result v8
aput v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_175
:pswitch_185
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v8
new-array v7, v8, [I
const/4 v3, 0x0
array-length v4, v7
:goto_18d
if-lt v3, v4, :cond_194
invoke-virtual {p1, v7}, Lcom/pinguo/album/exif/ExifTag;->setValue([I)Z
goto/16 :goto_81
:cond_194
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readLong()I
move-result v8
aput v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_18d
:pswitch_19d
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v8
new-array v7, v8, [Lcom/pinguo/album/exif/Rational;
const/4 v3, 0x0
array-length v4, v7
:goto_1a5
if-lt v3, v4, :cond_1ac
invoke-virtual {p1, v7}, Lcom/pinguo/album/exif/ExifTag;->setValue([Lcom/pinguo/album/exif/Rational;)Z
goto/16 :goto_81
:cond_1ac
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readRational()Lcom/pinguo/album/exif/Rational;
move-result-object v8
aput-object v8, v7, v3
add-int/lit8 v3, v3, 0x1
goto :goto_1a5
nop
:pswitch_data_1b6
.packed-switch 0x1
:pswitch_122
:pswitch_130
:pswitch_16d
:pswitch_13d
:pswitch_155
:pswitch_81
:pswitch_122
:pswitch_81
:pswitch_185
:pswitch_19d
.end packed-switch
.end method
.method protected readLong()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readInt()I
move-result v0
return v0
.end method
.method protected readRational()Lcom/pinguo/album/exif/Rational;
.registers 8
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readLong()I
move-result v1
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readLong()I
move-result v0
new-instance v2, Lcom/pinguo/album/exif/Rational;
int-to-long v3, v1
int-to-long v5, v0
invoke-direct {v2, v3, v4, v5, v6}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V
return-object v2
.end method
.method protected readString(I)Ljava/lang/String;
.registers 3
sget-object v0, Lcom/pinguo/album/exif/ExifParser;->US_ASCII:Ljava/nio/charset/Charset;
invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifParser;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
.registers 4
if-lez p1, :cond_9
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v0, p1, p2}, Lcom/pinguo/album/exif/CountedDataInputStream;->readString(ILjava/nio/charset/Charset;)Ljava/lang/String;
move-result-object v0
:goto_8
return-object v0
:cond_9
const-string/jumbo v0, ""
goto :goto_8
.end method
.method protected readUnsignedLong()J
.registers 5
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readLong()I
move-result v0
int-to-long v0, v0
const-wide v2, 0xffffffffL
and-long/2addr v0, v2
return-wide v0
.end method
.method protected readUnsignedRational()Lcom/pinguo/album/exif/Rational;
.registers 6
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readUnsignedLong()J
move-result-wide v2
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readUnsignedLong()J
move-result-wide v0
new-instance v4, Lcom/pinguo/album/exif/Rational;
invoke-direct {v4, v2, v3, v0, v1}, Lcom/pinguo/album/exif/Rational;-><init>(JJ)V
return-object v4
.end method
.method protected readUnsignedShort()I
.registers 3
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v0}, Lcom/pinguo/album/exif/CountedDataInputStream;->readShort()S
move-result v0
const v1, 0xffff
and-int/2addr v0, v1
return v0
.end method
.method protected registerForTagValue(Lcom/pinguo/album/exif/ExifTag;)V
.registers 6
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getOffset()I
move-result v0
iget-object v1, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v1}, Lcom/pinguo/album/exif/CountedDataInputStream;->getReadByteCount()I
move-result v1
if-lt v0, v1, :cond_1f
iget-object v0, p0, Lcom/pinguo/album/exif/ExifParser;->mCorrespondingEvent:Ljava/util/TreeMap;
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getOffset()I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
new-instance v2, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;
const/4 v3, 0x1
invoke-direct {v2, p1, v3}, Lcom/pinguo/album/exif/ExifParser$ExifTagEvent;-><init>(Lcom/pinguo/album/exif/ExifTag;Z)V
invoke-virtual {v0, v1, v2}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_1f
return-void
.end method
.method protected skipRemainingTagsInCurrentIfd()V
.registers 8
const/4 v6, 0x1
iget v4, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdStartOffset:I
add-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/album/exif/ExifParser;->mNumOfTagInIfd:I
mul-int/lit8 v5, v5, 0xc
add-int v0, v4, v5
iget-object v4, p0, Lcom/pinguo/album/exif/ExifParser;->mTiffStream:Lcom/pinguo/album/exif/CountedDataInputStream;
invoke-virtual {v4}, Lcom/pinguo/album/exif/CountedDataInputStream;->getReadByteCount()I
move-result v3
if-le v3, v0, :cond_14
:cond_13
:goto_13
return-void
:cond_14
iget-boolean v4, p0, Lcom/pinguo/album/exif/ExifParser;->mNeedToParseOffsetsInCurrentIfd:Z
if-eqz v4, :cond_4a
:cond_18
:goto_18
if-lt v3, v0, :cond_38
:goto_1a
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifParser;->readUnsignedLong()J
move-result-wide v1
iget v4, p0, Lcom/pinguo/album/exif/ExifParser;->mIfdType:I
if-nez v4, :cond_13
invoke-direct {p0, v6}, Lcom/pinguo/album/exif/ExifParser;->isIfdRequested(I)Z
move-result v4
if-nez v4, :cond_2e
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->isThumbnailRequested()Z
move-result v4
if-eqz v4, :cond_13
:cond_2e
const-wide/16 v4, 0x0
cmp-long v4, v1, v4
if-lez v4, :cond_13
invoke-direct {p0, v6, v1, v2}, Lcom/pinguo/album/exif/ExifParser;->registerIfd(IJ)V
goto :goto_13
:cond_38
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifParser;->readTag()Lcom/pinguo/album/exif/ExifTag;
move-result-object v4
iput-object v4, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
add-int/lit8 v3, v3, 0xc
iget-object v4, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
if-eqz v4, :cond_18
iget-object v4, p0, Lcom/pinguo/album/exif/ExifParser;->mTag:Lcom/pinguo/album/exif/ExifTag;
invoke-direct {p0, v4}, Lcom/pinguo/album/exif/ExifParser;->checkOffsetOrImageTag(Lcom/pinguo/album/exif/ExifTag;)V
goto :goto_18
:cond_4a
invoke-direct {p0, v0}, Lcom/pinguo/album/exif/ExifParser;->skipTo(I)V
goto :goto_1a
.end method