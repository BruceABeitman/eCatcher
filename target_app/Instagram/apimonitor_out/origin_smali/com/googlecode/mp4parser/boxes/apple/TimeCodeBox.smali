.class public Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "TimeCodeBox.java"


# instance fields
.field data:[B


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "tmcd"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    const/16 v0, 0x12

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->data:[B

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->data:[B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .registers 7

    const-wide/16 v0, 0x1a

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/apple/TimeCodeBox;->boxes:Ljava/util/List;

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
    return-wide v1
.end method
