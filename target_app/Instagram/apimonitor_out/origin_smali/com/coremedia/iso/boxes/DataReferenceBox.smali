.class public Lcom/coremedia/iso/boxes/DataReferenceBox;
.super Lcom/googlecode/mp4parser/FullContainerBox;
.source "DataReferenceBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "dref"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "dref"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/FullContainerBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/DataReferenceBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    const/4 v0, 0x4

    new-array v0, v0, [B

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/DataReferenceBox;->parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/DataReferenceBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/DataReferenceBox;->getBoxes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-long v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/DataReferenceBox;->writeChildBoxes(Ljava/nio/ByteBuffer;)V

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
