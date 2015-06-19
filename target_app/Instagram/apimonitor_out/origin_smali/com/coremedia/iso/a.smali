.class public abstract Lcom/coremedia/iso/a;
.super Ljava/lang/Object;
.source "AbstractBoxParser.java"

# interfaces
.implements Lcom/coremedia/iso/b;


# static fields
.field static final synthetic a:Z

.field private static b:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coremedia/iso/a;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_18

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/coremedia/iso/a;->a:Z

    const-class v0, Lcom/coremedia/iso/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/a;->b:Ljava/util/logging/Logger;

    return-void

    :cond_18
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/a;
.end method

.method public final a(Ljava/nio/channels/ReadableByteChannel;Lcom/coremedia/iso/boxes/ContainerBox;)Lcom/coremedia/iso/boxes/a;
    .registers 16

    const-wide/16 v0, 0x8

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/c;->a(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-static {v5}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const-wide/16 v0, 0x8

    cmp-long v0, v2, v0

    if-gez v0, :cond_32

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-lez v0, :cond_32

    sget-object v0, Lcom/coremedia/iso/a;->b:Ljava/util/logging/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "Plausibility check failed: size < 8 (size = "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "). Stop parsing!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->severe(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_31
    return-object v0

    :cond_32
    invoke-static {v5}, Lcom/coremedia/iso/e;->l(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    const-wide/16 v0, 0x1

    cmp-long v0, v2, v0

    if-nez v0, :cond_e2

    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-static {v0}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    const-wide/16 v0, 0x10

    sub-long v0, v2, v0

    move-wide v6, v2

    :goto_52
    const-string v2, "uuid"

    invoke-virtual {v2, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_180

    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/nio/channels/ReadableByteChannel;->read(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    const-wide/16 v3, 0x10

    sub-long v3, v0, v3

    move-object v1, v2

    :goto_6f
    invoke-interface {p2}, Lcom/coremedia/iso/boxes/ContainerBox;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v1, v0}, Lcom/coremedia/iso/a;->a(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/coremedia/iso/boxes/a;->setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V

    sget-object v2, Lcom/coremedia/iso/a;->b:Ljava/util/logging/Logger;

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "Parsing "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    sub-long v9, v6, v3

    invoke-static {v9, v10}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v2

    const/16 v9, 0x8

    if-ne v2, v9, :cond_116

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-object v2, v5

    :goto_a0
    move-object v1, p1

    move-object v5, p0

    invoke-interface/range {v0 .. v5}, Lcom/coremedia/iso/boxes/a;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V

    sget-boolean v1, Lcom/coremedia/iso/a;->a:Z

    if-nez v1, :cond_31

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v1

    cmp-long v1, v6, v1

    if-eqz v1, :cond_31

    new-instance v1, Ljava/lang/AssertionError;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Reconstructed Size is not x to the number of parsed bytes! ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") Actual Box size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " Calculated size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :cond_e2
    const-wide/16 v0, 0x0

    cmp-long v0, v2, v0

    if-nez v0, :cond_10f

    instance-of v0, p1, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_107

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v1

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    invoke-virtual {v0}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v6

    sub-long v0, v1, v6

    const-wide/16 v2, 0x8

    sub-long v2, v0, v2

    const-wide/16 v0, 0x8

    sub-long v0, v2, v0

    move-wide v6, v2

    goto/16 :goto_52

    :cond_107
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Only FileChannel inputs may use size == 0 (box reaches to the end of file)"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10f
    const-wide/16 v0, 0x8

    sub-long v0, v2, v0

    move-wide v6, v2

    goto/16 :goto_52

    :cond_116
    sub-long v9, v6, v3

    invoke-static {v9, v10}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v2

    const/16 v5, 0x10

    if-ne v2, v5, :cond_137

    const/16 v1, 0x10

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    const-wide/16 v9, 0x1

    invoke-static {v2, v9, v10}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-static {v8}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v2, v6, v7}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    goto/16 :goto_a0

    :cond_137
    sub-long v9, v6, v3

    invoke-static {v9, v10}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v2

    const/16 v5, 0x18

    if-ne v2, v5, :cond_156

    const/16 v2, 0x18

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, v6, v7}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-static {v8}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a0

    :cond_156
    sub-long v9, v6, v3

    invoke-static {v9, v10}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v2

    const/16 v5, 0x20

    if-ne v2, v5, :cond_178

    const/16 v2, 0x20

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {v2, v6, v7}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-static {v8}, Lcom/coremedia/iso/IsoFile;->fourCCtoBytes(Ljava/lang/String;)[B

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-static {v2, v6, v7}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    goto/16 :goto_a0

    :cond_178
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "I didn\'t expect that"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_180
    move-wide v11, v0

    move-object v1, v4

    move-wide v3, v11

    goto/16 :goto_6f
.end method
