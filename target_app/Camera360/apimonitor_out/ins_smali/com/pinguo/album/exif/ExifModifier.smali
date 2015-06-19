.class  Lcom/pinguo/album/exif/ExifModifier;
.super Ljava/lang/Object;
.source "ExifModifier.java"
.field public static final DEBUG:Z = false
.field public static final TAG:Ljava/lang/String; = "ExifModifier"
.field private final mByteBuffer:Ljava/nio/ByteBuffer;
.field private final mInterface:Lcom/pinguo/album/exif/ExifInterface;
.field private mOffsetBase:I
.field private final mTagOffsets:Ljava/util/List;
.field private final mTagToModified:Lcom/pinguo/album/exif/ExifData;
.method protected constructor <init>(Ljava/nio/ByteBuffer;Lcom/pinguo/album/exif/ExifInterface;)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v3, Ljava/util/ArrayList;
invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
iput-object v3, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagOffsets:Ljava/util/List;
iput-object p1, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I
move-result v3
iput v3, p0, Lcom/pinguo/album/exif/ExifModifier;->mOffsetBase:I
iput-object p2, p0, Lcom/pinguo/album/exif/ExifModifier;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
const/4 v0, 0x0
:try_start_15
new-instance v1, Lcom/pinguo/album/exif/ByteBufferInputStream;
invoke-direct {v1, p1}, Lcom/pinguo/album/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
:try_start_1a
:try_end_1a
.catchall {:try_start_15 .. :try_end_1a} :catchall_3e
iget-object v3, p0, Lcom/pinguo/album/exif/ExifModifier;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
invoke-static {v1, v3}, Lcom/pinguo/album/exif/ExifParser;->parse(Ljava/io/InputStream;Lcom/pinguo/album/exif/ExifInterface;)Lcom/pinguo/album/exif/ExifParser;
move-result-object v2
new-instance v3, Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifParser;->getByteOrder()Ljava/nio/ByteOrder;
move-result-object v4
invoke-direct {v3, v4}, Lcom/pinguo/album/exif/ExifData;-><init>(Ljava/nio/ByteOrder;)V
iput-object v3, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagToModified:Lcom/pinguo/album/exif/ExifData;
iget v3, p0, Lcom/pinguo/album/exif/ExifModifier;->mOffsetBase:I
invoke-virtual {v2}, Lcom/pinguo/album/exif/ExifParser;->getTiffStartPosition()I
move-result v4
add-int/2addr v3, v4
iput v3, p0, Lcom/pinguo/album/exif/ExifModifier;->mOffsetBase:I
iget-object v3, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
const/4 v4, 0x0
invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
:try_end_3a
.catchall {:try_start_1a .. :try_end_3a} :catchall_43
invoke-static {v1}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V
return-void
:catchall_3e
move-exception v3
:goto_3f
invoke-static {v0}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V
throw v3
:catchall_43
move-exception v3
move-object v0, v1
goto :goto_3f
.end method
.method private modify()V
.registers 5
iget-object v1, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {p0}, Lcom/pinguo/album/exif/ExifModifier;->getByteOrder()Ljava/nio/ByteOrder;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
iget-object v1, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagOffsets:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-nez v2, :cond_16
return-void
:cond_16
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/exif/ExifModifier$TagOffset;
iget-object v2, v0, Lcom/pinguo/album/exif/ExifModifier$TagOffset;->mTag:Lcom/pinguo/album/exif/ExifTag;
iget v3, v0, Lcom/pinguo/album/exif/ExifModifier$TagOffset;->mOffset:I
invoke-direct {p0, v2, v3}, Lcom/pinguo/album/exif/ExifModifier;->writeTagValue(Lcom/pinguo/album/exif/ExifTag;I)V
goto :goto_f
.end method
.method private writeTagValue(Lcom/pinguo/album/exif/ExifTag;I)V
.registers 10
const/4 v6, 0x0
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
iget v5, p0, Lcom/pinguo/album/exif/ExifModifier;->mOffsetBase:I
add-int/2addr v5, p2
invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v4
packed-switch v4, :pswitch_data_8c
:pswitch_10
:cond_10
:goto_10
return-void
:pswitch_11
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getStringByte()[B
move-result-object v0
array-length v4, v0
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v5
if-ne v4, v5, :cond_27
array-length v4, v0
add-int/lit8 v4, v4, -0x1
aput-byte v6, v0, v4
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
goto :goto_10
:cond_27
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4, v6}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;
goto :goto_10
:pswitch_32
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v2
:goto_37
if-ge v1, v2, :cond_10
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {p1, v1}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v5
long-to-int v5, v5
invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_37
:pswitch_46
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v2
:goto_4b
if-ge v1, v2, :cond_10
invoke-virtual {p1, v1}, Lcom/pinguo/album/exif/ExifTag;->getRational(I)Lcom/pinguo/album/exif/Rational;
move-result-object v3
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v3}, Lcom/pinguo/album/exif/Rational;->getNumerator()J
move-result-wide v5
long-to-int v5, v5
invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v3}, Lcom/pinguo/album/exif/Rational;->getDenominator()J
move-result-wide v5
long-to-int v5, v5
invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_4b
:pswitch_68
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v4
new-array v0, v4, [B
invoke-virtual {p1, v0}, Lcom/pinguo/album/exif/ExifTag;->getBytes([B)V
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {v4, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;
goto :goto_10
:pswitch_77
const/4 v1, 0x0
invoke-virtual {p1}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v2
:goto_7c
if-ge v1, v2, :cond_10
iget-object v4, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-virtual {p1, v1}, Lcom/pinguo/album/exif/ExifTag;->getValueAt(I)J
move-result-wide v5
long-to-int v5, v5
int-to-short v5, v5
invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putShort(S)Ljava/nio/ByteBuffer;
add-int/lit8 v1, v1, 0x1
goto :goto_7c
:pswitch_data_8c
.packed-switch 0x1
:pswitch_68
:pswitch_11
:pswitch_77
:pswitch_32
:pswitch_46
:pswitch_10
:pswitch_68
:pswitch_10
:pswitch_32
:pswitch_46
.end packed-switch
.end method
.method protected commit()Z
.registers 16
const/4 v11, 0x1
const/4 v10, 0x0
const/4 v5, 0x0
:try_start_3
new-instance v6, Lcom/pinguo/album/exif/ByteBufferInputStream;
iget-object v12, p0, Lcom/pinguo/album/exif/ExifModifier;->mByteBuffer:Ljava/nio/ByteBuffer;
invoke-direct {v6, v12}, Lcom/pinguo/album/exif/ByteBufferInputStream;-><init>(Ljava/nio/ByteBuffer;)V
:try_end_a
.catchall {:try_start_3 .. :try_end_a} :catchall_ed
const/4 v2, 0x0
const/4 v12, 0x5
:try_start_c
new-array v4, v12, [Lcom/pinguo/album/exif/IfdData;
const/4 v12, 0x0
iget-object v13, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagToModified:Lcom/pinguo/album/exif/ExifData;
const/4 v14, 0x0
invoke-virtual {v13, v14}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v13
aput-object v13, v4, v12
const/4 v12, 0x1
iget-object v13, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagToModified:Lcom/pinguo/album/exif/ExifData;
const/4 v14, 0x1
invoke-virtual {v13, v14}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v13
aput-object v13, v4, v12
const/4 v12, 0x2
iget-object v13, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagToModified:Lcom/pinguo/album/exif/ExifData;
const/4 v14, 0x2
invoke-virtual {v13, v14}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v13
aput-object v13, v4, v12
const/4 v12, 0x3
iget-object v13, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagToModified:Lcom/pinguo/album/exif/ExifData;
const/4 v14, 0x3
invoke-virtual {v13, v14}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v13
aput-object v13, v4, v12
const/4 v12, 0x4
iget-object v13, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagToModified:Lcom/pinguo/album/exif/ExifData;
const/4 v14, 0x4
invoke-virtual {v13, v14}, Lcom/pinguo/album/exif/ExifData;->getIfdData(I)Lcom/pinguo/album/exif/IfdData;
move-result-object v13
aput-object v13, v4, v12
const/4 v12, 0x0
aget-object v12, v4, v12
if-eqz v12, :cond_47
or-int/lit8 v2, v2, 0x1
:cond_47
const/4 v12, 0x1
aget-object v12, v4, v12
if-eqz v12, :cond_4e
or-int/lit8 v2, v2, 0x2
:cond_4e
const/4 v12, 0x2
aget-object v12, v4, v12
if-eqz v12, :cond_55
or-int/lit8 v2, v2, 0x4
:cond_55
const/4 v12, 0x4
aget-object v12, v4, v12
if-eqz v12, :cond_5c
or-int/lit8 v2, v2, 0x8
:cond_5c
const/4 v12, 0x3
aget-object v12, v4, v12
if-eqz v12, :cond_63
or-int/lit8 v2, v2, 0x10
:cond_63
iget-object v12, p0, Lcom/pinguo/album/exif/ExifModifier;->mInterface:Lcom/pinguo/album/exif/ExifInterface;
invoke-static {v6, v2, v12}, Lcom/pinguo/album/exif/ExifParser;->parse(Ljava/io/InputStream;ILcom/pinguo/album/exif/ExifInterface;)Lcom/pinguo/album/exif/ExifParser;
move-result-object v9
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifParser;->next()I
move-result v1
const/4 v0, 0x0
:goto_6e
const/4 v12, 0x5
if-ne v1, v12, :cond_7d
array-length v13, v4
move v12, v10
:goto_73
if-lt v12, v13, :cond_dc
invoke-direct {p0}, Lcom/pinguo/album/exif/ExifModifier;->modify()V
:try_end_78
.catchall {:try_start_c .. :try_end_78} :catchall_91
invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V
move v10, v11
:goto_7c
return v10
:cond_7d
packed-switch v1, :pswitch_data_f0
:goto_80
:cond_80
:try_start_80
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifParser;->next()I
move-result v1
goto :goto_6e
:pswitch_85
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifParser;->getCurrentIfd()I
move-result v12
aget-object v0, v4, v12
if-nez v0, :cond_80
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
:try_end_90
.catchall {:try_start_80 .. :try_end_90} :catchall_91
goto :goto_80
:catchall_91
move-exception v10
move-object v5, v6
:goto_93
invoke-static {v5}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V
throw v10
:try_start_97
:pswitch_97
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifParser;->getTag()Lcom/pinguo/album/exif/ExifTag;
move-result-object v8
invoke-virtual {v8}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S
move-result v12
invoke-virtual {v0, v12}, Lcom/pinguo/album/exif/IfdData;->getTag(S)Lcom/pinguo/album/exif/ExifTag;
move-result-object v7
if-eqz v7, :cond_80
invoke-virtual {v7}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v12
invoke-virtual {v8}, Lcom/pinguo/album/exif/ExifTag;->getComponentCount()I
move-result v13
if-ne v12, v13, :cond_b9
invoke-virtual {v7}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
move-result v12
invoke-virtual {v8}, Lcom/pinguo/album/exif/ExifTag;->getDataType()S
:try_end_b6
.catchall {:try_start_97 .. :try_end_b6} :catchall_91
move-result v13
if-eq v12, v13, :cond_bd
:cond_b9
invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V
goto :goto_7c
:try_start_bd
:cond_bd
iget-object v12, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagOffsets:Ljava/util/List;
new-instance v13, Lcom/pinguo/album/exif/ExifModifier$TagOffset;
invoke-virtual {v8}, Lcom/pinguo/album/exif/ExifTag;->getOffset()I
move-result v14
invoke-direct {v13, v7, v14}, Lcom/pinguo/album/exif/ExifModifier$TagOffset;-><init>(Lcom/pinguo/album/exif/ExifTag;I)V
invoke-interface {v12, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v8}, Lcom/pinguo/album/exif/ExifTag;->getTagId()S
move-result v12
invoke-virtual {v0, v12}, Lcom/pinguo/album/exif/IfdData;->removeTag(S)V
invoke-virtual {v0}, Lcom/pinguo/album/exif/IfdData;->getTagCount()I
move-result v12
if-nez v12, :cond_80
invoke-virtual {v9}, Lcom/pinguo/album/exif/ExifParser;->skipRemainingTagsInCurrentIfd()V
goto :goto_80
:cond_dc
aget-object v3, v4, v12
if-eqz v3, :cond_ea
invoke-virtual {v3}, Lcom/pinguo/album/exif/IfdData;->getTagCount()I
:try_end_e3
.catchall {:try_start_bd .. :try_end_e3} :catchall_91
move-result v14
if-lez v14, :cond_ea
invoke-static {v6}, Lcom/pinguo/album/exif/ExifInterface;->closeSilently(Ljava/io/Closeable;)V
goto :goto_7c
:cond_ea
add-int/lit8 v12, v12, 0x1
goto :goto_73
:catchall_ed
move-exception v10
goto :goto_93
nop
:pswitch_data_f0
.packed-switch 0x0
:pswitch_85
:pswitch_97
.end packed-switch
.end method
.method protected getByteOrder()Ljava/nio/ByteOrder;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagToModified:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v0}, Lcom/pinguo/album/exif/ExifData;->getByteOrder()Ljava/nio/ByteOrder;
move-result-object v0
return-object v0
.end method
.method public modifyTag(Lcom/pinguo/album/exif/ExifTag;)V
.registers 3
iget-object v0, p0, Lcom/pinguo/album/exif/ExifModifier;->mTagToModified:Lcom/pinguo/album/exif/ExifData;
invoke-virtual {v0, p1}, Lcom/pinguo/album/exif/ExifData;->addTag(Lcom/pinguo/album/exif/ExifTag;)Lcom/pinguo/album/exif/ExifTag;
return-void
.end method