.class public Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "TrackExtendsBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "trex"


# instance fields
.field private defaultSampleDescriptionIndex:J

.field private defaultSampleDuration:J

.field private defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

.field private defaultSampleSize:J

.field private trackId:J


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "trex"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    new-instance v0, Lcom/coremedia/iso/boxes/fragment/a;

    invoke-direct {v0, p1}, Lcom/coremedia/iso/boxes/fragment/a;-><init>(Ljava/nio/ByteBuffer;)V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/fragment/a;->a(Ljava/nio/ByteBuffer;)V

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    const-wide/16 v0, 0x18

    return-wide v0
.end method

.method public getDefaultSampleDescriptionIndex()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    return-wide v0
.end method

.method public getDefaultSampleDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    return-wide v0
.end method

.method public getDefaultSampleFlags()Lcom/coremedia/iso/boxes/fragment/a;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    return-object v0
.end method

.method public getDefaultSampleFlagsStr()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/fragment/a;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultSampleSize()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    return-wide v0
.end method

.method public getTrackId()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    return-wide v0
.end method

.method public setDefaultSampleDescriptionIndex(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDescriptionIndex:J

    return-void
.end method

.method public setDefaultSampleDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleDuration:J

    return-void
.end method

.method public setDefaultSampleFlags(Lcom/coremedia/iso/boxes/fragment/a;)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleFlags:Lcom/coremedia/iso/boxes/fragment/a;

    return-void
.end method

.method public setDefaultSampleSize(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->defaultSampleSize:J

    return-void
.end method

.method public setTrackId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/TrackExtendsBox;->trackId:J

    return-void
.end method
