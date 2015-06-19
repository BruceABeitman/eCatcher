.class  Lcom/pinguo/album/exif/ExifData;
.super Ljava/lang/Object;
.source "ExifData.java"
.field private static final TAG:Ljava/lang/String; = "ExifData"
.field private static final USER_COMMENT_ASCII:[B
.field private static final USER_COMMENT_JIS:[B
.field private static final USER_COMMENT_UNICODE:[B
.field private final mByteOrder:Ljava/nio/ByteOrder;
.field private final mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
.field private mStripBytes:Ljava/util/ArrayList;
.field private mThumbnail:[B
.method static constructor <clinit>()V
.registers 7
const/16 v6, 0x8
const/4 v5, 0x2
const/4 v4, 0x1
const/4 v3, 0x0
const/16 v2, 0x49
new-array v0, v6, [B
const/16 v1, 0x41
aput-byte v1, v0, v3
const/16 v1, 0x53
aput-byte v1, v0, v4
const/16 v1, 0x43
aput-byte v1, v0, v5
const/4 v1, 0x3
aput-byte v2, v0, v1
const/4 v1, 0x4
aput-byte v2, v0, v1
sput-object v0, Lcom/pinguo/album/exif/ExifData;->USER_COMMENT_ASCII:[B
new-array v0, v6, [B
const/16 v1, 0x4a
aput-byte v1, v0, v3
aput-byte v2, v0, v4
const/16 v1, 0x53
aput-byte v1, v0, v5
sput-object v0, Lcom/pinguo/album/exif/ExifData;->USER_COMMENT_JIS:[B
new-array v0, v6, [B
const/16 v1, 0x55
aput-byte v1, v0, v3
const/16 v1, 0x4e
aput-byte v1, v0, v4
aput-byte v2, v0, v5
const/4 v1, 0x3
const/16 v2, 0x43
aput-byte v2, v0, v1
const/4 v1, 0x4
const/16 v2, 0x4f
aput-byte v2, v0, v1
const/4 v1, 0x5
const/16 v2, 0x44
aput-byte v2, v0, v1
const/4 v1, 0x6
const/16 v2, 0x45
aput-byte v2, v0, v1
sput-object v0, Lcom/pinguo/album/exif/ExifData;->USER_COMMENT_UNICODE:[B
return-void
.end method
.method constructor <init>(Ljava/nio/ByteOrder;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x5
new-array v0, v0, [Lcom/pinguo/album/exif/IfdData;
iput-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
iput-object p1, p0, Lcom/pinguo/album/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;
return-void
.end method
.method protected addIfdData(Lcom/pinguo/album/exif/IfdData;)V
.registers 4
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
invoke-virtual {p1}, Lcom/pinguo/album/exif/IfdData;->getId()I
move-result v1
aput-object p1, v0, v1
return-void
.end method
.method protected addTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
.registers 4
if-eqz p1, :cond_b
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getIfd()I
move-result v0
invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/exif/ExifData;->addTag(Lcom/pinguo/album/exif/ExifTag;I)Lcom/pinguo/album/exif/ExifTag;
move-result-object v1
:goto_a
return-object v1
:cond_b
const/4 v1, 0x0
goto :goto_a
.end method
.method protected addTag(Lcom/pinguo/album/exif/ExifTag;I)Lcom/pinguo/album/exif/ExifTag;
.registers 5
if-eqz p1, :cond_11
invoke-static {p2}, Lcom/pinguo/album/exif/ExifTag;->isValidIfd(I)Z
move-result v1
if-eqz v1, :cond_11
invoke-virtual {p0, p2}, Lcom/pinguo/album/exif/ExifData;->getOrCreateIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/IfdData;->setTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
move-result-object v1
:goto_10
return-object v1
:cond_11
const/4 v1, 0x0
goto :goto_10
.end method
.method protected clearThumbnailAndStrips()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mThumbnail:[B
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 10
const/4 v6, 0x1
const/4 v7, 0x0
if-ne p0, p1, :cond_6
move v4, v6
:goto_5
return v4
:cond_6
if-nez p1, :cond_a
move v4, v7
goto :goto_5
:cond_a
instance-of v4, p1, Lcom/pinguo/album/exif/ExifData;
if-eqz v4, :cond_72
move-object v0, p1
check-cast v0, Lcom/pinguo/album/exif/ExifData;
iget-object v4, v0, Lcom/pinguo/album/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;
iget-object v5, p0, Lcom/pinguo/album/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;
if-ne v4, v5, :cond_2f
iget-object v4, v0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
iget-object v5, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v5
if-ne v4, v5, :cond_2f
iget-object v4, v0, Lcom/pinguo/album/exif/ExifData;->mThumbnail:[B
iget-object v5, p0, Lcom/pinguo/album/exif/ExifData;->mThumbnail:[B
invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
move-result v4
if-nez v4, :cond_31
:cond_2f
move v4, v7
goto :goto_5
:cond_31
const/4 v1, 0x0
:goto_32
iget-object v4, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-lt v1, v4, :cond_40
const/4 v1, 0x0
:goto_3b
const/4 v4, 0x5
if-lt v1, v4, :cond_5b
move v4, v6
goto :goto_5
:cond_40
iget-object v4, v0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v4
check-cast v4, [B
iget-object v5, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, [B
invoke-static {v4, v5}, Ljava/util/Arrays;->equals([B[B)Z
move-result v4
if-nez v4, :cond_58
move v4, v7
goto :goto_5
:cond_58
add-int/lit8 v1, v1, 0x1
goto :goto_32
:cond_5b
invoke-virtual {v0, v1}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v2
invoke-virtual {p0, v1}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v3
if-eq v2, v3, :cond_6f
if-eqz v2, :cond_6f
invoke-virtual {v2, v3}, Lcom/pinguo/album/exif/IfdData;->equals(Ljava/lang/Object;)Z
move-result v4
if-nez v4, :cond_6f
move v4, v7
goto :goto_5
:cond_6f
add-int/lit8 v1, v1, 0x1
goto :goto_3b
:cond_72
move v4, v7
goto :goto_5
.end method
.method protected getAllTags()Ljava/util/List;
.registers 11
const/4 v5, 0x0
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v7, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
array-length v8, v7
move v6, v5
:goto_a
if-lt v6, v8, :cond_14
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v4
if-nez v4, :cond_13
const/4 v1, 0x0
:cond_13
return-object v1
:cond_14
aget-object v0, v7, v6
if-eqz v0, :cond_22
invoke-virtual {v0}, Lcom/pinguo/album/exif/IfdData;->getAllTags()[Lcom/pinguo/album/exif/ExifTag;
move-result-object v3
if-eqz v3, :cond_22
array-length v9, v3
move v4, v5
:goto_20
if-lt v4, v9, :cond_26
:cond_22
add-int/lit8 v4, v6, 0x1
move v6, v4
goto :goto_a
:cond_26
aget-object v2, v3, v4
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v4, v4, 0x1
goto :goto_20
.end method
.method protected getAllTagsForIfd(I)Ljava/util/List;
.registers 9
const/4 v4, 0x0
iget-object v5, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
aget-object v0, v5, p1
if-nez v0, :cond_9
move-object v1, v4
:goto_8
:cond_8
return-object v1
:cond_9
invoke-virtual {v0}, Lcom/pinguo/album/exif/IfdData;->getAllTags()[Lcom/pinguo/album/exif/ExifTag;
move-result-object v3
if-nez v3, :cond_11
move-object v1, v4
goto :goto_8
:cond_11
new-instance v1, Ljava/util/ArrayList;
array-length v5, v3
invoke-direct {v1, v5}, Ljava/util/ArrayList;-><init>(I)V
array-length v6, v3
const/4 v5, 0x0
:goto_19
if-lt v5, v6, :cond_23
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v5
if-nez v5, :cond_8
move-object v1, v4
goto :goto_8
:cond_23
aget-object v2, v3, v5
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v5, v5, 0x1
goto :goto_19
.end method
.method protected getAllTagsForTagId(S)Ljava/util/List;
.registers 8
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v4, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
array-length v5, v4
const/4 v3, 0x0
:goto_9
if-lt v3, v5, :cond_13
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v3
if-nez v3, :cond_12
const/4 v1, 0x0
:cond_12
return-object v1
:cond_13
aget-object v0, v4, v3
if-eqz v0, :cond_20
invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v2
if-eqz v2, :cond_20
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_20
add-int/lit8 v3, v3, 0x1
goto :goto_9
.end method
.method protected getByteOrder()Ljava/nio/ByteOrder;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mByteOrder:Ljava/nio/ByteOrder;
return-object v0
.end method
.method protected getCompressedThumbnail()[B
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mThumbnail:[B
return-object v0
.end method
.method protected getIfdData(I)Lcom/pinguo/album/exif/IfdData;
.registers 3
invoke-static {p1}, Lcom/pinguo/album/exif/ExifTag;->isValidIfd(I)Z
move-result v0
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
aget-object v0, v0, p1
:goto_a
return-object v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method protected getOrCreateIfdData(I)Lcom/pinguo/album/exif/IfdData;
.registers 4
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
aget-object v0, v1, p1
if-nez v0, :cond_f
new-instance v0, Lcom/pinguo/album/exif/IfdData;
invoke-direct {v0, p1}, Lcom/pinguo/album/exif/IfdData;-><init>(I)V
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
aput-object v0, v1, p1
:cond_f
return-object v0
.end method
.method protected getStrip(I)[B
.registers 3
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, [B
return-object v0
.end method
.method protected getStripCount()I
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method protected getTag(SI)Lcom/pinguo/album/exif/ExifTag;
.registers 5
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
aget-object v0, v1, p2
if-nez v0, :cond_8
const/4 v1, 0x0
:goto_7
return-object v1
:cond_8
invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v1
goto :goto_7
.end method
.method protected getUserComment()Ljava/lang/String;
.registers 11
const/4 v8, 0x0
const/4 v5, 0x0
const/16 v7, 0x8
iget-object v6, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
aget-object v3, v6, v8
if-nez v3, :cond_b
:cond_a
:goto_a
return-object v5
:cond_b
sget v6, Lcom/pinguo/album/exif/ExifInterface;->TAG_USER_COMMENT:I
invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->getTrueTagKey(I)S
move-result v6
invoke-virtual {v3, v6}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v4
if-eqz v4, :cond_a
invoke-virtual {v4}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v6
if-lt v6, v7, :cond_a
invoke-virtual {v4}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v6
new-array v0, v6, [B
invoke-virtual {v4, v0}, Lcom/pinguo/album/exif/ExifTag;->getBytes([B)V
new-array v1, v7, [B
invoke-static {v0, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
:try_start_2b
sget-object v6, Lcom/pinguo/album/exif/ExifData;->USER_COMMENT_ASCII:[B
invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z
move-result v6
if-eqz v6, :cond_42
new-instance v6, Ljava/lang/String;
const/16 v7, 0x8
array-length v8, v0
add-int/lit8 v8, v8, -0x8
const-string/jumbo v9, "US-ASCII"
invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
move-object v5, v6
goto :goto_a
:cond_42
sget-object v6, Lcom/pinguo/album/exif/ExifData;->USER_COMMENT_JIS:[B
invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z
move-result v6
if-eqz v6, :cond_59
new-instance v6, Ljava/lang/String;
const/16 v7, 0x8
array-length v8, v0
add-int/lit8 v8, v8, -0x8
const-string/jumbo v9, "EUC-JP"
invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
move-object v5, v6
goto :goto_a
:cond_59
sget-object v6, Lcom/pinguo/album/exif/ExifData;->USER_COMMENT_UNICODE:[B
invoke-static {v1, v6}, Ljava/util/Arrays;->equals([B[B)Z
move-result v6
if-eqz v6, :cond_a
new-instance v6, Ljava/lang/String;
const/16 v7, 0x8
array-length v8, v0
add-int/lit8 v8, v8, -0x8
const-string/jumbo v9, "UTF-16"
invoke-direct {v6, v0, v7, v8, v9}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
:try_end_6e
.catch Ljava/io/UnsupportedEncodingException; {:try_start_2b .. :try_end_6e} :catch_70
move-object v5, v6
goto :goto_a
:catch_70
move-exception v2
const-string/jumbo v6, "ExifData"
const-string/jumbo v7, "Failed to decode the user comment"
invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a
.end method
.method protected hasCompressedThumbnail()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mThumbnail:[B
if-eqz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method protected hasUncompressedStrip()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected removeTag(SI)V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
aget-object v0, v1, p2
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
goto :goto_6
.end method
.method protected removeThumbnailData()V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifData;->clearThumbnailAndStrips()V
iget-object v0, p0, Lcom/pinguo/album/exif/ExifData;->mIfdDatas:[Lcom/pinguo/album/exif/IfdData;
const/4 v1, 0x1
const/4 v2, 0x0
aput-object v2, v0, v1
return-void
.end method
.method protected setCompressedThumbnail([B)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/exif/ExifData;->mThumbnail:[B
return-void
.end method
.method protected setStripBytes(I[B)V
.registers 6
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge p1, v1, :cond_e
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;
:goto_d
return-void
:cond_e
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
:goto_14
if-lt v0, p1, :cond_1c
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_d
:cond_1c
iget-object v1, p0, Lcom/pinguo/album/exif/ExifData;->mStripBytes:Ljava/util/ArrayList;
const/4 v2, 0x0
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_14
.end method