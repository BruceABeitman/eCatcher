.class public Lcom/pinguo/lib/image/PGExifInfo;
.super Ljava/lang/Object;
.source "PGExifInfo.java"
.field private static final DATA_FORMAT_LENGTH:[I = null
.field private static final EXIF_START_INDEX:I = 0xa
.field private static final TAG1_CREATE_DATE:I = 0x9004
.field private static final TAG1_IMAGE_HEIGHT:I = 0xa003
.field private static final TAG1_IMAGE_WIDTH:I = 0xa002
.field private static final TAG1_ORIGINAL_DATE:I = 0x9003
.field private static final TAG2_GPS_ALTITUDE:I = 0x6
.field private static final TAG2_GPS_ALTITUDEREF:I = 0x5
.field private static final TAG2_GPS_DATESTAMP:I = 0x1d
.field private static final TAG2_GPS_LATITUDE:I = 0x2
.field private static final TAG2_GPS_LATITUDEREF:I = 0x1
.field private static final TAG2_GPS_LONGITUDE:I = 0x4
.field private static final TAG2_GPS_LONGITUDEREF:I = 0x3
.field private static final TAG2_GPS_TIMESTAMP:I = 0x7
.field private static final TAG2_GPS_VERSIONID:I = 0x0
.field private static final TAG_CASIOPREVIEWTHUMBNAIL:I = 0x2000
.field private static final TAG_EXIF_OFFSET:I = 0x8769
.field private static final TAG_GPSINFO:I = 0x8825
.field private static final TAG_IMAGEHEIGHT:I = 0x101
.field private static final TAG_IMAGEWIDTH:I = 0x100
.field private static final TAG_INTEROPOFFSET:I = 0xa005
.field private static final TAG_MAKE:I = 0x10f
.field private static final TAG_MAKERNOTE:I = 0x927c
.field private static final TAG_MODEL:I = 0x110
.field private static final TAG_ORIENTATION:I = 0x112
.field private static final TAG_SOFTWARE:I = 0x131
.field private TAG:Ljava/lang/String;
.field private exifHead:[B
.field private list:Ljava/util/List;
.field private littleEndian:Z
.method static constructor <clinit>()V
.registers 6
const/4 v5, 0x2
const/16 v4, 0x8
const/4 v3, 0x4
const/4 v2, 0x1
const/16 v0, 0xd
new-array v0, v0, [I
aput v2, v0, v2
aput v2, v0, v5
const/4 v1, 0x3
aput v5, v0, v1
aput v3, v0, v3
const/4 v1, 0x5
aput v4, v0, v1
const/4 v1, 0x6
aput v2, v0, v1
const/4 v1, 0x7
aput v2, v0, v1
aput v5, v0, v4
const/16 v1, 0x9
aput v3, v0, v1
const/16 v1, 0xa
aput v4, v0, v1
const/16 v1, 0xb
aput v3, v0, v1
const/16 v1, 0xc
aput v4, v0, v1
sput-object v0, Lcom/pinguo/lib/image/PGExifInfo;->DATA_FORMAT_LENGTH:[I
return-void
.end method
.method public constructor <init>([B)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/pinguo/lib/image/PGExifInfo;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/lib/image/PGExifInfo;->TAG:Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-direct {p0, p1}, Lcom/pinguo/lib/image/PGExifInfo;->analyticalExifHeader([B)Z
move-result v0
if-eqz v0, :cond_21
invoke-direct {p0, p1}, Lcom/pinguo/lib/image/PGExifInfo;->analyticalExifBody([B)V
:cond_21
return-void
.end method
.method private analyticalExifBody([B)V
.registers 10
const v5, 0x49492a00
const/4 v4, 0x4
const/4 v0, 0x0
array-length v2, p1
const/16 v3, 0xa
const/16 v1, 0xe
if-lt v1, v2, :cond_d
:cond_c
:goto_c
return-void
:cond_d
invoke-static {p1, v3, v4, v0}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v7
if-eq v7, v5, :cond_21
const v1, 0x4d4d002a
if-eq v7, v1, :cond_21
iget-object v0, p0, Lcom/pinguo/lib/image/PGExifInfo;->TAG:Ljava/lang/String;
const-string/jumbo v1, "Invalid byte order"
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c
:cond_21
if-ne v7, v5, :cond_24
const/4 v0, 0x1
:cond_24
iput-boolean v0, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
add-int/lit8 v3, v3, 0x4
const/16 v0, 0x12
if-ge v0, v2, :cond_c
iget-boolean v0, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {p1, v3, v4, v0}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v6
const/16 v0, 0x8
if-ne v6, v0, :cond_c
add-int/lit8 v3, v3, 0x4
iget-boolean v4, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
iget-object v5, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
move-object v0, p0
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/pinguo/lib/image/PGExifInfo;->unpackIDFEntry([BIIZLjava/util/List;)I
move-result v3
const/4 v0, -0x1
if-ne v3, v0, :cond_c
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
goto :goto_c
.end method
.method private analyticalExifHeader([B)Z
.registers 6
const/16 v3, 0xa
const/4 v1, 0x0
if-nez p1, :cond_6
:cond_5
:goto_5
return v1
:cond_6
array-length v0, p1
if-lt v0, v3, :cond_5
new-array v2, v3, [B
iput-object v2, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
iget-object v2, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
invoke-static {p1, v1, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v1, 0x1
goto :goto_5
.end method
.method private dealOffsetIDFEntry([BILcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)Z
.registers 15
const/4 v8, 0x1
const/4 v9, 0x0
if-lez p4, :cond_e2
if-ge p4, p2, :cond_e2
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v0
if-nez v0, :cond_e2
add-int/lit8 v3, p4, 0xa
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$9(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v0
sparse-switch v0, :sswitch_data_e6
const/4 v6, 0x0
:try_start_16
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$10(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v0
const/4 v1, 0x2
if-ne v0, v1, :cond_d2
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v0
add-int/2addr v0, v3
add-int/lit8 v0, v0, -0x1
aget-byte v0, p1, v0
if-nez v0, :cond_a1
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v0
new-array v6, v0, [B
const/4 v0, 0x0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v1
invoke-static {p1, v3, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:goto_36
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {p3, v6}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
:try_end_39
.catch Ljava/lang/Exception; {:try_start_16 .. :try_end_39} :catch_be
move v0, v8
:goto_3a
return v0
:sswitch_3b
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$12(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;Ljava/util/List;)V
iget-boolean v4, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v5
move-object v0, p0
move-object v1, p1
move v2, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/lib/image/PGExifInfo;->unpackIDFEntry([BIIZLjava/util/List;)I
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_5b
move v0, v8
goto :goto_3a
:cond_5b
move v0, v9
goto :goto_3a
:sswitch_5d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$12(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;Ljava/util/List;)V
iget-boolean v4, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v5
move-object v0, p0
move-object v1, p1
move v2, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/lib/image/PGExifInfo;->unpackIDFEntry([BIIZLjava/util/List;)I
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_7d
move v0, v8
goto :goto_3a
:cond_7d
move v0, v9
goto :goto_3a
:sswitch_7f
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$12(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;Ljava/util/List;)V
iget-boolean v4, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v5
move-object v0, p0
move-object v1, p1
move v2, p2
invoke-direct/range {v0 .. v5}, Lcom/pinguo/lib/image/PGExifInfo;->unpackIDFEntry([BIIZLjava/util/List;)I
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_9f
move v0, v8
goto :goto_3a
:cond_9f
move v0, v9
goto :goto_3a
:try_start_a1
:cond_a1
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v0
add-int/2addr v0, v3
aget-byte v0, p1, v0
if-nez v0, :cond_c2
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v0
add-int/lit8 v0, v0, 0x1
new-array v6, v0, [B
const/4 v0, 0x0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v1
add-int/lit8 v1, v1, 0x1
invoke-static {p1, v3, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto/16 :goto_36
:catch_be
move-exception v7
move v0, v9
goto/16 :goto_3a
:cond_c2
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v0
new-array v6, v0, [B
const/4 v0, 0x0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v1
invoke-static {p1, v3, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto/16 :goto_36
:cond_d2
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v0
new-array v6, v0, [B
const/4 v0, 0x0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {p3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$14(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v1
invoke-static {p1, v3, v6, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_end_e0
.catch Ljava/lang/Exception; {:try_start_a1 .. :try_end_e0} :catch_be
goto/16 :goto_36
:cond_e2
move v0, v9
goto/16 :goto_3a
nop
:sswitch_data_e6
.sparse-switch
0x8769 -> :sswitch_5d
0x8825 -> :sswitch_3b
0xa005 -> :sswitch_7f
.end sparse-switch
.end method
.method private getIDFEntryInList(I)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
.registers 13
const v10, 0x8769
const/4 v9, 0x1
const v7, 0x8825
const/4 v8, 0x4
const/4 v5, 0x0
const/16 v6, 0x112
if-eq p1, v6, :cond_19
const/16 v6, 0x131
if-eq p1, v6, :cond_19
const/16 v6, 0x10f
if-eq p1, v6, :cond_19
const/16 v6, 0x110
if-ne p1, v6, :cond_36
:cond_19
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, p1, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v3
if-nez v3, :cond_34
new-instance v3, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
invoke-direct {v3, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v3, p1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
iget-object v5, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, p1, v6}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v6
invoke-interface {v5, v6, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_34
move-object v2, v3
:goto_35
:cond_35
return-object v2
:cond_36
const v6, 0x9004
if-eq p1, v6, :cond_40
const v6, 0x9003
if-ne p1, v6, :cond_d9
:cond_40
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, v10, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v1
if-nez v1, :cond_b5
new-instance v1, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
invoke-direct {v1, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v1, v10}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v1, v9}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v1, v8}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
new-instance v6, Ljava/util/ArrayList;
invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v1, v6}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$12(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;Ljava/util/List;)V
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
iget-object v7, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, v10, v7}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v7
invoke-interface {v6, v7, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V
new-instance v4, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
invoke-direct {v4, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const v6, 0x9000
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v4, v6}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/4 v6, 0x7
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v4, v6}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v4, v8}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
new-array v6, v8, [B
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v4, v6}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v6
const/4 v7, 0x0
const/16 v8, 0x30
aput-byte v8, v6, v7
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v6
const/16 v7, 0x32
aput-byte v7, v6, v9
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v6
const/4 v7, 0x2
const/16 v8, 0x32
aput-byte v8, v6, v7
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v6
const/4 v7, 0x3
const/16 v8, 0x30
aput-byte v8, v6, v7
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v6
const v7, 0x9000
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v8
invoke-direct {p0, v7, v8}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v7
invoke-interface {v6, v7, v4}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_b5
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v6
invoke-direct {p0, p1, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v0
if-nez v0, :cond_d6
new-instance v0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
invoke-direct {v0, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0, p1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v5
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v6
invoke-direct {p0, p1, v6}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v6
invoke-interface {v5, v6, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_d6
move-object v2, v0
goto/16 :goto_35
:cond_d9
if-ne p1, v7, :cond_106
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, v7, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v2
if-nez v2, :cond_35
new-instance v2, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
invoke-direct {v2, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v2, v7}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v2, v9}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v2, v8}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v2, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$12(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;Ljava/util/List;)V
iget-object v5, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, v7, v6}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v6
invoke-interface {v5, v6, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
goto/16 :goto_35
:cond_106
move-object v2, v5
goto/16 :goto_35
.end method
.method private getInitByte(I)[B
.registers 5
new-array v0, p1, [B
const/4 v1, 0x0
:goto_3
if-lt v1, p1, :cond_6
return-object v0
:cond_6
const/4 v2, 0x0
aput-byte v2, v0, v1
add-int/lit8 v1, v1, 0x1
goto :goto_3
.end method
.method private getInsertIndex(ILjava/util/List;)I
.registers 7
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v2
const/4 v1, 0x0
:goto_5
if-lt v1, v2, :cond_9
move v1, v2
:cond_8
return v1
:cond_9
invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$9(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v3
if-ge v3, p1, :cond_8
add-int/lit8 v1, v1, 0x1
goto :goto_5
.end method
.method private packIDFEntry(Ljava/util/List;I)[B
.registers 19
if-nez p1, :cond_6
const/4 v12, 0x0
new-array v6, v12, [B
:goto_5
return-object v6
:cond_6
invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I
move-result v10
if-nez v10, :cond_10
const/4 v12, 0x0
new-array v6, v12, [B
goto :goto_5
:cond_10
mul-int/lit8 v12, v10, 0xc
add-int/lit8 v12, v12, 0x2
add-int/lit8 v5, v12, 0x4
move-object/from16 v0, p0
invoke-direct {v0, v5}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v1
const/4 v12, 0x2
const/4 v13, 0x0
move-object/from16 v0, p0
iget-boolean v14, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {v1, v10, v12, v13, v14}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
new-instance v7, Ljava/io/ByteArrayOutputStream;
const/16 v12, 0x100
invoke-direct {v7, v12}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
const/4 v9, 0x0
const/4 v4, 0x0
:goto_2e
if-lt v4, v10, :cond_43
invoke-virtual {v7}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v8
array-length v12, v8
add-int/2addr v12, v5
new-array v6, v12, [B
const/4 v12, 0x0
const/4 v13, 0x0
invoke-static {v1, v12, v6, v13, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/4 v12, 0x0
array-length v13, v8
invoke-static {v8, v12, v6, v5, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_5
:cond_43
move-object/from16 v0, p1
invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
mul-int/lit8 v12, v4, 0xc
add-int/lit8 v11, v12, 0x2
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$9(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v12
const/4 v13, 0x2
move-object/from16 v0, p0
iget-boolean v14, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {v1, v12, v13, v11, v14}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$10(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v12
const/4 v13, 0x2
add-int/lit8 v14, v11, 0x2
move-object/from16 v0, p0
iget-boolean v15, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {v1, v12, v13, v14, v15}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$11(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v12
const/4 v13, 0x4
add-int/lit8 v14, v11, 0x4
move-object/from16 v0, p0
iget-boolean v15, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {v1, v12, v13, v14, v15}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v12
if-eqz v12, :cond_8a
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v12
const/4 v13, 0x4
add-int/lit8 v14, v11, 0x8
invoke-static {v1, v12, v13, v14}, Lcom/pinguo/lib/image/PGExifInfo;->unpack([B[BII)V
:cond_87
:goto_87
add-int/lit8 v4, v4, 0x1
goto :goto_2e
:cond_8a
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v12
if-eqz v12, :cond_b1
add-int v12, p2, v5
add-int/2addr v12, v9
const/4 v13, 0x4
add-int/lit8 v14, v11, 0x8
move-object/from16 v0, p0
iget-boolean v15, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {v1, v12, v13, v14, v15}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v12
const/4 v13, 0x0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v14
array-length v14, v14
invoke-virtual {v7, v12, v13, v14}, Ljava/io/ByteArrayOutputStream;->write([BII)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v12
array-length v12, v12
add-int/2addr v9, v12
goto :goto_87
:cond_b1
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v12
if-eqz v12, :cond_87
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v12
add-int v13, p2, v5
add-int/2addr v13, v9
move-object/from16 v0, p0
invoke-direct {v0, v12, v13}, Lcom/pinguo/lib/image/PGExifInfo;->packIDFEntry(Ljava/util/List;I)[B
move-result-object v3
array-length v12, v3
if-eqz v12, :cond_87
add-int v12, p2, v5
add-int/2addr v12, v9
const/4 v13, 0x4
add-int/lit8 v14, v11, 0x8
move-object/from16 v0, p0
iget-boolean v15, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {v1, v12, v13, v14, v15}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
const/4 v12, 0x0
array-length v13, v3
invoke-virtual {v7, v3, v12, v13}, Ljava/io/ByteArrayOutputStream;->write([BII)V
array-length v12, v3
add-int/2addr v9, v12
goto :goto_87
.end method
.method private searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
.registers 7
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v2
const/4 v1, 0x0
:goto_5
if-lt v1, v2, :cond_9
const/4 v0, 0x0
:cond_8
return-object v0
:cond_9
invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$9(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)I
move-result v3
if-eq v3, p1, :cond_8
add-int/lit8 v1, v1, 0x1
goto :goto_5
.end method
.method private setTime(JI)V
.registers 16
const/4 v11, 0x0
const/16 v10, 0x14
invoke-direct {p0, p3}, Lcom/pinguo/lib/image/PGExifInfo;->getIDFEntryInList(I)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v5
if-nez v5, :cond_a
:goto_9
return-void
:cond_a
const/4 v8, 0x2
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v5, v8}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v5, v10}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
new-instance v6, Ljava/text/SimpleDateFormat;
const-string/jumbo v8, "yyyy:MM:dd HH:mm:ss"
sget-object v9, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
invoke-direct {v6, v8, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v3, Ljava/util/Date;
invoke-direct {v3, p1, p2}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v6, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
:try_start_24
const-string/jumbo v8, "UTF-8"
invoke-virtual {v2, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_2a
.catch Ljava/io/UnsupportedEncodingException; {:try_start_24 .. :try_end_2a} :catch_3c
move-result-object v0
:goto_2b
invoke-direct {p0, v10}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v7
array-length v1, v0
array-length v8, v0
if-lt v8, v10, :cond_35
const/16 v1, 0x14
:cond_35
invoke-static {v0, v11, v7, v11, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v5, v7}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
goto :goto_9
:catch_3c
move-exception v4
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v0
goto :goto_2b
.end method
.method private static unpack([B[BII)V
.registers 5
const/4 v0, 0x0
invoke-static {p1, v0, p0, p3, p2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-void
.end method
.method private unpackIDFEntry([BIIZLjava/util/List;)I
.registers 20
add-int/lit8 v12, p3, 0x2
move/from16 v0, p2
if-lt v12, v0, :cond_8
const/4 v12, -0x1
:goto_7
return v12
:cond_8
const/4 v12, 0x2
move/from16 v0, p3
move/from16 v1, p4
invoke-static {p1, v0, v12, v1}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v9
const/16 v12, 0x400
if-le v9, v12, :cond_17
const/4 v12, -0x1
goto :goto_7
:cond_17
add-int/lit8 p3, p3, 0x2
const/4 v6, 0x0
:goto_1a
if-lt v6, v9, :cond_1f
move/from16 v12, p3
goto :goto_7
:cond_1f
add-int/lit8 v12, p3, 0x2
move/from16 v0, p2
if-lt v12, v0, :cond_27
const/4 v12, -0x1
goto :goto_7
:cond_27
const/4 v12, 0x2
move/from16 v0, p3
move/from16 v1, p4
invoke-static {p1, v0, v12, v1}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v11
const v12, 0x927c
if-eq v11, v12, :cond_3b
const/16 v12, 0x2000
if-eq v11, v12, :cond_3b
if-nez v11, :cond_40
:cond_3b
add-int/lit8 p3, p3, 0xc
:goto_3d
add-int/lit8 v6, v6, 0x1
goto :goto_1a
:cond_40
add-int/lit8 p3, p3, 0x2
add-int/lit8 v12, p3, 0x2
move/from16 v0, p2
if-lt v12, v0, :cond_4a
const/4 v12, -0x1
goto :goto_7
:cond_4a
const/4 v12, 0x2
move/from16 v0, p3
move/from16 v1, p4
invoke-static {p1, v0, v12, v1}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v3
const/4 v12, 0x1
if-lt v3, v12, :cond_5a
const/16 v12, 0xd
if-lt v3, v12, :cond_5d
:cond_5a
add-int/lit8 p3, p3, 0xa
goto :goto_3d
:cond_5d
add-int/lit8 p3, p3, 0x2
add-int/lit8 v12, p3, 0x4
move/from16 v0, p2
if-lt v12, v0, :cond_67
const/4 v12, -0x1
goto :goto_7
:cond_67
const/4 v12, 0x4
move/from16 v0, p3
move/from16 v1, p4
invoke-static {p1, v0, v12, v1}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v10
add-int/lit8 p3, p3, 0x4
add-int/lit8 v12, p3, 0x4
move/from16 v0, p2
if-lt v12, v0, :cond_7a
const/4 v12, -0x1
goto :goto_7
:cond_7a
new-instance v7, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/4 v12, 0x0
invoke-direct {v7, v12}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v7, v11}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v7, v3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v7, v10}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
sget-object v12, Lcom/pinguo/lib/image/PGExifInfo;->DATA_FORMAT_LENGTH:[I
aget v4, v12, v3
mul-int v5, v4, v10
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataLen:I
invoke-static {v7, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$13(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/4 v12, 0x4
if-gt v5, v12, :cond_a4
const v12, 0x8825
if-eq v11, v12, :cond_a4
const v12, 0x8769
if-eq v11, v12, :cond_a4
const v12, 0xa005
if-ne v11, v12, :cond_bd
:cond_a4
const/4 v12, 0x4
move/from16 v0, p3
move/from16 v1, p4
invoke-static {p1, v0, v12, v1}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v8
move/from16 v0, p2
invoke-direct {p0, p1, v0, v7, v8}, Lcom/pinguo/lib/image/PGExifInfo;->dealOffsetIDFEntry([BILcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)Z
move-result v12
if-eqz v12, :cond_ba
move-object/from16 v0, p5
invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_ba
:goto_ba
add-int/lit8 p3, p3, 0x4
goto :goto_3d
:cond_bd
const/4 v12, 0x4
new-array v2, v12, [B
const/4 v12, 0x0
aget-byte v13, p1, p3
aput-byte v13, v2, v12
const/4 v12, 0x1
add-int/lit8 v13, p3, 0x1
aget-byte v13, p1, v13
aput-byte v13, v2, v12
const/4 v12, 0x2
add-int/lit8 v13, p3, 0x2
aget-byte v13, p1, v13
aput-byte v13, v2, v12
const/4 v12, 0x3
add-int/lit8 v13, p3, 0x3
aget-byte v13, p1, v13
aput-byte v13, v2, v12
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v7, v2}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
move-object/from16 v0, p5
invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_ba
.end method
.method public getExifData()[B
.registers 15
const/4 v13, 0x2
const/16 v12, 0xa
const/16 v11, 0x8
const/4 v10, 0x4
const/4 v9, 0x0
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-interface {v6}, Ljava/util/List;->size()I
move-result v4
if-nez v4, :cond_12
new-array v2, v9, [B
:goto_11
return-object v2
:cond_12
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
if-nez v6, :cond_30
invoke-direct {p0, v12}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v6
iput-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
const/4 v7, -0x1
aput-byte v7, v6, v9
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
const/4 v7, 0x1
const/16 v8, -0x1f
aput-byte v8, v6, v7
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
const v7, 0x45786966
invoke-static {v6, v7, v10, v10, v9}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
:cond_30
invoke-direct {p0, v11}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v0
iget-boolean v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
if-eqz v6, :cond_67
const v1, 0x49492a00
:goto_3b
invoke-static {v0, v1, v10, v9, v9}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
iget-boolean v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {v0, v11, v10, v10, v6}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, v6, v11}, Lcom/pinguo/lib/image/PGExifInfo;->packIDFEntry(Ljava/util/List;I)[B
move-result-object v3
array-length v6, v3
if-eqz v6, :cond_6b
array-length v6, v3
add-int/lit8 v5, v6, 0x12
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
add-int/lit8 v7, v5, -0x2
invoke-static {v6, v7, v13, v13, v9}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
new-array v2, v5, [B
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->exifHead:[B
invoke-static {v6, v9, v2, v9, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
invoke-static {v0, v9, v2, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
const/16 v6, 0x12
array-length v7, v3
invoke-static {v3, v9, v2, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_11
:cond_67
const v1, 0x4d4d002a
goto :goto_3b
:cond_6b
new-array v2, v9, [B
goto :goto_11
.end method
.method public setLocation(Landroid/location/Location;)V
.registers 60
if-nez p1, :cond_3
:goto_2
:cond_2
return-void
:cond_3
const v53, 0x8825
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getIDFEntryInList(I)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v15
if-eqz v15, :cond_2
const/16 v53, 0x0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v21
if-eqz v21, :cond_74
const/16 v53, 0x0
move-object/from16 v0, v21
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x1
move-object/from16 v0, v21
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x4
move-object/from16 v0, v21
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x4
move/from16 v0, v53
new-array v0, v0, [B
move-object/from16 v53, v0
move-object/from16 v0, v21
move-object/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static/range {v21 .. v21}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x0
const/16 v55, 0x2
aput-byte v55, v53, v54
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static/range {v21 .. v21}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x1
const/16 v55, 0x2
aput-byte v55, v53, v54
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static/range {v21 .. v21}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x2
const/16 v55, 0x0
aput-byte v55, v53, v54
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static/range {v21 .. v21}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x3
const/16 v55, 0x0
aput-byte v55, v53, v54
:cond_74
const/16 v53, 0x1
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v17
if-nez v17, :cond_b7
new-instance v17, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/16 v53, 0x0
move-object/from16 v0, v17
move-object/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const/16 v53, 0x1
move-object/from16 v0, v17
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v53
const/16 v54, 0x1
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v55
move-object/from16 v0, p0
move/from16 v1, v54
move-object/from16 v2, v55
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v54
move-object/from16 v0, v53
move/from16 v1, v54
move-object/from16 v2, v17
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_b7
const/16 v53, 0x2
move-object/from16 v0, v17
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x2
move-object/from16 v0, v17
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x4
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v53
move-object/from16 v0, v17
move-object/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
invoke-static/range {p1 .. p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v26
const-wide/16 v53, 0x0
cmpl-double v53, v26, v53
if-lez v53, :cond_683
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static/range {v17 .. v17}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x0
const/16 v55, 0x4e
aput-byte v55, v53, v54
:goto_ee
const-wide/16 v53, 0x0
cmpg-double v53, v26, v53
if-gez v53, :cond_f9
move-wide/from16 v0, v26
neg-double v0, v0
move-wide/from16 v26, v0
:cond_f9
const/16 v53, 0x2
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v16
if-nez v16, :cond_13c
new-instance v16, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/16 v53, 0x0
move-object/from16 v0, v16
move-object/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const/16 v53, 0x2
move-object/from16 v0, v16
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v53
const/16 v54, 0x2
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v55
move-object/from16 v0, p0
move/from16 v1, v54
move-object/from16 v2, v55
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v54
move-object/from16 v0, v53
move/from16 v1, v54
move-object/from16 v2, v16
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_13c
const/16 v53, 0x5
move-object/from16 v0, v16
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x3
move-object/from16 v0, v16
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x18
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v53
move-object/from16 v0, v16
move-object/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
invoke-static/range {v26 .. v27}, Ljava/lang/Math;->floor(D)D
move-result-wide v53
move-wide/from16 v0, v53
double-to-int v8, v0
int-to-double v0, v8
move-wide/from16 v53, v0
sub-double v53, v26, v53
const-wide/high16 v55, 0x404e
mul-double v32, v53, v55
invoke-static/range {v32 .. v33}, Ljava/lang/Math;->floor(D)D
move-result-wide v53
move-wide/from16 v0, v53
double-to-int v0, v0
move/from16 v30, v0
move/from16 v0, v30
int-to-double v0, v0
move-wide/from16 v53, v0
sub-double v53, v32, v53
const-wide/high16 v55, 0x404e
mul-double v53, v53, v55
const-wide v55, 0x40c3880000000000L
mul-double v36, v53, v55
invoke-static/range {v36 .. v37}, Ljava/lang/Math;->floor(D)D
move-result-wide v53
move-wide/from16 v0, v53
double-to-int v0, v0
move/from16 v41, v0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x0
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v54
move/from16 v2, v55
move/from16 v3, v56
invoke-static {v0, v8, v1, v2, v3}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x1
const/16 v55, 0x4
const/16 v56, 0x4
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x8
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v30
move/from16 v2, v54
move/from16 v3, v55
move/from16 v4, v56
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x1
const/16 v55, 0x4
const/16 v56, 0xc
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x10
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v41
move/from16 v2, v54
move/from16 v3, v55
move/from16 v4, v56
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v16 .. v16}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x2710
const/16 v55, 0x4
const/16 v56, 0x14
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
const/16 v53, 0x3
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v19
if-nez v19, :cond_25e
new-instance v19, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/16 v53, 0x0
move-object/from16 v0, v19
move-object/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const/16 v53, 0x3
move-object/from16 v0, v19
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v53
const/16 v54, 0x3
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v55
move-object/from16 v0, p0
move/from16 v1, v54
move-object/from16 v2, v55
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v54
move-object/from16 v0, v53
move/from16 v1, v54
move-object/from16 v2, v19
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_25e
const/16 v53, 0x2
move-object/from16 v0, v19
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x2
move-object/from16 v0, v19
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x4
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v53
move-object/from16 v0, v19
move-object/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
invoke-static/range {p1 .. p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v28
const-wide/16 v53, 0x0
cmpl-double v53, v28, v53
if-lez v53, :cond_68f
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static/range {v19 .. v19}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x0
const/16 v55, 0x45
aput-byte v55, v53, v54
:goto_295
const-wide/16 v53, 0x0
cmpg-double v53, v28, v53
if-gez v53, :cond_2a0
move-wide/from16 v0, v28
neg-double v0, v0
move-wide/from16 v28, v0
:cond_2a0
const/16 v53, 0x4
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v18
if-nez v18, :cond_2e3
new-instance v18, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/16 v53, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const/16 v53, 0x4
move-object/from16 v0, v18
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v53
const/16 v54, 0x4
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v55
move-object/from16 v0, p0
move/from16 v1, v54
move-object/from16 v2, v55
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v54
move-object/from16 v0, v53
move/from16 v1, v54
move-object/from16 v2, v18
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_2e3
const/16 v53, 0x5
move-object/from16 v0, v18
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x3
move-object/from16 v0, v18
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x18
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v53
move-object/from16 v0, v18
move-object/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
invoke-static/range {v28 .. v29}, Ljava/lang/Math;->floor(D)D
move-result-wide v53
move-wide/from16 v0, v53
double-to-int v9, v0
int-to-double v0, v9
move-wide/from16 v53, v0
sub-double v53, v28, v53
const-wide/high16 v55, 0x404e
mul-double v34, v53, v55
invoke-static/range {v34 .. v35}, Ljava/lang/Math;->floor(D)D
move-result-wide v53
move-wide/from16 v0, v53
double-to-int v0, v0
move/from16 v31, v0
move/from16 v0, v31
int-to-double v0, v0
move-wide/from16 v53, v0
sub-double v53, v34, v53
const-wide/high16 v55, 0x404e
mul-double v53, v53, v55
const-wide v55, 0x40c3880000000000L
mul-double v38, v53, v55
invoke-static/range {v38 .. v39}, Ljava/lang/Math;->floor(D)D
move-result-wide v53
move-wide/from16 v0, v53
double-to-int v0, v0
move/from16 v42, v0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x0
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v54
move/from16 v2, v55
move/from16 v3, v56
invoke-static {v0, v9, v1, v2, v3}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x1
const/16 v55, 0x4
const/16 v56, 0x4
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x8
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v31
move/from16 v2, v54
move/from16 v3, v55
move/from16 v4, v56
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x1
const/16 v55, 0x4
const/16 v56, 0xc
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x10
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v42
move/from16 v2, v54
move/from16 v3, v55
move/from16 v4, v56
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v18 .. v18}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x2710
const/16 v55, 0x4
const/16 v56, 0x14
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
const/16 v53, 0x5
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v13
if-nez v13, :cond_3ff
new-instance v13, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/16 v53, 0x0
move-object/from16 v0, v53
invoke-direct {v13, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const/16 v53, 0x5
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v13, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v53
const/16 v54, 0x5
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v55
move-object/from16 v0, p0
move/from16 v1, v54
move-object/from16 v2, v55
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v54
move-object/from16 v0, v53
move/from16 v1, v54
invoke-interface {v0, v1, v13}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_3ff
const/16 v53, 0x1
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v13, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x1
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v13, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x4
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v53
move-object/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v13, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
invoke-static/range {p1 .. p1}, Ldroidbox/android/location/Location;->getAltitude(Landroid/location/Location;)D
move-result-wide v24
const-wide/16 v53, 0x0
cmpg-double v53, v24, v53
if-gez v53, :cond_430
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v13}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x0
const/16 v55, 0x1
aput-byte v55, v53, v54
:cond_430
const-wide/16 v53, 0x0
cmpg-double v53, v24, v53
if-gez v53, :cond_43b
move-wide/from16 v0, v24
neg-double v0, v0
move-wide/from16 v24, v0
:cond_43b
const/16 v53, 0x6
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v12
if-nez v12, :cond_478
new-instance v12, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/16 v53, 0x0
move-object/from16 v0, v53
invoke-direct {v12, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const/16 v53, 0x6
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v12, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v53
const/16 v54, 0x6
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v55
move-object/from16 v0, p0
move/from16 v1, v54
move-object/from16 v2, v55
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v54
move-object/from16 v0, v53
move/from16 v1, v54
invoke-interface {v0, v1, v12}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_478
const/16 v53, 0x5
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v12, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x1
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v12, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x8
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v53
move-object/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v12, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v12}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const-wide v54, 0x408f400000000000L
mul-double v54, v54, v24
move-wide/from16 v0, v54
double-to-int v0, v0
move/from16 v54, v0
const/16 v55, 0x4
const/16 v56, 0x0
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v12}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x3e8
const/16 v55, 0x4
const/16 v56, 0x4
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
invoke-static/range {p1 .. p1}, Ldroidbox/android/location/Location;->getTime(Landroid/location/Location;)J
move-result-wide v51
const-wide/16 v53, 0x0
cmp-long v53, v51, v53
if-lez v53, :cond_2
const/16 v53, 0x7
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v20
if-nez v20, :cond_512
new-instance v20, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/16 v53, 0x0
move-object/from16 v0, v20
move-object/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const/16 v53, 0x7
move-object/from16 v0, v20
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v53
const/16 v54, 0x7
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v55
move-object/from16 v0, p0
move/from16 v1, v54
move-object/from16 v2, v55
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v54
move-object/from16 v0, v53
move/from16 v1, v54
move-object/from16 v2, v20
invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_512
const/16 v53, 0x5
move-object/from16 v0, v20
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x3
move-object/from16 v0, v20
move/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0x18
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v53
move-object/from16 v0, v20
move-object/from16 v1, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
const-wide/16 v53, 0x3e8
div-long v49, v51, v53
const-wide/16 v53, 0x3c
div-long v47, v49, v53
const-wide/16 v53, 0x3c
div-long v45, v47, v53
const-wide/16 v53, 0x18
div-long v43, v45, v53
const-wide/16 v53, 0x3c
mul-long v53, v53, v47
sub-long v53, v49, v53
move-wide/from16 v0, v53
long-to-int v0, v0
move/from16 v40, v0
const-wide/16 v53, 0x3c
mul-long v53, v53, v45
sub-long v53, v47, v53
move-wide/from16 v0, v53
long-to-int v0, v0
move/from16 v23, v0
const-wide/16 v53, 0x18
mul-long v53, v53, v43
sub-long v53, v45, v53
move-wide/from16 v0, v53
long-to-int v0, v0
move/from16 v22, v0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v20 .. v20}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x0
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v22
move/from16 v2, v54
move/from16 v3, v55
move/from16 v4, v56
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v20 .. v20}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x1
const/16 v55, 0x4
const/16 v56, 0x4
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v20 .. v20}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x8
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v23
move/from16 v2, v54
move/from16 v3, v55
move/from16 v4, v56
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v20 .. v20}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x1
const/16 v55, 0x4
const/16 v56, 0xc
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v20 .. v20}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x4
const/16 v55, 0x10
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v56, v0
move-object/from16 v0, v53
move/from16 v1, v40
move/from16 v2, v54
move/from16 v3, v55
move/from16 v4, v56
invoke-static {v0, v1, v2, v3, v4}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static/range {v20 .. v20}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x1
const/16 v55, 0x4
const/16 v56, 0x14
move-object/from16 v0, p0
iget-boolean v0, v0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
move/from16 v57, v0
invoke-static/range {v53 .. v57}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
const/16 v53, 0x1d
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v54
move-object/from16 v0, p0
move/from16 v1, v53
move-object/from16 v2, v54
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v14
if-nez v14, :cond_62d
new-instance v14, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
const/16 v53, 0x0
move-object/from16 v0, v53
invoke-direct {v14, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;-><init>(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)V
const/16 v53, 0x1d
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->tagNum:I
invoke-static {v14, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$6(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v53
const/16 v54, 0x1d
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v15}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v55
move-object/from16 v0, p0
move/from16 v1, v54
move-object/from16 v2, v55
invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->getInsertIndex(ILjava/util/List;)I
move-result v54
move-object/from16 v0, v53
move/from16 v1, v54
invoke-interface {v0, v1, v14}, Ljava/util/List;->add(ILjava/lang/Object;)V
:cond_62d
const/16 v53, 0x2
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v14, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0xb
move/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v14, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/16 v53, 0xb
move-object/from16 v0, p0
move/from16 v1, v53
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v53
move-object/from16 v0, v53
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v14, v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
new-instance v11, Ljava/text/SimpleDateFormat;
const-string/jumbo v53, "yyyy:MM:dd"
sget-object v54, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;
move-object/from16 v0, v53
move-object/from16 v1, v54
invoke-direct {v11, v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
new-instance v7, Ljava/util/Date;
move-wide/from16 v0, v51
invoke-direct {v7, v0, v1}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v11, v7}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v6
:try_start_663
const-string/jumbo v53, "UTF-8"
move-object/from16 v0, v53
invoke-virtual {v6, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
:try_end_66b
.catch Ljava/io/UnsupportedEncodingException; {:try_start_663 .. :try_end_66b} :catch_69b
move-result-object v5
:goto_66c
const/16 v53, 0x0
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v14}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$8(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v54
const/16 v55, 0x0
const/16 v56, 0xa
move/from16 v0, v53
move-object/from16 v1, v54
move/from16 v2, v55
move/from16 v3, v56
invoke-static {v5, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto/16 :goto_2
:cond_683
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static/range {v17 .. v17}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x0
const/16 v55, 0x53
aput-byte v55, v53, v54
goto/16 :goto_ee
:cond_68f
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static/range {v19 .. v19}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v53
const/16 v54, 0x0
const/16 v55, 0x57
aput-byte v55, v53, v54
goto/16 :goto_295
:catch_69b
move-exception v10
invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B
move-result-object v5
goto :goto_66c
.end method
.method public setMake(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
if-eqz p1, :cond_c
const-string/jumbo v4, ""
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_d
:cond_c
:goto_c
return-void
:cond_d
const/16 v4, 0x10f
invoke-direct {p0, v4}, Lcom/pinguo/lib/image/PGExifInfo;->getIDFEntryInList(I)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v2
if-eqz v2, :cond_c
const/4 v4, 0x2
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v2, v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
array-length v4, v0
add-int/lit8 v3, v4, 0x1
const/4 v4, 0x4
if-gt v3, v4, :cond_24
const/4 v3, 0x5
:cond_24
invoke-direct {p0, v3}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v1
array-length v4, v0
invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v2, v3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v2, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
const/4 v4, 0x0
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v2, v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
goto :goto_c
.end method
.method public setModel(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
if-eqz p1, :cond_c
const-string/jumbo v4, ""
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_d
:cond_c
:goto_c
return-void
:cond_d
const/16 v4, 0x110
invoke-direct {p0, v4}, Lcom/pinguo/lib/image/PGExifInfo;->getIDFEntryInList(I)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v2
if-eqz v2, :cond_c
const/4 v4, 0x2
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v2, v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
array-length v4, v0
add-int/lit8 v3, v4, 0x1
const/4 v4, 0x4
if-gt v3, v4, :cond_24
const/4 v3, 0x5
:cond_24
invoke-direct {p0, v3}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v1
array-length v4, v0
invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v2, v3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v2, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
const/4 v4, 0x0
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v2, v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
goto :goto_c
.end method
.method public setOrientation(I)V
.registers 8
const/16 v1, 0x112
invoke-direct {p0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getIDFEntryInList(I)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
const/4 v1, 0x3
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/4 v1, 0x1
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
const/4 v1, 0x4
invoke-direct {p0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v1
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$4(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)[B
move-result-object v1
invoke-static {p1}, Lcom/pinguo/lib/image/Exif;->getOrientationFlag(I)I
move-result v2
const/4 v3, 0x2
const/4 v4, 0x0
iget-boolean v5, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {v1, v2, v3, v4, v5}, Lcom/pinguo/lib/image/Exif;->unpack([BIIIZ)V
goto :goto_8
.end method
.method public setSize(II)V
.registers 12
const/4 v8, 0x1
const/4 v7, 0x4
const/16 v5, 0x100
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, v5, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v3
const/16 v5, 0x101
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, v5, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v1
if-eqz v3, :cond_34
if-eqz v1, :cond_34
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v3, v7}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v3, v8}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
iget-boolean v5, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {p1, v7, v5}, Lcom/pinguo/lib/image/Exif;->unpack(IIZ)[B
move-result-object v5
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v3, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v1, v7}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v1, v8}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
iget-boolean v5, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {p2, v7, v5}, Lcom/pinguo/lib/image/Exif;->unpack(IIZ)[B
move-result-object v5
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v1, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
:cond_34
const v5, 0x8769
iget-object v6, p0, Lcom/pinguo/lib/image/PGExifInfo;->list:Ljava/util/List;
invoke-direct {p0, v5, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v0
if-eqz v0, :cond_7d
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v5
if-eqz v5, :cond_7d
const v5, 0xa002
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v6
invoke-direct {p0, v5, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v4
const v5, 0xa003
#getter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->list:Ljava/util/List;
invoke-static {v0}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$5(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;)Ljava/util/List;
move-result-object v6
invoke-direct {p0, v5, v6}, Lcom/pinguo/lib/image/PGExifInfo;->searchIDFEntryInList(ILjava/util/List;)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v2
if-eqz v4, :cond_7d
if-eqz v2, :cond_7d
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v4, v7}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v4, v8}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
iget-boolean v5, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {p1, v7, v5}, Lcom/pinguo/lib/image/Exif;->unpack(IIZ)[B
move-result-object v5
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v4, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v2, v7}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v2, v8}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
iget-boolean v5, p0, Lcom/pinguo/lib/image/PGExifInfo;->littleEndian:Z
invoke-static {p2, v7, v5}, Lcom/pinguo/lib/image/Exif;->unpack(IIZ)[B
move-result-object v5
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v2, v5}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
:cond_7d
return-void
.end method
.method public setSoftware(Ljava/lang/String;)V
.registers 8
const/4 v5, 0x0
if-eqz p1, :cond_14
const-string/jumbo v4, ""
invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_14
const/16 v4, 0x131
invoke-direct {p0, v4}, Lcom/pinguo/lib/image/PGExifInfo;->getIDFEntryInList(I)Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;
move-result-object v2
if-nez v2, :cond_15
:goto_14
:cond_14
return-void
:cond_15
const/4 v4, 0x2
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->dataFormat:I
invoke-static {v2, v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$0(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
array-length v4, v0
add-int/lit8 v3, v4, 0x1
const/4 v4, 0x4
if-gt v3, v4, :cond_24
const/4 v3, 0x5
:cond_24
invoke-direct {p0, v3}, Lcom/pinguo/lib/image/PGExifInfo;->getInitByte(I)[B
move-result-object v1
array-length v4, v0
invoke-static {v0, v5, v1, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->nComponent:I
invoke-static {v2, v3}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$1(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;I)V
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->offsetValues:[B
invoke-static {v2, v1}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$2(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
const/4 v4, 0x0
#setter for: Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->values:[B
invoke-static {v2, v4}, Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;->access$3(Lcom/pinguo/lib/image/PGExifInfo$IDFEntry;[B)V
goto :goto_14
.end method
.method public setTimestamp(J)V
.registers 4
const v0, 0x9003
invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/lib/image/PGExifInfo;->setTime(JI)V
const v0, 0x9004
invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/lib/image/PGExifInfo;->setTime(JI)V
return-void
.end method