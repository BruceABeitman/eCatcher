.class public final Lcom/coremedia/iso/boxes/mdat/MediaDataBox;
.super Ljava/lang/Object;
.source "MediaDataBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/a;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final BUFFER_SIZE:I = 0xa00000

.field private static LOG:Ljava/util/logging/Logger; = null

.field public static final TYPE:Ljava/lang/String; = "mdat"


# instance fields
.field private cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/ref/Reference",
            "<",
            "Ljava/nio/ByteBuffer;",
            ">;>;"
        }
    .end annotation
.end field

.field private content:Ljava/nio/ByteBuffer;

.field private contentSize:J

.field private fileChannel:Ljava/nio/channels/FileChannel;

.field header:Ljava/nio/ByteBuffer;

.field parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field private startPosition:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->$assertionsDisabled:Z

    const-class v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->LOG:Ljava/util/logging/Logger;

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    return-void
.end method

.method private checkStillOk()Z
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->startPosition:J

    iget-object v3, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    invoke-virtual {v1, v0}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;)I

    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-boolean v1, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->$assertionsDisabled:Z

    if-nez v1, :cond_40

    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_40

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "It seems that the content I want to read has already been overwritten."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_3a
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_3a} :catch_3a

    :catch_3a
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_3f
    return v0

    :cond_40
    const/4 v0, 0x1

    goto :goto_3f
.end method

.method private static transfer(Ljava/nio/channels/FileChannel;JJLjava/nio/channels/WritableByteChannel;)V
    .registers 16

    const-wide/16 v0, 0x0

    move-wide v6, v0

    :goto_3
    cmp-long v0, v6, p3

    if-gez v0, :cond_1b

    add-long v1, p1, v6

    const-wide/32 v3, 0x3ff8000

    sub-long v8, p3, v6

    invoke-static {v3, v4, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    move-result-wide v0

    add-long/2addr v0, v6

    move-wide v6, v0

    goto :goto_3

    :cond_1b
    return-void
.end method


# virtual methods
.method public final getBox(Ljava/nio/channels/WritableByteChannel;)V
    .registers 9

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2f

    sget-boolean v0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->$assertionsDisabled:Z

    if-nez v0, :cond_14

    invoke-direct {p0}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->checkStillOk()Z

    move-result v0

    if-nez v0, :cond_14

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_14
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->startPosition:J

    iget-object v3, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    int-to-long v3, v3

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->contentSize:J

    iget-object v5, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->transfer(Ljava/nio/channels/FileChannel;JJLjava/nio/channels/WritableByteChannel;)V

    :goto_2e
    return-void

    :cond_2f
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->content:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    goto :goto_2e
.end method

.method public final declared-synchronized getContent(JI)Ljava/nio/ByteBuffer;
    .registers 13

    const-wide/32 v7, 0xa00000

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v1, v3, p1

    if-gtz v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    add-long/2addr v3, v7

    cmp-long v1, p1, v3

    if-gtz v1, :cond_e

    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    int-to-long v5, p3

    add-long/2addr v5, p1

    cmp-long v3, v3, v5

    if-ltz v3, :cond_e

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    sub-long v2, p1, v2

    long-to-int v0, v2

    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_5c
    .catchall {:try_start_4 .. :try_end_5c} :catchall_8d

    :goto_5c
    monitor-exit p0

    return-object v0

    :cond_5e
    :try_start_5e
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->startPosition:J

    add-long/2addr v2, p1

    const-wide/32 v4, 0xa00000

    iget-wide v6, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->contentSize:J

    sub-long/2addr v6, p1

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;
    :try_end_72
    .catchall {:try_start_5e .. :try_end_72} :catchall_8d
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_72} :catch_90

    move-result-object v0

    :try_start_73
    iget-object v1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;
    :try_end_8c
    .catchall {:try_start_73 .. :try_end_8c} :catchall_8d

    goto :goto_5c

    :catchall_8d
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_90
    move-exception v0

    :try_start_91
    sget-object v1, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->LOG:Ljava/util/logging/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Even mapping just 10MB of the source file into the memory failed. "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/logging/Logger;->fine(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Delayed reading of mdat content failed. Make sure not to close the FileChannel that has been used to create the IsoFile!"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_ad
    .catchall {:try_start_91 .. :try_end_ad} :catchall_8d
.end method

.method public final getHeader()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public final getSize()J
    .registers 5

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->contentSize:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public final getType()Ljava/lang/String;
    .registers 2

    const-string v0, "mdat"

    return-object v0
.end method

.method public final parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
    .registers 10

    iput-object p2, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->header:Ljava/nio/ByteBuffer;

    iput-wide p3, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->contentSize:J

    instance-of v0, p1, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2b

    sget v0, Lcom/googlecode/mp4parser/AbstractBox;->MEM_MAP_THRESHOLD:I

    int-to-long v0, v0

    cmp-long v0, p3, v0

    if-lez v0, :cond_2b

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->fileChannel:Ljava/nio/channels/FileChannel;

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->startPosition:J

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    check-cast p1, Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    add-long/2addr v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_2a
    return-void

    :cond_2b
    invoke-static {p3, p4}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/c;->a(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->content:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->cache:Ljava/util/Map;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Ljava/lang/ref/SoftReference;

    iget-object v3, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->content:Ljava/nio/ByteBuffer;

    invoke-direct {v2, v3}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2a
.end method

.method public final setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/MediaDataBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-void
.end method
