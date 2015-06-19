.class public Lcom/coremedia/iso/boxes/FreeBox;
.super Ljava/lang/Object;
.source "FreeBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/a;


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field public static final TYPE:Ljava/lang/String; = "free"


# instance fields
.field data:Ljava/nio/ByteBuffer;

.field private parent:Lcom/coremedia/iso/boxes/ContainerBox;

.field replacers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/coremedia/iso/boxes/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coremedia/iso/boxes/FreeBox;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/coremedia/iso/boxes/FreeBox;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method


# virtual methods
.method public addAndReplace(Lcom/coremedia/iso/boxes/a;)V
    .registers 5

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/c/b;->a(J)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public getBox(Ljava/nio/channels/WritableByteChannel;)V
    .registers 5

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    invoke-interface {v0, p1}, Lcom/coremedia/iso/boxes/a;->getBox(Ljava/nio/channels/WritableByteChannel;)V

    goto :goto_6

    :cond_16
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iget-object v1, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    int-to-long v1, v1

    invoke-static {v0, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    const-string v1, "free"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public getData()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public getParent()Lcom/coremedia/iso/boxes/ContainerBox;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-object v0
.end method

.method public getSize()J
    .registers 7

    const-wide/16 v0, 0x8

    iget-object v2, p0, Lcom/coremedia/iso/boxes/FreeBox;->replacers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    invoke-interface {v0}, Lcom/coremedia/iso/boxes/a;->getSize()J

    move-result-wide v4

    add-long v0, v1, v4

    move-wide v1, v0

    goto :goto_9

    :cond_1d
    iget-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    int-to-long v3, v0

    add-long v0, v1, v3

    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .registers 2

    const-string v0, "free"

    return-object v0
.end method

.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
    .registers 12

    instance-of v0, p1, Ljava/nio/channels/FileChannel;

    if-eqz v0, :cond_2c

    const-wide/32 v0, 0x100000

    cmp-long v0, p3, v0

    if-lez v0, :cond_2c

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    sget-object v1, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    move-object v2, p1

    check-cast v2, Ljava/nio/channels/FileChannel;

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v2

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    move-object v0, p1

    check-cast v0, Ljava/nio/channels/FileChannel;

    check-cast p1, Ljava/nio/channels/FileChannel;

    invoke-virtual {p1}, Ljava/nio/channels/FileChannel;->position()J

    move-result-wide v1

    add-long/2addr v1, p3

    invoke-virtual {v0, v1, v2}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    :goto_2b
    return-void

    :cond_2c
    sget-boolean v0, Lcom/coremedia/iso/boxes/FreeBox;->$assertionsDisabled:Z

    if-nez v0, :cond_3d

    const-wide/32 v0, 0x7fffffff

    cmp-long v0, p3, v0

    if-ltz v0, :cond_3d

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :cond_3d
    invoke-static {p1, p3, p4}, Lcom/coremedia/iso/c;->a(Ljava/nio/channels/ReadableByteChannel;J)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    goto :goto_2b
.end method

.method public setData(Ljava/nio/ByteBuffer;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeBox;->data:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public setParent(Lcom/coremedia/iso/boxes/ContainerBox;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/FreeBox;->parent:Lcom/coremedia/iso/boxes/ContainerBox;

    return-void
.end method
