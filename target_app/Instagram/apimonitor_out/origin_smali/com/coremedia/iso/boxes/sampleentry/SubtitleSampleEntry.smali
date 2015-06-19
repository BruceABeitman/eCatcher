.class public Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;
.super Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;
.source "SubtitleSampleEntry.java"


# static fields
.field public static final TYPE1:Ljava/lang/String; = "stpp"

.field public static final TYPE_ENCRYPTED:Ljava/lang/String; = ""


# instance fields
.field private imageMimeType:Ljava/lang/String;

.field private namespace:Ljava/lang/String;

.field private schemaLocation:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SampleEntry;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->_parseReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->namespace:Ljava/lang/String;

    invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->schemaLocation:Ljava/lang/String;

    invoke-static {p1}, Lcom/coremedia/iso/e;->g(Ljava/nio/ByteBuffer;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->imageMimeType:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->_parseChildBoxes(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->_writeReservedAndDataReferenceIndex(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->namespace:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->schemaLocation:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->imageMimeType:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;Ljava/lang/String;)V

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->namespace:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, 0x8

    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->schemaLocation:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->imageMimeType:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x3

    int-to-long v0, v0

    return-wide v0
.end method

.method public getImageMimeType()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->imageMimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->namespace:Ljava/lang/String;

    return-object v0
.end method

.method public getSchemaLocation()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->schemaLocation:Ljava/lang/String;

    return-object v0
.end method

.method public setImageMimeType(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->imageMimeType:Ljava/lang/String;

    return-void
.end method

.method public setNamespace(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->namespace:Ljava/lang/String;

    return-void
.end method

.method public setSchemaLocation(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/sampleentry/SubtitleSampleEntry;->schemaLocation:Ljava/lang/String;

    return-void
.end method
