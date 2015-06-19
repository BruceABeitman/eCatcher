.class public Lcom/pinguo/camera360/gallery/util/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;
    }
.end annotation


# static fields
.field private static final BH_CHECKSUM:I = 0x8

.field private static final BH_KEY:I = 0x0

.field private static final BH_LENGTH:I = 0x10

.field private static final BH_OFFSET:I = 0xc

.field private static final BLOB_HEADER_SIZE:I = 0x14

.field private static final DATA_HEADER_SIZE:I = 0x4

.field private static final IH_ACTIVE_BYTES:I = 0x14

.field private static final IH_ACTIVE_ENTRIES:I = 0x10

.field private static final IH_ACTIVE_REGION:I = 0xc

.field private static final IH_CHECKSUM:I = 0x1c

.field private static final IH_MAGIC:I = 0x0

.field private static final IH_MAX_BYTES:I = 0x8

.field private static final IH_MAX_ENTRIES:I = 0x4

.field private static final IH_VERSION:I = 0x18

.field private static final INDEX_HEADER_SIZE:I = 0x20

.field private static final MAGIC_DATA_FILE:I = -0x42db7af0

.field private static final MAGIC_INDEX_FILE:I = -0x4cd8cfd0

.field private static final TAG:Ljava/lang/String; = "BlobCache"


# instance fields
.field private mActiveBytes:I

.field private mActiveDataFile:Ljava/io/RandomAccessFile;

.field private mActiveEntries:I

.field private mActiveHashStart:I

.field private mActiveRegion:I

.field private mAdler32:Ljava/util/zip/Adler32;

.field private mBlobHeader:[B

.field private mDataFile0:Ljava/io/RandomAccessFile;

.field private mDataFile1:Ljava/io/RandomAccessFile;

.field private mFileOffset:I

.field private mInactiveDataFile:Ljava/io/RandomAccessFile;

.field private mInactiveHashStart:I

.field private mIndexBuffer:Ljava/nio/MappedByteBuffer;

.field private mIndexChannel:Ljava/nio/channels/FileChannel;

.field private mIndexFile:Ljava/io/RandomAccessFile;

.field private mIndexHeader:[B

.field private mLookupRequest:Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;

.field private mMaxBytes:I

.field private mMaxEntries:I

.field private mSlotOffset:I

.field private mVersion:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZ)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/gallery/util/BlobCache;-><init>(Ljava/lang/String;IIZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IIZI)V
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x20

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    const/16 v0, 0x14

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mBlobHeader:[B

    new-instance v0, Ljava/util/zip/Adler32;

    invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    new-instance v0, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;

    invoke-direct {v0}, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mLookupRequest:Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".idx"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    new-instance v0, Ljava/io/RandomAccessFile;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, ".1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "rw"

    invoke-direct {v0, v1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    iput p5, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mVersion:I

    if-nez p4, :cond_82

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->loadIndex()Z

    move-result v0

    if-eqz v0, :cond_82

    :cond_81
    return-void

    :cond_82
    invoke-direct {p0, p2, p3}, Lcom/pinguo/camera360/gallery/util/BlobCache;->resetCache(II)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->loadIndex()Z

    move-result v0

    if-nez v0, :cond_81

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->closeAll()V

    new-instance v0, Ljava/io/IOException;

    const-string/jumbo v1, "unable to load index"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearHash(I)V
    .registers 8

    const/16 v5, 0x400

    new-array v2, v5, [B

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v0, v3, 0xc

    :goto_d
    if-gtz v0, :cond_10

    return-void

    :cond_10
    invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v0, v1

    goto :goto_d
.end method

.method private closeAll()V
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->closeSilently(Ljava/io/Closeable;)V

    return-void
.end method

.method static closeSilently(Ljava/io/Closeable;)V
    .registers 2

    if-nez p0, :cond_3

    :goto_2
    return-void

    :cond_3
    :try_start_3
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_2
.end method

.method private static deleteFileSilently(Ljava/lang/String;)V
    .registers 2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method

.method public static deleteFiles(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".idx"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, ".1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->deleteFileSilently(Ljava/lang/String;)V

    return-void
.end method

.method private flipRegion()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    rsub-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    const/16 v1, 0xc

    iget v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x14

    iget v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->updateIndexHeader()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->setActiveVariables()V

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->clearHash(I)V

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->syncIndex()V

    return-void
.end method

.method private getBlob(Ljava/io/RandomAccessFile;ILcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v5, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mBlobHeader:[B

    invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v7

    move/from16 v0, p2

    int-to-long v11, v0

    :try_start_9
    invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V

    invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v11

    const/16 v12, 0x14

    if-eq v11, v12, :cond_22

    const-string/jumbo v11, "BlobCache"

    const-string/jumbo v12, "cannot read blob header"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_10a
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1d} :catch_fa

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    :goto_21
    return v11

    :cond_22
    const/4 v11, 0x0

    :try_start_23
    invoke-static {v5, v11}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readLong([BI)J

    move-result-wide v2

    move-object/from16 v0, p3

    iget-wide v11, v0, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->key:J

    cmp-long v11, v2, v11

    if-eqz v11, :cond_4a

    const-string/jumbo v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "blob key does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_45
    .catchall {:try_start_23 .. :try_end_45} :catchall_10a
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_45} :catch_fa

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    goto :goto_21

    :cond_4a
    const/16 v11, 0x8

    :try_start_4c
    invoke-static {v5, v11}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v9

    const/16 v11, 0xc

    invoke-static {v5, v11}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v4

    move/from16 v0, p2

    if-eq v4, v0, :cond_75

    const-string/jumbo v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "blob offset does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_70
    .catchall {:try_start_4c .. :try_end_70} :catchall_10a
    .catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_70} :catch_fa

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    goto :goto_21

    :cond_75
    const/16 v11, 0x10

    :try_start_77
    invoke-static {v5, v11}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v6

    if-ltz v6, :cond_85

    iget v11, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxBytes:I

    sub-int v11, v11, p2

    add-int/lit8 v11, v11, -0x14

    if-le v6, v11, :cond_a0

    :cond_85
    const-string/jumbo v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "invalid blob length: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9b
    .catchall {:try_start_77 .. :try_end_9b} :catchall_10a
    .catch Ljava/lang/Throwable; {:try_start_77 .. :try_end_9b} :catch_fa

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    goto :goto_21

    :cond_a0
    :try_start_a0
    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->buffer:[B

    if-eqz v11, :cond_ad

    move-object/from16 v0, p3

    iget-object v11, v0, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->buffer:[B

    array-length v11, v11

    if-ge v11, v6, :cond_b3

    :cond_ad
    new-array v11, v6, [B

    move-object/from16 v0, p3

    iput-object v11, v0, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->buffer:[B

    :cond_b3
    move-object/from16 v0, p3

    iget-object v1, v0, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->buffer:[B

    move-object/from16 v0, p3

    iput v6, v0, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->length:I

    const/4 v11, 0x0

    invoke-virtual {p1, v1, v11, v6}, Ljava/io/RandomAccessFile;->read([BII)I

    move-result v11

    if-eq v11, v6, :cond_d1

    const-string/jumbo v11, "BlobCache"

    const-string/jumbo v12, "cannot read blob data"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_cb
    .catchall {:try_start_a0 .. :try_end_cb} :catchall_10a
    .catch Ljava/lang/Throwable; {:try_start_a0 .. :try_end_cb} :catch_fa

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    goto/16 :goto_21

    :cond_d1
    const/4 v11, 0x0

    :try_start_d2
    invoke-virtual {p0, v1, v11, v6}, Lcom/pinguo/camera360/gallery/util/BlobCache;->checkSum([BII)I

    move-result v11

    if-eq v11, v9, :cond_f4

    const-string/jumbo v11, "BlobCache"

    new-instance v12, Ljava/lang/StringBuilder;

    const-string/jumbo v13, "blob checksum does not match: "

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_ee
    .catchall {:try_start_d2 .. :try_end_ee} :catchall_10a
    .catch Ljava/lang/Throwable; {:try_start_d2 .. :try_end_ee} :catch_fa

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    goto/16 :goto_21

    :cond_f4
    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x1

    goto/16 :goto_21

    :catch_fa
    move-exception v10

    :try_start_fb
    const-string/jumbo v11, "BlobCache"

    const-string/jumbo v12, "getBlob failed."

    invoke-static {v11, v12, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_104
    .catchall {:try_start_fb .. :try_end_104} :catchall_10a

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    const/4 v11, 0x0

    goto/16 :goto_21

    :catchall_10a
    move-exception v11

    invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V

    throw v11
.end method

.method private insertInternal(J[BI)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mBlobHeader:[B

    invoke-virtual {p0, p3}, Lcom/pinguo/camera360/gallery/util/BlobCache;->checkSum([B)I

    move-result v1

    invoke-static {v0, v4, p1, p2}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeLong([BIJ)V

    const/16 v2, 0x8

    invoke-static {v0, v2, v1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    const/16 v2, 0xc

    iget v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    invoke-static {v0, v2, v3}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    const/16 v2, 0x10

    invoke-static {v0, v2, p4}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mSlotOffset:I

    invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mSlotOffset:I

    add-int/lit8 v3, v3, 0x8

    iget v4, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, p4, 0x14

    add-int/2addr v2, v3

    iput v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    iget-object v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    const/16 v3, 0x14

    iget v4, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    invoke-static {v2, v3, v4}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    return-void
.end method

.method private loadIndex()Z
    .registers 13

    const/4 v11, 0x1

    const v5, -0x42db7af0

    const/4 v4, 0x4

    const/4 v10, 0x0

    :try_start_6
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    const/16 v1, 0x20

    if-eq v0, v1, :cond_32

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "cannot read header"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    :goto_31
    return v0

    :cond_32
    const/4 v0, 0x0

    invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    const v1, -0x4cd8cfd0

    if-eq v0, v1, :cond_47

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "cannot read header magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto :goto_31

    :cond_47
    const/16 v0, 0x18

    invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mVersion:I

    if-eq v0, v1, :cond_5c

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "version mismatch"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto :goto_31

    :cond_5c
    const/4 v0, 0x4

    invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    const/16 v0, 0x8

    invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxBytes:I

    const/16 v0, 0xc

    invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    const/16 v0, 0x10

    invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    const/16 v0, 0x14

    invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    const/16 v0, 0x1c

    invoke-static {v6, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v9

    const/4 v0, 0x0

    const/16 v1, 0x1c

    invoke-virtual {p0, v6, v0, v1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->checkSum([BII)I

    move-result v0

    if-eq v0, v9, :cond_9d

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "header checksum does not match"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto :goto_31

    :cond_9d
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    if-gtz v0, :cond_ac

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid max entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto :goto_31

    :cond_ac
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxBytes:I

    if-gtz v0, :cond_bc

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid max bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_bc
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    if-eqz v0, :cond_d0

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    if-eq v0, v11, :cond_d0

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid active region"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_d0
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    if-ltz v0, :cond_da

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    if-le v0, v1, :cond_e6

    :cond_da
    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid active entries"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_e6
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    if-lt v0, v4, :cond_f0

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_fc

    :cond_f0
    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid active bytes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_fc
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    iget v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v2, v2, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11b

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid index file length"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_11b
    const/4 v0, 0x4

    new-array v8, v0, [B

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_132

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_132
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_145

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_145
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v0

    if-eq v0, v4, :cond_159

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "cannot read data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_159
    const/4 v0, 0x0

    invoke-static {v8, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->readInt([BI)I

    move-result v0

    if-eq v0, v5, :cond_16c

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "invalid data file magic"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v10

    goto/16 :goto_31

    :cond_16c
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;

    const-wide/16 v2, 0x0

    iget-object v4, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->setActiveVariables()V
    :try_end_190
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_190} :catch_193

    move v0, v11

    goto/16 :goto_31

    :catch_193
    move-exception v7

    const-string/jumbo v0, "BlobCache"

    const-string/jumbo v1, "loadIndex failed."

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v10

    goto/16 :goto_31
.end method

.method private lookupInternal(JI)Z
    .registers 13

    const/4 v6, 0x0

    iget v7, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    int-to-long v7, v7

    rem-long v7, p1, v7

    long-to-int v4, v7

    if-gez v4, :cond_c

    iget v7, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    add-int/2addr v4, v7

    :cond_c
    move v5, v4

    :cond_d
    :goto_d
    mul-int/lit8 v7, v4, 0xc

    add-int v3, p3, v7

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v8, v3, 0x8

    invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    if-nez v2, :cond_24

    iput v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mSlotOffset:I

    :goto_23
    return v6

    :cond_24
    cmp-long v7, v0, p1

    if-nez v7, :cond_2e

    iput v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mSlotOffset:I

    iput v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mFileOffset:I

    const/4 v6, 0x1

    goto :goto_23

    :cond_2e
    add-int/lit8 v4, v4, 0x1

    iget v7, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    if-lt v4, v7, :cond_35

    const/4 v4, 0x0

    :cond_35
    if-ne v4, v5, :cond_d

    const-string/jumbo v7, "BlobCache"

    const-string/jumbo v8, "corrupted index: clear the slot."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    mul-int/lit8 v8, v4, 0xc

    add-int/2addr v8, p3

    add-int/lit8 v8, v8, 0x8

    invoke-virtual {v7, v8, v6}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;

    goto :goto_d
.end method

.method static readInt([BI)I
    .registers 4

    aget-byte v0, p0, p1

    and-int/lit16 v0, v0, 0xff

    add-int/lit8 v1, p1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    add-int/lit8 v1, p1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x18

    or-int/2addr v0, v1

    return v0
.end method

.method static readLong([BI)J
    .registers 9

    add-int/lit8 v3, p1, 0x7

    aget-byte v3, p0, v3

    and-int/lit16 v3, v3, 0xff

    int-to-long v1, v3

    const/4 v0, 0x6

    :goto_8
    if-gez v0, :cond_b

    return-wide v1

    :cond_b
    const/16 v3, 0x8

    shl-long v3, v1, v3

    add-int v5, p1, v0

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    int-to-long v5, v5

    or-long v1, v3, v5

    add-int/lit8 v0, v0, -0x1

    goto :goto_8
.end method

.method private resetCache(II)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v8, 0x1c

    const/4 v7, 0x4

    const-wide/16 v5, 0x0

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    mul-int/lit8 v2, p1, 0xc

    mul-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x20

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    const v1, -0x4cd8cfd0

    invoke-static {v0, v4, v1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    invoke-static {v0, v7, p1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    const/16 v1, 0x8

    invoke-static {v0, v1, p2}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    const/16 v1, 0xc

    invoke-static {v0, v1, v4}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    const/16 v1, 0x10

    invoke-static {v0, v1, v4}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    const/16 v1, 0x14

    invoke-static {v0, v1, v7}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    const/16 v1, 0x18

    iget v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mVersion:I

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    invoke-virtual {p0, v0, v4, v8}, Lcom/pinguo/camera360/gallery/util/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v8, v1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    const v1, -0x42db7af0

    invoke-static {v0, v4, v1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method

.method private setActiveVariables()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v3, 0x20

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_8
    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_38

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    :goto_11
    iput-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    iput v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveHashStart:I

    iput v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mInactiveHashStart:I

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveRegion:I

    if-nez v0, :cond_3b

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mInactiveHashStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mInactiveHashStart:I

    :goto_34
    return-void

    :cond_35
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_8

    :cond_38
    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    goto :goto_11

    :cond_3b
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveHashStart:I

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    mul-int/lit8 v1, v1, 0xc

    add-int/2addr v0, v1

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveHashStart:I

    goto :goto_34
.end method

.method private updateIndexHeader()V
    .registers 5

    const/16 v3, 0x1c

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    invoke-virtual {p0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/util/BlobCache;->checkSum([BII)I

    move-result v1

    invoke-static {v0, v3, v1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    return-void
.end method

.method static writeInt([BII)V
    .registers 6

    const/4 v0, 0x0

    :goto_1
    const/4 v1, 0x4

    if-lt v0, v1, :cond_5

    return-void

    :cond_5
    add-int v1, p1, v0

    and-int/lit16 v2, p2, 0xff

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    shr-int/lit8 p2, p2, 0x8

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method static writeLong([BIJ)V
    .registers 9

    const/16 v4, 0x8

    const/4 v0, 0x0

    :goto_3
    if-lt v0, v4, :cond_6

    return-void

    :cond_6
    add-int v1, p1, v0

    const-wide/16 v2, 0xff

    and-long/2addr v2, p2

    long-to-int v2, v2

    int-to-byte v2, v2

    aput-byte v2, p0, v1

    shr-long/2addr p2, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3
.end method


# virtual methods
.method checkSum([B)I
    .registers 4

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method checkSum([BII)I
    .registers 6

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mAdler32:Ljava/util/zip/Adler32;

    invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public close()V
    .registers 1

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->syncAll()V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->closeAll()V

    return-void
.end method

.method getActiveCount()I
    .registers 10

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_2
    iget v6, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    if-lt v4, v6, :cond_b

    iget v6, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    if-ne v3, v6, :cond_26

    :goto_a
    return v3

    :cond_b
    iget v6, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveHashStart:I

    mul-int/lit8 v7, v4, 0xc

    add-int v5, v6, v7

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v6, v5}, Ljava/nio/MappedByteBuffer;->getLong(I)J

    move-result-wide v0

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    add-int/lit8 v7, v5, 0x8

    invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getInt(I)I

    move-result v2

    if-eqz v2, :cond_23

    add-int/lit8 v3, v3, 0x1

    :cond_23
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_26
    const-string/jumbo v6, "BlobCache"

    new-instance v7, Ljava/lang/StringBuilder;

    const-string/jumbo v8, "wrong active count: "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v8, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " vs "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, -0x1

    goto :goto_a
.end method

.method public insert(J[B)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p3

    add-int/lit8 v0, v0, 0x18

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxBytes:I

    if-le v0, v1, :cond_10

    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "blob is too large!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v0, v0, 0x14

    array-length v1, p3

    add-int/2addr v0, v1

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxBytes:I

    if-gt v0, v1, :cond_22

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    if-lt v0, v1, :cond_25

    :cond_22
    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->flipRegion()V

    :cond_25
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->lookupInternal(JI)Z

    move-result v0

    if-nez v0, :cond_3c

    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    const/16 v1, 0x10

    iget v2, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    invoke-static {v0, v1, v2}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    :cond_3c
    array-length v0, p3

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->insertInternal(J[BI)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->updateIndexHeader()V

    return-void
.end method

.method public lookup(Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;)Z
    .registers 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x1

    iget-wide v3, p1, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveHashStart:I

    invoke-direct {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/util/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_16

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_16

    :cond_15
    :goto_15
    return v2

    :cond_16
    iget v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mSlotOffset:I

    iget-wide v3, p1, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->key:J

    iget v5, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mInactiveHashStart:I

    invoke-direct {p0, v3, v4, v5}, Lcom/pinguo/camera360/gallery/util/BlobCache;->lookupInternal(JI)Z

    move-result v3

    if-eqz v3, :cond_68

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;

    iget v4, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mFileOffset:I

    invoke-direct {p0, v3, v4, p1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;)Z

    move-result v3

    if-eqz v3, :cond_68

    iget v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveBytes:I

    add-int/lit8 v3, v3, 0x14

    iget v4, p1, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->length:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxBytes:I

    if-gt v3, v4, :cond_15

    iget v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    mul-int/lit8 v3, v3, 0x2

    iget v4, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mMaxEntries:I

    if-ge v3, v4, :cond_15

    iput v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mSlotOffset:I

    :try_start_41
    iget-wide v3, p1, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->key:J

    iget-object v5, p1, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->buffer:[B

    iget v6, p1, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->length:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/pinguo/camera360/gallery/util/BlobCache;->insertInternal(J[BI)V

    iget v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    iget-object v3, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexHeader:[B

    const/16 v4, 0x10

    iget v5, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mActiveEntries:I

    invoke-static {v3, v4, v5}, Lcom/pinguo/camera360/gallery/util/BlobCache;->writeInt([BII)V

    invoke-direct {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->updateIndexHeader()V
    :try_end_5c
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_5c} :catch_5d

    goto :goto_15

    :catch_5d
    move-exception v1

    const-string/jumbo v3, "BlobCache"

    const-string/jumbo v4, "cannot copy over"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_68
    const/4 v2, 0x0

    goto :goto_15
.end method

.method public lookup(J)[B
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mLookupRequest:Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;

    iput-wide p1, v1, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->key:J

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mLookupRequest:Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;

    iput-object v0, v1, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->buffer:[B

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mLookupRequest:Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/gallery/util/BlobCache;->lookup(Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v0, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mLookupRequest:Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;

    iget-object v0, v0, Lcom/pinguo/camera360/gallery/util/BlobCache$LookupRequest;->buffer:[B

    :cond_15
    return-object v0
.end method

.method public syncAll()V
    .registers 4

    invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/util/BlobCache;->syncIndex()V

    :try_start_3
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_16

    :goto_c
    :try_start_c
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_21

    :goto_15
    return-void

    :catch_16
    move-exception v0

    const-string/jumbo v1, "BlobCache"

    const-string/jumbo v2, "sync data file 0 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_c

    :catch_21
    move-exception v0

    const-string/jumbo v1, "BlobCache"

    const-string/jumbo v2, "sync data file 1 failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_15
.end method

.method public syncIndex()V
    .registers 4

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/util/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;

    invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6

    :goto_5
    return-void

    :catch_6
    move-exception v0

    const-string/jumbo v1, "BlobCache"

    const-string/jumbo v2, "sync index failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5
.end method
