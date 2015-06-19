.class public Lcom/pinguo/album/data/cache/BlobCache;
.super Ljava/lang/Object;
.source "BlobCache.java"
.implements Ljava/io/Closeable;
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
.field private static final TAG:Ljava/lang/String;
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
.field private mLookupRequest:Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
.field private mMaxBytes:I
.field private mMaxEntries:I
.field private mSlotOffset:I
.field private mVersion:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/album/data/cache/BlobCache;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IIZ)V
.registers 11
const/4 v5, 0x0
move-object v0, p0
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
invoke-direct/range {v0 .. v5}, Lcom/pinguo/album/data/cache/BlobCache;-><init>(Ljava/lang/String;IIZI)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;IIZI)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/16 v0, 0x20
new-array v0, v0, [B
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
const/16 v0, 0x14
new-array v0, v0, [B
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mBlobHeader:[B
new-instance v0, Ljava/util/zip/Adler32;
invoke-direct {v0}, Ljava/util/zip/Adler32;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;
new-instance v0, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
invoke-direct {v0}, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mLookupRequest:Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
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
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
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
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
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
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
iput p5, p0, Lcom/pinguo/album/data/cache/BlobCache;->mVersion:I
if-nez p4, :cond_82
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->loadIndex()Z
move-result v0
if-eqz v0, :cond_82
:cond_81
return-void
:cond_82
invoke-direct {p0, p2, p3}, Lcom/pinguo/album/data/cache/BlobCache;->resetCache(II)V
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->loadIndex()Z
move-result v0
if-nez v0, :cond_81
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->closeAll()V
new-instance v0, Ljava/io/IOException;
const-string/jumbo v1, "unable to load index"
invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method private clearHash(I)V
.registers 8
const/16 v5, 0x400
new-array v2, v5, [B
iget-object v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
invoke-virtual {v3, p1}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;
iget v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
mul-int/lit8 v0, v3, 0xc
:goto_d
if-gtz v0, :cond_10
return-void
:cond_10
invoke-static {v0, v5}, Ljava/lang/Math;->min(II)I
move-result v1
iget-object v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
const/4 v4, 0x0
invoke-virtual {v3, v2, v4, v1}, Ljava/nio/MappedByteBuffer;->put([BII)Ljava/nio/ByteBuffer;
sub-int/2addr v0, v1
goto :goto_d
.end method
.method private closeAll()V
.registers 2
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;
invoke-static {v0}, Lcom/pinguo/album/data/cache/BlobCache;->closeSilently(Ljava/io/Closeable;)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
invoke-static {v0}, Lcom/pinguo/album/data/cache/BlobCache;->closeSilently(Ljava/io/Closeable;)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
invoke-static {v0}, Lcom/pinguo/album/data/cache/BlobCache;->closeSilently(Ljava/io/Closeable;)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
invoke-static {v0}, Lcom/pinguo/album/data/cache/BlobCache;->closeSilently(Ljava/io/Closeable;)V
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
invoke-static {v0}, Lcom/pinguo/album/data/cache/BlobCache;->deleteFileSilently(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".0"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/data/cache/BlobCache;->deleteFileSilently(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, ".1"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/data/cache/BlobCache;->deleteFileSilently(Ljava/lang/String;)V
return-void
.end method
.method private flipRegion()V
.registers 4
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
rsub-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
const/4 v0, 0x4
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
const/16 v1, 0xc
iget v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
invoke-static {v0, v1, v2}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
const/16 v1, 0x10
iget v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
invoke-static {v0, v1, v2}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
const/16 v1, 0x14
iget v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
invoke-static {v0, v1, v2}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->updateIndexHeader()V
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->setActiveVariables()V
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveHashStart:I
invoke-direct {p0, v0}, Lcom/pinguo/album/data/cache/BlobCache;->clearHash(I)V
invoke-virtual {p0}, Lcom/pinguo/album/data/cache/BlobCache;->syncIndex()V
return-void
.end method
.method private getBlob(Ljava/io/RandomAccessFile;ILcom/pinguo/album/data/cache/BlobCache$LookupRequest;)Z
.registers 18
iget-object v5, p0, Lcom/pinguo/album/data/cache/BlobCache;->mBlobHeader:[B
invoke-virtual {p1}, Ljava/io/RandomAccessFile;->getFilePointer()J
move-result-wide v7
move/from16 v0, p2
int-to-long v11, v0
:try_start_9
invoke-virtual {p1, v11, v12}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-virtual {p1, v5}, Ljava/io/RandomAccessFile;->read([B)I
move-result v11
const/16 v12, 0x14
if-eq v11, v12, :cond_21
sget-object v11, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v12, "cannot read blob header"
invoke-static {v11, v12}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1c
.catchall {:try_start_9 .. :try_end_1c} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_1c} :catch_100
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x0
:goto_20
return v11
:cond_21
const/4 v11, 0x0
:try_start_22
invoke-static {v5, v11}, Lcom/pinguo/album/data/cache/BlobCache;->readLong([BI)J
:try_end_25
.catchall {:try_start_22 .. :try_end_25} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_25} :catch_100
move-result-wide v2
const-wide/16 v11, 0x0
cmp-long v11, v2, v11
if-nez v11, :cond_31
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x0
goto :goto_20
:cond_31
:try_start_31
move-object/from16 v0, p3
iget-wide v11, v0, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->key:J
cmp-long v11, v2, v11
if-eqz v11, :cond_53
sget-object v11, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "blob key does not match: "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_end_4e
.catchall {:try_start_31 .. :try_end_4e} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_4e} :catch_100
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x0
goto :goto_20
:cond_53
const/16 v11, 0x8
:try_start_55
invoke-static {v5, v11}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v9
const/16 v11, 0xc
invoke-static {v5, v11}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v4
move/from16 v0, p2
if-eq v4, v0, :cond_7d
sget-object v11, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "blob offset does not match: "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_end_78
.catchall {:try_start_55 .. :try_end_78} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_55 .. :try_end_78} :catch_100
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x0
goto :goto_20
:cond_7d
const/16 v11, 0x10
:try_start_7f
invoke-static {v5, v11}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v6
if-ltz v6, :cond_8d
iget v11, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxBytes:I
sub-int v11, v11, p2
add-int/lit8 v11, v11, -0x14
if-le v6, v11, :cond_a8
:cond_8d
sget-object v11, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "invalid blob length: "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_end_a2
.catchall {:try_start_7f .. :try_end_a2} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_a2} :catch_100
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x0
goto/16 :goto_20
:try_start_a8
:cond_a8
move-object/from16 v0, p3
iget-object v11, v0, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
if-eqz v11, :cond_b5
move-object/from16 v0, p3
iget-object v11, v0, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
array-length v11, v11
if-ge v11, v6, :cond_bb
:cond_b5
new-array v11, v6, [B
move-object/from16 v0, p3
iput-object v11, v0, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
:cond_bb
move-object/from16 v0, p3
iget-object v1, v0, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
move-object/from16 v0, p3
iput v6, v0, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->length:I
const/4 v11, 0x0
invoke-virtual {p1, v1, v11, v6}, Ljava/io/RandomAccessFile;->read([BII)I
move-result v11
if-eq v11, v6, :cond_d8
sget-object v11, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v12, "cannot read blob data"
invoke-static {v11, v12}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_end_d2
.catchall {:try_start_a8 .. :try_end_d2} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_a8 .. :try_end_d2} :catch_100
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x0
goto/16 :goto_20
:cond_d8
const/4 v11, 0x0
:try_start_d9
invoke-virtual {p0, v1, v11, v6}, Lcom/pinguo/album/data/cache/BlobCache;->checkSum([BII)I
move-result v11
if-eq v11, v9, :cond_fa
sget-object v11, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
new-instance v12, Ljava/lang/StringBuilder;
const-string/jumbo v13, "blob checksum does not match: "
invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v12
invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v12
invoke-static {v11, v12}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
:try_end_f4
.catchall {:try_start_d9 .. :try_end_f4} :catchall_10f
.catch Ljava/lang/Throwable; {:try_start_d9 .. :try_end_f4} :catch_100
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x0
goto/16 :goto_20
:cond_fa
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x1
goto/16 :goto_20
:catch_100
move-exception v10
:try_start_101
sget-object v11, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v12, "getBlob failed."
invoke-static {v11, v12, v10}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_109
.catchall {:try_start_101 .. :try_end_109} :catchall_10f
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
const/4 v11, 0x0
goto/16 :goto_20
:catchall_10f
move-exception v11
invoke-virtual {p1, v7, v8}, Ljava/io/RandomAccessFile;->seek(J)V
throw v11
.end method
.method private insertInternal(J[BI)V
.registers 10
const/4 v4, 0x0
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mBlobHeader:[B
invoke-virtual {p0, p3}, Lcom/pinguo/album/data/cache/BlobCache;->checkSum([B)I
move-result v1
invoke-static {v0, v4, p1, p2}, Lcom/pinguo/album/data/cache/BlobCache;->writeLong([BIJ)V
const/16 v2, 0x8
invoke-static {v0, v2, v1}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
const/16 v2, 0xc
iget v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
invoke-static {v0, v2, v3}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
const/16 v2, 0x10
invoke-static {v0, v2, p4}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
iget-object v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;
invoke-virtual {v2, v0}, Ljava/io/RandomAccessFile;->write([B)V
iget-object v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;
invoke-virtual {v2, p3, v4, p4}, Ljava/io/RandomAccessFile;->write([BII)V
iget-object v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
iget v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mSlotOffset:I
invoke-virtual {v2, v3, p1, p2}, Ljava/nio/MappedByteBuffer;->putLong(IJ)Ljava/nio/ByteBuffer;
iget-object v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
iget v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mSlotOffset:I
add-int/lit8 v3, v3, 0x8
iget v4, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
invoke-virtual {v2, v3, v4}, Ljava/nio/MappedByteBuffer;->putInt(II)Ljava/nio/ByteBuffer;
iget v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
add-int/lit8 v3, p4, 0x14
add-int/2addr v2, v3
iput v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
iget-object v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
const/16 v3, 0x14
iget v4, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
invoke-static {v2, v3, v4}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
return-void
.end method
.method private loadIndex()Z
.registers 13
const/4 v11, 0x1
const v5, -0x42db7af0
const/4 v4, 0x4
const/4 v10, 0x0
:try_start_6
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
const-wide/16 v1, 0x0
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v6, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
invoke-virtual {v0, v6}, Ljava/io/RandomAccessFile;->read([B)I
move-result v0
const/16 v1, 0x20
if-eq v0, v1, :cond_31
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "cannot read header"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
:goto_30
return v0
:cond_31
const/4 v0, 0x0
invoke-static {v6, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
const v1, -0x4cd8cfd0
if-eq v0, v1, :cond_45
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "cannot read header magic"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto :goto_30
:cond_45
const/16 v0, 0x18
invoke-static {v6, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mVersion:I
if-eq v0, v1, :cond_59
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "version mismatch"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto :goto_30
:cond_59
const/4 v0, 0x4
invoke-static {v6, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
const/16 v0, 0x8
invoke-static {v6, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxBytes:I
const/16 v0, 0xc
invoke-static {v6, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
const/16 v0, 0x10
invoke-static {v6, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
const/16 v0, 0x14
invoke-static {v6, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
const/16 v0, 0x1c
invoke-static {v6, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v9
const/4 v0, 0x0
const/16 v1, 0x1c
invoke-virtual {p0, v6, v0, v1}, Lcom/pinguo/album/data/cache/BlobCache;->checkSum([BII)I
move-result v0
if-eq v0, v9, :cond_99
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "header checksum does not match"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto :goto_30
:cond_99
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
if-gtz v0, :cond_a7
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "invalid max entries"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto :goto_30
:cond_a7
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxBytes:I
if-gtz v0, :cond_b6
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "invalid max bytes"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_b6
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
if-eqz v0, :cond_c9
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
if-eq v0, v11, :cond_c9
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "invalid active region"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_c9
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
if-ltz v0, :cond_d3
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
if-le v0, v1, :cond_de
:cond_d3
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "invalid active entries"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_de
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
if-lt v0, v4, :cond_e8
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxBytes:I
if-le v0, v1, :cond_f3
:cond_e8
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "invalid active bytes"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_f3
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v0
iget v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
mul-int/lit8 v2, v2, 0xc
mul-int/lit8 v2, v2, 0x2
add-int/lit8 v2, v2, 0x20
int-to-long v2, v2
cmp-long v0, v0, v2
if-eqz v0, :cond_111
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "invalid index file length"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_111
const/4 v0, 0x4
new-array v8, v0, [B
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I
move-result v0
if-eq v0, v4, :cond_127
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "cannot read data file magic"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_127
const/4 v0, 0x0
invoke-static {v8, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
if-eq v0, v5, :cond_139
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "invalid data file magic"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_139
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
invoke-virtual {v0, v8}, Ljava/io/RandomAccessFile;->read([B)I
move-result v0
if-eq v0, v4, :cond_14c
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "cannot read data file magic"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_14c
const/4 v0, 0x0
invoke-static {v8, v0}, Lcom/pinguo/album/data/cache/BlobCache;->readInt([BI)I
move-result v0
if-eq v0, v5, :cond_15e
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "invalid data file magic"
invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
move v0, v10
goto/16 :goto_30
:cond_15e
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexChannel:Ljava/nio/channels/FileChannel;
sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_WRITE:Ljava/nio/channels/FileChannel$MapMode;
const-wide/16 v2, 0x0
iget-object v4, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
invoke-virtual {v4}, Ljava/io/RandomAccessFile;->length()J
move-result-wide v4
invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;
invoke-virtual {v0, v1}, Ljava/nio/MappedByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->setActiveVariables()V
:try_end_182
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_182} :catch_185
move v0, v11
goto/16 :goto_30
:catch_185
move-exception v7
sget-object v0, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v1, "loadIndex failed."
invoke-static {v0, v1, v7}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move v0, v10
goto/16 :goto_30
.end method
.method private lookupInternal(JI)Z
.registers 13
const/4 v6, 0x0
iget v7, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
int-to-long v7, v7
rem-long v7, p1, v7
long-to-int v4, v7
if-gez v4, :cond_c
iget v7, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
add-int/2addr v4, v7
:cond_c
move v5, v4
:cond_d
:goto_d
mul-int/lit8 v7, v4, 0xc
add-int v3, p3, v7
iget-object v7, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
invoke-virtual {v7, v3}, Ljava/nio/MappedByteBuffer;->getLong(I)J
move-result-wide v0
iget-object v7, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
add-int/lit8 v8, v3, 0x8
invoke-virtual {v7, v8}, Ljava/nio/MappedByteBuffer;->getInt(I)I
move-result v2
if-nez v2, :cond_24
iput v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mSlotOffset:I
:goto_23
return v6
:cond_24
cmp-long v7, v0, p1
if-nez v7, :cond_2e
iput v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mSlotOffset:I
iput v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mFileOffset:I
const/4 v6, 0x1
goto :goto_23
:cond_2e
add-int/lit8 v4, v4, 0x1
iget v7, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
if-lt v4, v7, :cond_35
const/4 v4, 0x0
:cond_35
if-ne v4, v5, :cond_d
sget-object v7, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v8, "corrupted index: clear the slot."
invoke-static {v7, v8}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;)V
iget-object v7, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
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
const/16 v8, 0x1c
const/4 v7, 0x4
const-wide/16 v5, 0x0
const/4 v4, 0x0
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
mul-int/lit8 v2, p1, 0xc
mul-int/lit8 v2, v2, 0x2
add-int/lit8 v2, v2, 0x20
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->setLength(J)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
const v1, -0x4cd8cfd0
invoke-static {v0, v4, v1}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
invoke-static {v0, v7, p1}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
const/16 v1, 0x8
invoke-static {v0, v1, p2}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
const/16 v1, 0xc
invoke-static {v0, v1, v4}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
const/16 v1, 0x10
invoke-static {v0, v1, v4}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
const/16 v1, 0x14
invoke-static {v0, v1, v7}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
const/16 v1, 0x18
iget v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mVersion:I
invoke-static {v0, v1, v2}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
invoke-virtual {p0, v0, v4, v8}, Lcom/pinguo/album/data/cache/BlobCache;->checkSum([BII)I
move-result v1
invoke-static {v0, v8, v1}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexFile:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->setLength(J)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V
const v1, -0x42db7af0
invoke-static {v0, v4, v1}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v0, v4, v7}, Ljava/io/RandomAccessFile;->write([BII)V
return-void
.end method
.method private setActiveVariables()V
.registers 5
const/16 v3, 0x20
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
if-nez v0, :cond_35
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
:goto_8
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
const/4 v1, 0x1
if-ne v0, v1, :cond_38
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
:goto_11
iput-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
int-to-long v1, v1
invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
iput v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveHashStart:I
iput v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mInactiveHashStart:I
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveRegion:I
if-nez v0, :cond_3b
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mInactiveHashStart:I
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
mul-int/lit8 v1, v1, 0xc
add-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mInactiveHashStart:I
:goto_34
return-void
:cond_35
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
goto :goto_8
:cond_38
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
goto :goto_11
:cond_3b
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveHashStart:I
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
mul-int/lit8 v1, v1, 0xc
add-int/2addr v0, v1
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveHashStart:I
goto :goto_34
.end method
.method private updateIndexHeader()V
.registers 5
const/16 v3, 0x1c
const/4 v2, 0x0
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
invoke-virtual {p0, v1, v2, v3}, Lcom/pinguo/album/data/cache/BlobCache;->checkSum([BII)I
move-result v1
invoke-static {v0, v3, v1}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
invoke-virtual {v0, v2}, Ljava/nio/MappedByteBuffer;->position(I)Ljava/nio/Buffer;
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
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
.method  checkSum([B)I
.registers 4
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;
invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;
invoke-virtual {v0, p1}, Ljava/util/zip/Adler32;->update([B)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;
invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method  checkSum([BII)I
.registers 6
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;
invoke-virtual {v0}, Ljava/util/zip/Adler32;->reset()V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;
invoke-virtual {v0, p1, p2, p3}, Ljava/util/zip/Adler32;->update([BII)V
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mAdler32:Ljava/util/zip/Adler32;
invoke-virtual {v0}, Ljava/util/zip/Adler32;->getValue()J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method public clearEntry(J)V
.registers 7
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveHashStart:I
invoke-direct {p0, p1, p2, v1}, Lcom/pinguo/album/data/cache/BlobCache;->lookupInternal(JI)Z
move-result v1
if-nez v1, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mBlobHeader:[B
const/4 v1, 0x0
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([BB)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;
iget v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mFileOffset:I
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;
invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->write([B)V
goto :goto_8
.end method
.method public close()V
.registers 1
invoke-virtual {p0}, Lcom/pinguo/album/data/cache/BlobCache;->syncAll()V
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->closeAll()V
return-void
.end method
.method  getActiveCount()I
.registers 10
const/4 v3, 0x0
const/4 v4, 0x0
:goto_2
iget v6, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
if-lt v4, v6, :cond_b
iget v6, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
if-ne v3, v6, :cond_26
:goto_a
return v3
:cond_b
iget v6, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveHashStart:I
mul-int/lit8 v7, v4, 0xc
add-int v5, v6, v7
iget-object v6, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
invoke-virtual {v6, v5}, Ljava/nio/MappedByteBuffer;->getLong(I)J
move-result-wide v0
iget-object v6, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
add-int/lit8 v7, v5, 0x8
invoke-virtual {v6, v7}, Ljava/nio/MappedByteBuffer;->getInt(I)I
move-result v2
if-eqz v2, :cond_23
add-int/lit8 v3, v3, 0x1
:cond_23
add-int/lit8 v4, v4, 0x1
goto :goto_2
:cond_26
sget-object v6, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "wrong active count: "
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v8, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
const-string/jumbo v8, " vs "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v3, -0x1
goto :goto_a
.end method
.method public insert(J[B)V
.registers 7
array-length v0, p3
add-int/lit8 v0, v0, 0x18
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxBytes:I
if-le v0, v1, :cond_10
new-instance v0, Ljava/lang/RuntimeException;
const-string/jumbo v1, "blob is too large!"
invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
add-int/lit8 v0, v0, 0x14
array-length v1, p3
add-int/2addr v0, v1
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxBytes:I
if-gt v0, v1, :cond_22
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
mul-int/lit8 v0, v0, 0x2
iget v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
if-lt v0, v1, :cond_25
:cond_22
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->flipRegion()V
:cond_25
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveHashStart:I
invoke-direct {p0, p1, p2, v0}, Lcom/pinguo/album/data/cache/BlobCache;->lookupInternal(JI)Z
move-result v0
if-nez v0, :cond_3c
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
const/16 v1, 0x10
iget v2, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
invoke-static {v0, v1, v2}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
:cond_3c
array-length v0, p3
invoke-direct {p0, p1, p2, p3, v0}, Lcom/pinguo/album/data/cache/BlobCache;->insertInternal(J[BI)V
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->updateIndexHeader()V
return-void
.end method
.method public lookup(Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;)Z
.registers 9
const/4 v2, 0x1
iget-wide v3, p1, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->key:J
iget v5, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveHashStart:I
invoke-direct {p0, v3, v4, v5}, Lcom/pinguo/album/data/cache/BlobCache;->lookupInternal(JI)Z
move-result v3
if-eqz v3, :cond_16
iget-object v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveDataFile:Ljava/io/RandomAccessFile;
iget v4, p0, Lcom/pinguo/album/data/cache/BlobCache;->mFileOffset:I
invoke-direct {p0, v3, v4, p1}, Lcom/pinguo/album/data/cache/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/pinguo/album/data/cache/BlobCache$LookupRequest;)Z
move-result v3
if-eqz v3, :cond_16
:cond_15
:goto_15
return v2
:cond_16
iget v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mSlotOffset:I
iget-wide v3, p1, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->key:J
iget v5, p0, Lcom/pinguo/album/data/cache/BlobCache;->mInactiveHashStart:I
invoke-direct {p0, v3, v4, v5}, Lcom/pinguo/album/data/cache/BlobCache;->lookupInternal(JI)Z
move-result v3
if-eqz v3, :cond_67
iget-object v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mInactiveDataFile:Ljava/io/RandomAccessFile;
iget v4, p0, Lcom/pinguo/album/data/cache/BlobCache;->mFileOffset:I
invoke-direct {p0, v3, v4, p1}, Lcom/pinguo/album/data/cache/BlobCache;->getBlob(Ljava/io/RandomAccessFile;ILcom/pinguo/album/data/cache/BlobCache$LookupRequest;)Z
move-result v3
if-eqz v3, :cond_67
iget v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveBytes:I
add-int/lit8 v3, v3, 0x14
iget v4, p1, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->length:I
add-int/2addr v3, v4
iget v4, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxBytes:I
if-gt v3, v4, :cond_15
iget v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
mul-int/lit8 v3, v3, 0x2
iget v4, p0, Lcom/pinguo/album/data/cache/BlobCache;->mMaxEntries:I
if-ge v3, v4, :cond_15
iput v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mSlotOffset:I
:try_start_41
iget-wide v3, p1, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->key:J
iget-object v5, p1, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
iget v6, p1, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->length:I
invoke-direct {p0, v3, v4, v5, v6}, Lcom/pinguo/album/data/cache/BlobCache;->insertInternal(J[BI)V
iget v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
iget-object v3, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexHeader:[B
const/16 v4, 0x10
iget v5, p0, Lcom/pinguo/album/data/cache/BlobCache;->mActiveEntries:I
invoke-static {v3, v4, v5}, Lcom/pinguo/album/data/cache/BlobCache;->writeInt([BII)V
invoke-direct {p0}, Lcom/pinguo/album/data/cache/BlobCache;->updateIndexHeader()V
:try_end_5c
.catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_5c} :catch_5d
goto :goto_15
:catch_5d
move-exception v1
sget-object v3, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v4, "cannot copy over"
invoke-static {v3, v4}, Lcom/pinguo/album/common/PGLog;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_15
:cond_67
const/4 v2, 0x0
goto :goto_15
.end method
.method public lookup(J)[B
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mLookupRequest:Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
iput-wide p1, v1, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->key:J
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mLookupRequest:Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
iput-object v0, v1, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mLookupRequest:Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
invoke-virtual {p0, v1}, Lcom/pinguo/album/data/cache/BlobCache;->lookup(Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;)Z
move-result v1
if-eqz v1, :cond_15
iget-object v0, p0, Lcom/pinguo/album/data/cache/BlobCache;->mLookupRequest:Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;
iget-object v0, v0, Lcom/pinguo/album/data/cache/BlobCache$LookupRequest;->buffer:[B
:cond_15
return-object v0
.end method
.method public syncAll()V
.registers 4
invoke-virtual {p0}, Lcom/pinguo/album/data/cache/BlobCache;->syncIndex()V
:try_start_3
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile0:Ljava/io/RandomAccessFile;
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;
move-result-object v1
invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
:goto_c
:try_start_c
:try_end_c
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_c} :catch_16
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mDataFile1:Ljava/io/RandomAccessFile;
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;
move-result-object v1
invoke-virtual {v1}, Ljava/io/FileDescriptor;->sync()V
:try_end_15
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_15} :catch_20
:goto_15
return-void
:catch_16
move-exception v0
sget-object v1, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v2, "sync data file 0 failed"
invoke-static {v1, v2, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_c
:catch_20
move-exception v0
sget-object v1, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v2, "sync data file 1 failed"
invoke-static {v1, v2, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_15
.end method
.method public syncIndex()V
.registers 4
:try_start_0
iget-object v1, p0, Lcom/pinguo/album/data/cache/BlobCache;->mIndexBuffer:Ljava/nio/MappedByteBuffer;
invoke-virtual {v1}, Ljava/nio/MappedByteBuffer;->force()Ljava/nio/MappedByteBuffer;
:goto_5
:try_end_5
.catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
sget-object v1, Lcom/pinguo/album/data/cache/BlobCache;->TAG:Ljava/lang/String;
const-string/jumbo v2, "sync index failed"
invoke-static {v1, v2, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5
.end method