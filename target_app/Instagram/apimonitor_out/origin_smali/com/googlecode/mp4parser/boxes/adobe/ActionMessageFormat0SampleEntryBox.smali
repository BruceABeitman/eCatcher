.class public Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "ActionMessageFormat0SampleEntryBox.java"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "amf0"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->_writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .registers 7

    const-wide/16 v0, 0x8

    iget-object v2, p0, Lcom/googlecode/mp4parser/boxes/adobe/ActionMessageFormat0SampleEntryBox;->boxes:Ljava/util/List;

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
