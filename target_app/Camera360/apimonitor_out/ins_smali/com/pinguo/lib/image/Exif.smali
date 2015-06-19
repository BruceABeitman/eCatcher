.class public Lcom/pinguo/lib/image/Exif;
.super Ljava/lang/Object;
.source "Exif.java"
.field private static final BUFFER_SIZE:I = 0x2000
.field private static final M_SOI:I = 0xffd8
.field private static final TAG:Ljava/lang/String; = "Exif"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static exifToJpegData([B[B)[B
.registers 14
const/16 v11, 0xe1
const/4 v10, 0x2
const/16 v8, 0xff
const/4 v9, 0x0
invoke-static {p0}, Lcom/pinguo/lib/image/Exif;->isJpeg([B)Z
move-result v7
if-nez v7, :cond_2d
new-instance v8, Ljava/lang/IllegalArgumentException;
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v7, "jpeg data \u6570\u636e\u4e0d\u6b63\u786e,"
invoke-direct {v9, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p0, :cond_27
const-string/jumbo v7, "jpeg is null!"
:goto_1b
invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-direct {v8, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v8
:cond_27
array-length v7, p0
invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v7
goto :goto_1b
:cond_2d
array-length v1, p0
const/4 v4, 0x2
const/4 v2, 0x0
move v0, v4
move v5, v4
:goto_32
add-int/lit8 v7, v5, 0x2
if-ge v7, v1, :cond_ab
add-int/lit8 v4, v5, 0x1
aget-byte v7, p0, v5
and-int/lit16 v7, v7, 0xff
if-eq v7, v8, :cond_57
:cond_3e
:goto_3e
new-instance v6, Ljava/io/ByteArrayOutputStream;
array-length v7, p1
array-length v8, p0
add-int/2addr v7, v8
invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
invoke-virtual {v6, p0, v9, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
array-length v7, p1
invoke-virtual {v6, p1, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
array-length v7, p0
sub-int/2addr v7, v0
invoke-virtual {v6, p0, v0, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object p0
:goto_56
return-object p0
:cond_57
aget-byte v7, p0, v4
and-int/lit16 v3, v7, 0xff
if-ne v3, v8, :cond_5f
move v5, v4
goto :goto_32
:cond_5f
const/16 v7, 0xd8
if-eq v3, v7, :cond_3e
const/16 v7, 0xd9
if-eq v3, v7, :cond_3e
const/16 v7, 0xc0
if-lt v3, v7, :cond_3e
if-ge v3, v8, :cond_3e
add-int/lit8 v4, v4, 0x1
invoke-static {p0, v4, v10, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v2
if-lt v2, v10, :cond_79
add-int v7, v4, v2
if-le v7, v1, :cond_83
:cond_79
const-string/jumbo v7, "Exif"
const-string/jumbo v8, "Invalid length"
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_56
:cond_83
if-ne v3, v11, :cond_a3
new-instance v6, Ljava/io/ByteArrayOutputStream;
array-length v7, p1
array-length v8, p0
add-int/2addr v7, v8
invoke-direct {v6, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
add-int/lit8 v7, v4, -0x2
invoke-virtual {v6, p0, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
array-length v7, p1
invoke-virtual {v6, p1, v9, v7}, Ljava/io/ByteArrayOutputStream;->write([BII)V
add-int v7, v4, v2
array-length v8, p0
sub-int/2addr v8, v4
sub-int/2addr v8, v2
invoke-virtual {v6, p0, v7, v8}, Ljava/io/ByteArrayOutputStream;->write([BII)V
invoke-virtual {v6}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object p0
goto :goto_56
:cond_a3
add-int/2addr v4, v2
if-ne v3, v11, :cond_a9
move v0, v4
move v5, v4
goto :goto_32
:cond_a9
move v5, v4
goto :goto_32
:cond_ab
move v4, v5
goto :goto_3e
.end method
.method public static exifToJpegFile(Ljava/lang/String;Ljava/lang/String;[B)V
.registers 9
const/4 v0, 0x0
:try_start_1
new-instance v1, Ljava/io/BufferedInputStream;
new-instance v4, Ljava/io/FileInputStream;
invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
const/16 v5, 0x2000
invoke-direct {v1, v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V
:try_end_d
.catchall {:try_start_1 .. :try_end_d} :catchall_3a
const/4 v2, 0x0
:try_start_e
new-instance v3, Ljava/io/BufferedOutputStream;
new-instance v4, Ljava/io/FileOutputStream;
invoke-direct {v4, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
const/16 v5, 0x2000
invoke-direct {v3, v4, v5}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
:try_start_1a
:try_end_1a
.catchall {:try_start_e .. :try_end_1a} :catchall_29
invoke-static {v1, v3, p2}, Lcom/pinguo/lib/image/Exif;->exifToJpegStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
:try_end_1d
.catchall {:try_start_1a .. :try_end_1d} :catchall_3c
if-eqz v3, :cond_22
:try_start_1f
invoke-virtual {v3}, Ljava/io/BufferedOutputStream;->close()V
:cond_22
:try_end_22
.catchall {:try_start_1f .. :try_end_22} :catchall_31
if-eqz v1, :cond_3f
invoke-virtual {v1}, Ljava/io/BufferedInputStream;->close()V
const/4 v0, 0x0
:goto_28
return-void
:catchall_29
move-exception v4
:goto_2a
if-eqz v2, :cond_30
:try_start_2c
invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V
const/4 v2, 0x0
:cond_30
throw v4
:catchall_31
:try_end_31
.catchall {:try_start_2c .. :try_end_31} :catchall_31
move-exception v4
move-object v0, v1
:goto_33
if-eqz v0, :cond_39
invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V
const/4 v0, 0x0
:cond_39
throw v4
:catchall_3a
move-exception v4
goto :goto_33
:catchall_3c
move-exception v4
move-object v2, v3
goto :goto_2a
:cond_3f
move-object v0, v1
goto :goto_28
.end method
.method private static exifToJpegStream(Ljava/io/InputStream;Ljava/io/OutputStream;[B)V
.registers 24
const/16 v19, 0x2000
move/from16 v0, v19
new-array v6, v0, [B
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I
move-result v8
const/16 v19, -0x1
move/from16 v0, v19
if-ne v8, v0, :cond_13
:cond_12
return-void
:cond_13
move/from16 v18, v8
const/16 v19, 0x2000
move/from16 v0, v19
if-ge v8, v0, :cond_39
:goto_1b
move/from16 v0, v18
rsub-int v0, v0, 0x2000
move/from16 v19, v0
move-object/from16 v0, p0
move/from16 v1, v18
move/from16 v2, v19
invoke-virtual {v0, v6, v1, v2}, Ljava/io/InputStream;->read([BII)I
move-result v8
const/16 v19, -0x1
move/from16 v0, v19
if-eq v8, v0, :cond_39
const/16 v19, 0x2000
move/from16 v0, v18
move/from16 v1, v19
if-lt v0, v1, :cond_53
:cond_39
const/16 v19, 0x0
move/from16 v0, v19
invoke-static {v6, v0}, Lcom/pinguo/lib/image/Exif;->marker([BI)I
move-result v16
const v19, 0xffd8
move/from16 v0, v16
move/from16 v1, v19
if-eq v0, v1, :cond_56
new-instance v19, Ljava/lang/IllegalArgumentException;
const-string/jumbo v20, "jpeg data \u6570\u636e\u4e0d\u6b63\u786e"
invoke-direct/range {v19 .. v20}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v19
:cond_53
add-int v18, v18, v8
goto :goto_1b
:cond_56
const/4 v10, 0x2
move v4, v10
const/4 v7, 0x0
const-wide/16 v14, 0x0
move v11, v10
:goto_5c
add-int/lit8 v19, v11, 0x3
move/from16 v0, v19
move/from16 v1, v18
if-gt v0, v1, :cond_171
add-int/lit8 v10, v11, 0x1
aget-byte v19, v6, v11
move/from16 v0, v19
and-int/lit16 v0, v0, 0xff
move/from16 v19, v0
const/16 v20, 0xff
move/from16 v0, v19
move/from16 v1, v20
if-eq v0, v1, :cond_c7
:goto_76
if-nez v7, :cond_a0
const/16 v19, 0x0
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v6, v1, v4}, Ljava/io/OutputStream;->write([BII)V
const/16 v19, 0x0
move-object/from16 v0, p2
array-length v0, v0
move/from16 v20, v0
move-object/from16 v0, p1
move-object/from16 v1, p2
move/from16 v2, v19
move/from16 v3, v20
invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
move/from16 v0, v18
if-ge v4, v0, :cond_a0
sub-int v19, v18, v4
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v6, v4, v1}, Ljava/io/OutputStream;->write([BII)V
:cond_a0
const-wide/16 v19, 0x0
cmp-long v19, v14, v19
if-lez v19, :cond_b1
const/16 v17, 0x0
:goto_a8
move/from16 v0, v17
int-to-long v0, v0
move-wide/from16 v19, v0
cmp-long v19, v14, v19
if-gtz v19, :cond_151
:goto_b1
:cond_b1
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Ljava/io/InputStream;->read([B)I
move-result v8
const/16 v19, -0x1
move/from16 v0, v19
if-eq v8, v0, :cond_12
const/16 v19, 0x0
move-object/from16 v0, p1
move/from16 v1, v19
invoke-virtual {v0, v6, v1, v8}, Ljava/io/OutputStream;->write([BII)V
goto :goto_b1
:cond_c7
add-int/lit8 v11, v10, 0x1
aget-byte v19, v6, v10
move/from16 v0, v19
and-int/lit16 v9, v0, 0xff
const/16 v19, 0xe0
move/from16 v0, v19
if-lt v9, v0, :cond_171
const/16 v19, 0xef
move/from16 v0, v19
if-gt v9, v0, :cond_171
const/16 v19, 0xe1
move/from16 v0, v19
if-ne v9, v0, :cond_139
const/16 v19, 0x2
const/16 v20, 0x0
move/from16 v0, v19
move/from16 v1, v20
invoke-static {v6, v11, v0, v1}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v5
const/4 v7, 0x1
const/16 v19, 0x0
add-int/lit8 v20, v11, -0x2
move-object/from16 v0, p1
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v6, v1, v2}, Ljava/io/OutputStream;->write([BII)V
const/16 v19, 0x0
move-object/from16 v0, p2
array-length v0, v0
move/from16 v20, v0
move-object/from16 v0, p1
move-object/from16 v1, p2
move/from16 v2, v19
move/from16 v3, v20
invoke-virtual {v0, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V
add-int v19, v11, v5
move/from16 v0, v19
move/from16 v1, v18
if-le v0, v1, :cond_11f
add-int v19, v11, v5
sub-int v19, v19, v18
move/from16 v0, v19
int-to-long v14, v0
move v10, v11
goto/16 :goto_76
:cond_11f
add-int v19, v11, v5
move/from16 v0, v19
move/from16 v1, v18
if-ge v0, v1, :cond_171
add-int v19, v11, v5
sub-int v20, v18, v5
sub-int v20, v20, v11
move-object/from16 v0, p1
move/from16 v1, v19
move/from16 v2, v20
invoke-virtual {v0, v6, v1, v2}, Ljava/io/OutputStream;->write([BII)V
move v10, v11
goto/16 :goto_76
:cond_139
const/16 v19, 0x2
const/16 v20, 0x0
move/from16 v0, v19
move/from16 v1, v20
invoke-static {v6, v11, v0, v1}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v5
add-int v10, v11, v5
const/16 v19, 0xe0
move/from16 v0, v19
if-ne v9, v0, :cond_16e
move v4, v10
move v11, v10
goto/16 :goto_5c
:cond_151
move/from16 v0, v17
int-to-long v0, v0
move-wide/from16 v19, v0
sub-long v19, v14, v19
move-object/from16 v0, p0
move-wide/from16 v1, v19
invoke-virtual {v0, v1, v2}, Ljava/io/InputStream;->skip(J)J
move-result-wide v12
move/from16 v0, v17
int-to-long v0, v0
move-wide/from16 v19, v0
add-long v19, v19, v12
move-wide/from16 v0, v19
long-to-int v0, v0
move/from16 v17, v0
goto/16 :goto_a8
:cond_16e
move v11, v10
goto/16 :goto_5c
:cond_171
move v10, v11
goto/16 :goto_76
.end method
.method public static getDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B
.registers 5
new-instance v0, Lcom/pinguo/lib/image/PGExifInfo;
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifData()[B
move-result-object v1
invoke-direct {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;-><init>([B)V
sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->setMake(Ljava/lang/String;)V
sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->setModel(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/pinguo/lib/image/PGExifInfo;->setOrientation(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->setLocation(Landroid/location/Location;)V
const-string/jumbo v1, "Camera360"
invoke-virtual {v0, v1}, Lcom/pinguo/lib/image/PGExifInfo;->setSoftware(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/pinguo/lib/image/PGExifInfo;->setTimestamp(J)V
invoke-virtual {v0}, Lcom/pinguo/lib/image/PGExifInfo;->getExifData()[B
move-result-object v1
return-object v1
.end method
.method private static getExifAppData(Ljava/io/InputStream;III)[B
.registers 15
const/16 v8, 0x2000
const/4 v10, 0x4
const/4 v9, 0x0
new-instance v2, Ljava/io/ByteArrayOutputStream;
const/high16 v7, 0x1
invoke-direct {v2, v7}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
const/16 v7, 0xff
invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
const/16 v7, 0xe1
invoke-virtual {v2, v7}, Ljava/io/ByteArrayOutputStream;->write(I)V
invoke-virtual {v2, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V
invoke-virtual {v2, p2}, Ljava/io/ByteArrayOutputStream;->write(I)V
add-int/lit8 v6, p3, -0x2
new-array v0, v8, [B
const/4 v5, -0x1
const/4 v3, 0x0
const/4 v4, 0x0
:goto_22
sub-int v4, v6, v3
if-gtz v4, :cond_2b
if-eq v3, v6, :cond_40
new-array v1, v9, [B
:goto_2a
:cond_2a
return-object v1
:cond_2b
if-le v4, v8, :cond_36
invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I
move-result v5
:goto_31
if-gez v5, :cond_3b
new-array v1, v9, [B
goto :goto_2a
:cond_36
invoke-virtual {p0, v0, v9, v4}, Ljava/io/InputStream;->read([BII)I
move-result v5
goto :goto_31
:cond_3b
invoke-virtual {v2, v0, v9, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
add-int/2addr v3, v5
goto :goto_22
:cond_40
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
array-length v7, v1
const v8, 0x10002
if-le v7, v8, :cond_4d
new-array v1, v9, [B
goto :goto_2a
:cond_4d
invoke-static {v1, v10, v10, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v7
const v8, 0x45786966
if-ne v7, v8, :cond_5f
const/16 v7, 0x8
const/4 v8, 0x2
invoke-static {v1, v7, v8, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v7
if-eqz v7, :cond_2a
:cond_5f
const/4 v1, 0x0
goto :goto_2a
.end method
.method public static getExifData(Ljava/lang/String;)[B
.registers 15
const/16 v13, 0xff
const/4 v12, -0x1
const/4 v5, 0x0
:try_start_4
new-instance v6, Ljava/io/BufferedInputStream;
new-instance v10, Ljava/io/FileInputStream;
invoke-direct {v10, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
invoke-direct {v6, v10}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_e
:try_end_e
.catchall {:try_start_4 .. :try_end_e} :catchall_da
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_e} :catch_cb
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I
move-result v1
if-eq v1, v13, :cond_21
const/4 v10, 0x0
new-array v4, v10, [B
:try_end_17
.catchall {:try_start_e .. :try_end_17} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_17} :catch_ea
if-eqz v6, :cond_ed
:try_start_19
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_1c
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1e
const/4 v5, 0x0
:goto_1d
:cond_1d
return-object v4
:catch_1e
move-exception v10
move-object v5, v6
goto :goto_1d
:cond_21
:try_start_21
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I
move-result v2
const/16 v10, 0xd8
if-eq v2, v10, :cond_b6
const/4 v10, 0x0
new-array v4, v10, [B
:try_end_2c
.catchall {:try_start_21 .. :try_end_2c} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_21 .. :try_end_2c} :catch_ea
if-eqz v6, :cond_ed
:try_start_2e
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_31
.catch Ljava/io/IOException; {:try_start_2e .. :try_end_31} :catch_33
const/4 v5, 0x0
goto :goto_1d
:catch_33
move-exception v10
move-object v5, v6
goto :goto_1d
:cond_36
:try_start_36
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I
move-result v9
if-ne v9, v12, :cond_49
const/4 v10, 0x0
new-array v4, v10, [B
:try_end_3f
.catchall {:try_start_36 .. :try_end_3f} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_36 .. :try_end_3f} :catch_ea
if-eqz v6, :cond_ed
:try_start_41
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_44
.catch Ljava/io/IOException; {:try_start_41 .. :try_end_44} :catch_46
const/4 v5, 0x0
goto :goto_1d
:catch_46
move-exception v10
move-object v5, v6
goto :goto_1d
:try_start_49
:cond_49
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I
move-result v7
if-ne v7, v12, :cond_5c
const/4 v10, 0x0
new-array v4, v10, [B
:try_end_52
.catchall {:try_start_49 .. :try_end_52} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_49 .. :try_end_52} :catch_ea
if-eqz v6, :cond_ed
:try_start_54
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_57
.catch Ljava/io/IOException; {:try_start_54 .. :try_end_57} :catch_59
const/4 v5, 0x0
goto :goto_1d
:catch_59
move-exception v10
move-object v5, v6
goto :goto_1d
:cond_5c
:try_start_5c
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I
move-result v8
if-ne v8, v12, :cond_6f
const/4 v10, 0x0
new-array v4, v10, [B
:try_end_65
.catchall {:try_start_5c .. :try_end_65} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_5c .. :try_end_65} :catch_ea
if-eqz v6, :cond_ed
:try_start_67
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_6a
.catch Ljava/io/IOException; {:try_start_67 .. :try_end_6a} :catch_6c
const/4 v5, 0x0
goto :goto_1d
:catch_6c
move-exception v10
move-object v5, v6
goto :goto_1d
:cond_6f
:try_start_6f
invoke-static {v7, v8}, Lcom/pinguo/lib/image/Exif;->getLen(II)I
move-result v0
const/16 v10, 0xe1
if-ne v9, v10, :cond_87
invoke-static {v6, v7, v8, v0}, Lcom/pinguo/lib/image/Exif;->getExifAppData(Ljava/io/InputStream;III)[B
:try_end_7a
.catchall {:try_start_6f .. :try_end_7a} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_6f .. :try_end_7a} :catch_ea
move-result-object v4
if-eqz v4, :cond_b6
if-eqz v6, :cond_ed
:try_start_7f
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_82
.catch Ljava/io/IOException; {:try_start_7f .. :try_end_82} :catch_84
const/4 v5, 0x0
goto :goto_1d
:catch_84
move-exception v10
move-object v5, v6
goto :goto_1d
:cond_87
const/16 v10, 0xe0
if-ge v9, v10, :cond_8f
const/16 v10, 0xef
if-gt v9, v10, :cond_a7
:cond_8f
add-int/lit8 v10, v0, -0x2
int-to-long v10, v10
:try_start_92
invoke-static {v6, v10, v11}, Lcom/pinguo/lib/image/Exif;->skip(Ljava/io/InputStream;J)Z
move-result v10
if-nez v10, :cond_b6
const/4 v10, 0x0
new-array v4, v10, [B
:try_end_9b
.catchall {:try_start_92 .. :try_end_9b} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_92 .. :try_end_9b} :catch_ea
if-eqz v6, :cond_ed
:try_start_9d
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_a0
.catch Ljava/io/IOException; {:try_start_9d .. :try_end_a0} :catch_a3
const/4 v5, 0x0
goto/16 :goto_1d
:catch_a3
move-exception v10
move-object v5, v6
goto/16 :goto_1d
:cond_a7
const/4 v10, 0x0
:try_start_a8
new-array v4, v10, [B
:try_end_aa
.catchall {:try_start_a8 .. :try_end_aa} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_aa} :catch_ea
if-eqz v6, :cond_ed
:try_start_ac
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_af
.catch Ljava/io/IOException; {:try_start_ac .. :try_end_af} :catch_b2
const/4 v5, 0x0
goto/16 :goto_1d
:catch_b2
move-exception v10
move-object v5, v6
goto/16 :goto_1d
:try_start_b6
:cond_b6
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->read()I
move-result v10
if-eq v10, v13, :cond_36
const/4 v10, 0x0
new-array v4, v10, [B
:try_end_bf
.catchall {:try_start_b6 .. :try_end_bf} :catchall_e7
.catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_bf} :catch_ea
if-eqz v6, :cond_ed
:try_start_c1
invoke-virtual {v6}, Ljava/io/BufferedInputStream;->close()V
:try_end_c4
.catch Ljava/io/IOException; {:try_start_c1 .. :try_end_c4} :catch_c7
const/4 v5, 0x0
goto/16 :goto_1d
:catch_c7
move-exception v10
move-object v5, v6
goto/16 :goto_1d
:catch_cb
move-exception v3
:goto_cc
:try_start_cc
invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
const/4 v10, 0x0
new-array v4, v10, [B
:try_end_d2
.catchall {:try_start_cc .. :try_end_d2} :catchall_da
if-eqz v5, :cond_1d
:try_start_d4
invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
:try_end_d7
.catch Ljava/io/IOException; {:try_start_d4 .. :try_end_d7} :catch_e2
const/4 v5, 0x0
goto/16 :goto_1d
:catchall_da
move-exception v10
:goto_db
if-eqz v5, :cond_e1
:try_start_dd
invoke-virtual {v5}, Ljava/io/BufferedInputStream;->close()V
:try_end_e0
.catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e5
const/4 v5, 0x0
:cond_e1
:goto_e1
throw v10
:catch_e2
move-exception v10
goto/16 :goto_1d
:catch_e5
move-exception v11
goto :goto_e1
:catchall_e7
move-exception v10
move-object v5, v6
goto :goto_db
:catch_ea
move-exception v3
move-object v5, v6
goto :goto_cc
:cond_ed
move-object v5, v6
goto/16 :goto_1d
.end method
.method public static getExifData([B)[B
.registers 6
const/4 v4, 0x0
invoke-static {p0}, Lcom/pinguo/lib/image/Exif;->getExifDataFromTo([B)Lcom/pinguo/lib/image/Exif$FromTo;
move-result-object v1
if-nez v1, :cond_a
new-array v0, v4, [B
:goto_9
return-object v0
:cond_a
#getter for: Lcom/pinguo/lib/image/Exif$FromTo;->length:I
invoke-static {v1}, Lcom/pinguo/lib/image/Exif$FromTo;->access$0(Lcom/pinguo/lib/image/Exif$FromTo;)I
move-result v2
new-array v0, v2, [B
#getter for: Lcom/pinguo/lib/image/Exif$FromTo;->from:I
invoke-static {v1}, Lcom/pinguo/lib/image/Exif$FromTo;->access$1(Lcom/pinguo/lib/image/Exif$FromTo;)I
move-result v2
#getter for: Lcom/pinguo/lib/image/Exif$FromTo;->length:I
invoke-static {v1}, Lcom/pinguo/lib/image/Exif$FromTo;->access$0(Lcom/pinguo/lib/image/Exif$FromTo;)I
move-result v3
invoke-static {p0, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_9
.end method
.method private static getExifDataFromTo([B)Lcom/pinguo/lib/image/Exif$FromTo;
.registers 13
const/4 v6, 0x0
const/16 v11, 0xff
const/4 v10, 0x2
const/4 v9, 0x0
invoke-static {p0}, Lcom/pinguo/lib/image/Exif;->isJpeg([B)Z
move-result v7
if-nez v7, :cond_14
new-instance v6, Ljava/lang/IllegalArgumentException;
const-string/jumbo v7, "jpeg data \u6570\u636e\u4e0d\u6b63\u786e"
invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_14
array-length v1, p0
const/4 v4, 0x2
const/4 v2, 0x0
move v5, v4
:goto_18
add-int/lit8 v7, v5, 0x2
if-ge v7, v1, :cond_82
add-int/lit8 v4, v5, 0x1
aget-byte v7, p0, v5
and-int/lit16 v7, v7, 0xff
if-eq v7, v11, :cond_26
:goto_24
:cond_24
move-object v0, v6
:goto_25
return-object v0
:cond_26
aget-byte v7, p0, v4
and-int/lit16 v3, v7, 0xff
if-ne v3, v11, :cond_2e
move v5, v4
goto :goto_18
:cond_2e
const/16 v7, 0xd8
if-eq v3, v7, :cond_24
const/16 v7, 0xd9
if-eq v3, v7, :cond_24
const/16 v7, 0xc0
if-lt v3, v7, :cond_24
if-ge v3, v11, :cond_24
add-int/lit8 v4, v4, 0x1
invoke-static {p0, v4, v10, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v2
if-lt v2, v10, :cond_48
add-int v7, v4, v2
if-le v7, v1, :cond_53
:cond_48
const-string/jumbo v7, "Exif"
const-string/jumbo v8, "Invalid length"
invoke-static {v7, v8}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v6
goto :goto_25
:cond_53
const/16 v7, 0xe1
if-ne v3, v7, :cond_7f
const/16 v7, 0x8
if-lt v2, v7, :cond_7f
add-int/lit8 v7, v4, 0x2
const/4 v8, 0x4
invoke-static {p0, v7, v8, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v7
const v8, 0x45786966
if-ne v7, v8, :cond_7f
add-int/lit8 v7, v4, 0x6
invoke-static {p0, v7, v10, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v7
if-nez v7, :cond_7f
new-instance v0, Lcom/pinguo/lib/image/Exif$FromTo;
invoke-direct {v0, v6}, Lcom/pinguo/lib/image/Exif$FromTo;-><init>(Lcom/pinguo/lib/image/Exif$FromTo;)V
add-int/lit8 v6, v4, -0x2
#setter for: Lcom/pinguo/lib/image/Exif$FromTo;->from:I
invoke-static {v0, v6}, Lcom/pinguo/lib/image/Exif$FromTo;->access$3(Lcom/pinguo/lib/image/Exif$FromTo;I)V
add-int/lit8 v6, v2, 0x2
#setter for: Lcom/pinguo/lib/image/Exif$FromTo;->length:I
invoke-static {v0, v6}, Lcom/pinguo/lib/image/Exif$FromTo;->access$4(Lcom/pinguo/lib/image/Exif$FromTo;I)V
goto :goto_25
:cond_7f
add-int/2addr v4, v2
move v5, v4
goto :goto_18
:cond_82
move v4, v5
goto :goto_24
.end method
.method public static getExifOrientationFlag(Ljava/lang/String;)I
.registers 4
new-instance v0, Landroid/media/ExifInterface;
invoke-direct {v0, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "Orientation"
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
move-result v1
return v1
.end method
.method private static getLen(II)I
.registers 3
shl-int/lit8 v0, p0, 0x8
or-int/2addr v0, p1
return v0
.end method
.method public static getOrientation(I)I
.registers 2
const/4 v0, 0x0
packed-switch p0, :pswitch_data_e
:pswitch_4
:goto_4
return v0
:pswitch_5
const/16 v0, 0x5a
goto :goto_4
:pswitch_8
const/16 v0, 0xb4
goto :goto_4
:pswitch_b
const/16 v0, 0x10e
goto :goto_4
:pswitch_data_e
.packed-switch 0x1
:pswitch_4
:pswitch_4
:pswitch_8
:pswitch_4
:pswitch_4
:pswitch_5
:pswitch_4
:pswitch_b
.end packed-switch
.end method
.method public static getOrientation([B)I
.registers 16
const/16 v14, 0x8
const/4 v3, 0x1
const/4 v13, 0x4
const/4 v12, 0x2
const/4 v9, 0x0
if-nez p0, :cond_9
:goto_8
return v9
:cond_9
const/4 v5, 0x0
const/4 v2, 0x0
:goto_b
:cond_b
add-int/lit8 v10, v5, 0x3
array-length v11, p0
if-ge v10, v11, :cond_1b
add-int/lit8 v6, v5, 0x1
aget-byte v10, p0, v5
and-int/lit16 v10, v10, 0xff
const/16 v11, 0xff
if-eq v10, v11, :cond_35
move v5, v6
:goto_1b
:cond_1b
if-le v2, v14, :cond_b6
invoke-static {p0, v5, v13, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v8
const v10, 0x49492a00
if-eq v8, v10, :cond_85
const v10, 0x4d4d002a
if-eq v8, v10, :cond_85
const-string/jumbo v10, "Exif"
const-string/jumbo v11, "Invalid byte order"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
:cond_35
aget-byte v10, p0, v6
and-int/lit16 v4, v10, 0xff
const/16 v10, 0xff
if-ne v4, v10, :cond_3f
move v5, v6
goto :goto_b
:cond_3f
add-int/lit8 v5, v6, 0x1
const/16 v10, 0xd8
if-eq v4, v10, :cond_b
if-eq v4, v3, :cond_b
const/16 v10, 0xd9
if-eq v4, v10, :cond_1b
const/16 v10, 0xda
if-eq v4, v10, :cond_1b
invoke-static {p0, v5, v12, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v2
if-lt v2, v12, :cond_5a
add-int v10, v5, v2
array-length v11, p0
if-le v10, v11, :cond_64
:cond_5a
const-string/jumbo v10, "Exif"
const-string/jumbo v11, "Invalid length"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
:cond_64
const/16 v10, 0xe1
if-ne v4, v10, :cond_82
if-lt v2, v14, :cond_82
add-int/lit8 v10, v5, 0x2
invoke-static {p0, v10, v13, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v10
const v11, 0x45786966
if-ne v10, v11, :cond_82
add-int/lit8 v10, v5, 0x6
invoke-static {p0, v10, v12, v9}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v10
if-nez v10, :cond_82
add-int/lit8 v5, v5, 0x8
add-int/lit8 v2, v2, -0x8
goto :goto_1b
:cond_82
add-int/2addr v5, v2
const/4 v2, 0x0
goto :goto_b
:cond_85
const v10, 0x49492a00
if-ne v8, v10, :cond_a3
:goto_8a
add-int/lit8 v10, v5, 0x4
invoke-static {p0, v10, v13, v3}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v10
add-int/lit8 v0, v10, 0x2
const/16 v10, 0xa
if-lt v0, v10, :cond_98
if-le v0, v2, :cond_a5
:cond_98
const-string/jumbo v10, "Exif"
const-string/jumbo v11, "Invalid offset"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_8
:cond_a3
move v3, v9
goto :goto_8a
:cond_a5
add-int/2addr v5, v0
sub-int/2addr v2, v0
add-int/lit8 v10, v5, -0x2
invoke-static {p0, v10, v12, v3}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v0
move v1, v0
:goto_ae
add-int/lit8 v0, v1, -0x1
if-lez v1, :cond_b6
const/16 v10, 0xc
if-ge v2, v10, :cond_c1
:cond_b6
const-string/jumbo v10, "Exif"
const-string/jumbo v11, "Orientation not found"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_8
:cond_c1
invoke-static {p0, v5, v12, v3}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v8
const/16 v10, 0x112
if-ne v8, v10, :cond_d5
add-int/lit8 v9, v5, 0x8
invoke-static {p0, v9, v12, v3}, Lcom/pinguo/lib/image/Exif;->pack([BIIZ)I
move-result v7
invoke-static {v7}, Lcom/pinguo/lib/image/Exif;->getOrientation(I)I
move-result v9
goto/16 :goto_8
:cond_d5
add-int/lit8 v5, v5, 0xc
add-int/lit8 v2, v2, -0xc
move v1, v0
goto :goto_ae
.end method
.method public static getOrientationFlag(I)I
.registers 4
const/4 v1, 0x1
add-int/lit8 v2, p0, 0x2d
div-int/lit8 v0, v2, 0x5a
mul-int/lit8 p0, v0, 0x5a
sparse-switch p0, :sswitch_data_12
:sswitch_a
:goto_a
return v1
:sswitch_b
const/4 v1, 0x6
goto :goto_a
:sswitch_d
const/4 v1, 0x3
goto :goto_a
:sswitch_f
const/16 v1, 0x8
goto :goto_a
:sswitch_data_12
.sparse-switch
0x0 -> :sswitch_a
0x5a -> :sswitch_b
0xb4 -> :sswitch_d
0x10e -> :sswitch_f
.end sparse-switch
.end method
.method public static getPhotoOrientation(Ljava/lang/String;)I
.registers 4
:try_start_0
invoke-static {p0}, Lcom/pinguo/lib/image/Exif;->getExifOrientationFlag(Ljava/lang/String;)I
move-result v1
invoke-static {v1}, Lcom/pinguo/lib/image/Exif;->getOrientation(I)I
:try_end_7
.catch Ljava/io/IOException; {:try_start_0 .. :try_end_7} :catch_9
move-result v2
:goto_8
return v2
:catch_9
move-exception v0
const-string/jumbo v2, "Exif"
invoke-static {v2, v0}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v2, 0x0
goto :goto_8
.end method
.method public static getSonyDefaultPGExifData(Lcom/pinguo/camera360/photoedit/PictureInfo;I)[B
.registers 10
new-instance v2, Lcom/pinguo/lib/image/PGExifInfo;
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getExifData()[B
move-result-object v6
invoke-direct {v2, v6}, Lcom/pinguo/lib/image/PGExifInfo;-><init>([B)V
const/4 v5, 0x0
const/4 v4, 0x0
:try_start_b
new-instance v3, Landroid/media/ExifInterface;
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getEffectPath()Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v6}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "Model"
invoke-virtual {v3, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string/jumbo v6, "Make"
invoke-virtual {v3, v6}, Landroid/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;
:try_end_21
.catch Ljava/io/IOException; {:try_start_b .. :try_end_21} :catch_5d
move-result-object v4
:goto_22
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_2b
const-string/jumbo v4, "SONY"
:cond_2b
invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_3b
invoke-static {}, Lcom/pinguo/camera360/sony/model/ServerDeviceInstance;->getServerDevice()Lcom/pinguo/camera360/sony/model/ServerDevice;
move-result-object v0
if-eqz v0, :cond_3b
invoke-virtual {v0}, Lcom/pinguo/camera360/sony/model/ServerDevice;->getFriendlyName()Ljava/lang/String;
move-result-object v5
:cond_3b
invoke-virtual {v2, v4}, Lcom/pinguo/lib/image/PGExifInfo;->setMake(Ljava/lang/String;)V
invoke-virtual {v2, v5}, Lcom/pinguo/lib/image/PGExifInfo;->setModel(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Lcom/pinguo/lib/image/PGExifInfo;->setOrientation(I)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getLocation()Lcom/pinguo/lib/location/data/PGLocation;
move-result-object v6
invoke-virtual {v2, v6}, Lcom/pinguo/lib/image/PGExifInfo;->setLocation(Landroid/location/Location;)V
const-string/jumbo v6, "Camera360"
invoke-virtual {v2, v6}, Lcom/pinguo/lib/image/PGExifInfo;->setSoftware(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/photoedit/PictureInfo;->getTakenTime()J
move-result-wide v6
invoke-virtual {v2, v6, v7}, Lcom/pinguo/lib/image/PGExifInfo;->setTimestamp(J)V
invoke-virtual {v2}, Lcom/pinguo/lib/image/PGExifInfo;->getExifData()[B
move-result-object v6
return-object v6
:catch_5d
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_22
.end method
.method public static isJpeg([B)Z
.registers 5
const/4 v1, 0x0
if-nez p0, :cond_4
:cond_3
:goto_3
return v1
:cond_4
array-length v0, p0
const/16 v2, 0x400
if-lt v0, v2, :cond_3
invoke-static {p0, v1}, Lcom/pinguo/lib/image/Exif;->marker([BI)I
move-result v2
const v3, 0xffd8
if-ne v2, v3, :cond_3
const/4 v1, 0x1
goto :goto_3
.end method
.method protected static marker([BI)I
.registers 5
aget-byte v2, p0, p1
and-int/lit16 v0, v2, 0xff
add-int/lit8 p1, p1, 0x1
aget-byte v2, p0, p1
and-int/lit16 v1, v2, 0xff
shl-int/lit8 v2, v0, 0x8
or-int/2addr v2, v1
return v2
.end method
.method protected static pack([BIIZ)I
.registers 9
const/4 v1, 0x1
if-eqz p3, :cond_7
add-int/lit8 v3, p2, -0x1
add-int/2addr p1, v3
const/4 v1, -0x1
:cond_7
const/4 v2, 0x0
move v0, p2
:goto_9
add-int/lit8 p2, v0, -0x1
if-gtz v0, :cond_e
return v2
:cond_e
shl-int/lit8 v3, v2, 0x8
aget-byte v4, p0, p1
and-int/lit16 v4, v4, 0xff
or-int v2, v3, v4
add-int/2addr p1, v1
move v0, p2
goto :goto_9
.end method
.method private static skip(Ljava/io/InputStream;J)Z
.registers 13
const-wide/16 v8, 0x0
const/4 v6, 0x0
cmp-long v7, p1, v8
if-gtz v7, :cond_8
:cond_7
:goto_7
return v6
:cond_8
const-wide/16 v4, 0x0
const-wide/16 v0, 0x0
:goto_c
sub-long v0, p1, v4
cmp-long v7, v0, v8
if-gtz v7, :cond_18
cmp-long v7, v4, p1
if-nez v7, :cond_7
const/4 v6, 0x1
goto :goto_7
:cond_18
invoke-virtual {p0, v0, v1}, Ljava/io/InputStream;->skip(J)J
move-result-wide v2
cmp-long v7, v2, v8
if-lez v7, :cond_7
add-long/2addr v4, v2
goto :goto_c
.end method
.method protected static unpack([BIIIZ)V
.registers 8
if-eqz p4, :cond_12
const/4 v0, 0x0
:goto_3
if-lt v0, p2, :cond_6
:cond_5
return-void
:cond_6
add-int v1, p3, v0
and-int/lit16 v2, p1, 0xff
int-to-byte v2, v2
aput-byte v2, p0, v1
shr-int/lit8 p1, p1, 0x8
add-int/lit8 v0, v0, 0x1
goto :goto_3
:cond_12
add-int/lit8 v0, p2, -0x1
:goto_14
if-ltz v0, :cond_5
add-int v1, p3, v0
and-int/lit16 v2, p1, 0xff
int-to-byte v2, v2
aput-byte v2, p0, v1
shr-int/lit8 p1, p1, 0x8
add-int/lit8 v0, v0, -0x1
goto :goto_14
.end method
.method protected static unpack(IIZ)[B
.registers 6
new-array v0, p1, [B
if-eqz p2, :cond_12
const/4 v1, 0x0
:goto_5
if-lt v1, p1, :cond_8
:cond_7
return-object v0
:cond_8
and-int/lit16 v2, p0, 0xff
int-to-byte v2, v2
aput-byte v2, v0, v1
shr-int/lit8 p0, p0, 0x8
add-int/lit8 v1, v1, 0x1
goto :goto_5
:cond_12
add-int/lit8 v1, p1, -0x1
:goto_14
if-ltz v1, :cond_7
and-int/lit16 v2, p0, 0xff
int-to-byte v2, v2
aput-byte v2, v0, v1
shr-int/lit8 p0, p0, 0x8
add-int/lit8 v1, v1, -0x1
goto :goto_14
.end method