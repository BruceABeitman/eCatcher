.class public Lcom/coremedia/iso/c;
.super Ljava/lang/Object;
.source "ChannelHelper.java"


# static fields
.field static final synthetic a:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coremedia/iso/c;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/coremedia/iso/c;->a:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I
    .registers 6

    const/4 v2, -0x1

    const/4 v0, 0x0

    :cond_2
    invoke-interface {p0, p1}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v1

    if-eq v2, v1, :cond_b

    add-int/2addr v0, v1

    if-ne v0, p2, :cond_2

    :cond_b
    if-ne v1, v2, :cond_15

    new-instance v0, Ljava/io/EOFException;

    const-string v1, "End of file. No more boxes."

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_15
    return v0
.end method

.method public static a(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;
    .registers 9

    instance-of v0, p0, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2b

    const-wide/32 v0, 0x100000

    cmp-long v0, p1, v0

    if-lez v0, :cond_2b

    move-object v0, p0

    check-cast v0, Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v2, p0

    check-cast v2, Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-wide v4, p1

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v1

    move-object v0, p0

    check-cast v0, Ljava/nio/channels/FileChannel;

    check-cast p0, Ljava/nio/channels/FileChannel;

    invoke-virtual {p0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    add-long/2addr v2, p1

    invoke-virtual {v0, v2, v3}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    move-object v0, v1

    :cond_2a
    return-object v0

    :cond_2b
    invoke-static {p1, p2}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    invoke-static {p0, v0, v1}, Lcom/coremedia/iso/c;->a(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;I)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    sget-boolean v1, Lcom/coremedia/iso/c;->a:Z

    if-nez v1, :cond_2a

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v1, p1

    if-eqz v1, :cond_2a

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
