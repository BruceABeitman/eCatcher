.class public Lcom/coremedia/iso/boxes/SampleDescriptionBox;
.super Lcom/googlecode/mp4parser/FullContainerBox;
.source "SampleDescriptionBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "stsd"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "stsd"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .registers 5

    invoke-super {p0}, Lcom/googlecode/mp4parser/FullContainerBox;->getContentSize()J

    move-result-wide v0

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public getSampleEntry()Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
    .registers 4

    iget-object v0, p0, Lcom/coremedia/iso/boxes/SampleDescriptionBox;->boxes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_6
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_19

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/coremedia/iso/boxes/a;

    instance-of v2, v0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    if-eqz v2, :cond_6

    check-cast v0, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;

    :goto_18
    return-object v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_18
.end method
