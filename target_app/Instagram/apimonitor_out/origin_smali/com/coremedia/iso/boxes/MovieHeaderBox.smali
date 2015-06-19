.class public Lcom/coremedia/iso/boxes/MovieHeaderBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "MovieHeaderBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "mvhd"


# instance fields
.field private creationTime:J

.field private currentTime:I

.field private duration:J

.field private matrix:[J

.field private modificationTime:J

.field private nextTrackId:J

.field private posterTime:I

.field private previewDuration:I

.field private previewTime:I

.field private rate:D

.field private selectionDuration:I

.field private selectionTime:I

.field private timescale:J

.field private volume:F


# direct methods
.method public constructor <init>()V
    .registers 3

    const-string v0, "mvhd"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    const/16 v0, 0x9

    new-array v0, v0, [J

    fill-array-data v0, :array_18

    iput-object v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    return-void

    nop

    :array_18
    .array-data 0x8
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x1t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t 0x0t
        0x0t 0x0t 0x0t 0x40t 0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 7

    const/16 v4, 0x9

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4b

    invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->h(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    :goto_24
    invoke-static {p1}, Lcom/coremedia/iso/e;->i(Ljava/nio/ByteBuffer;)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    invoke-static {p1}, Lcom/coremedia/iso/e;->j(Ljava/nio/ByteBuffer;)F

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    new-array v0, v4, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    const/4 v0, 0x0

    :goto_3e
    if-ge v0, v4, :cond_64

    iget-object v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v2

    aput-wide v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    :cond_4b
    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    goto :goto_24

    :cond_64
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewTime:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewDuration:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->posterTime:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionTime:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionDuration:I

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->currentTime:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->nextTrackId:J

    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 7

    const-wide/16 v3, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getVersion()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_43

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;J)V

    :goto_21
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;D)V

    iget v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    float-to-double v1, v1

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;D)V

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    :goto_35
    const/16 v1, 0x9

    if-ge v0, v1, :cond_58

    iget-object v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    aget-wide v1, v1, v0

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_35

    :cond_43
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    iget-wide v1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    invoke-static {p1, v1, v2}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    goto :goto_21

    :cond_58
    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->posterTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionDuration:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->currentTime:I

    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->nextTrackId:J

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    return-void
.end method

.method protected getContentSize()J
    .registers 5

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getVersion()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    const-wide/16 v0, 0x20

    :goto_9
    const-wide/16 v2, 0x50

    add-long/2addr v0, v2

    return-wide v0

    :cond_d
    const-wide/16 v0, 0x14

    goto :goto_9
.end method

.method public getCreationTime()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    return-wide v0
.end method

.method public getCurrentTime()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->currentTime:I

    return v0
.end method

.method public getDuration()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    return-wide v0
.end method

.method public getMatrix()[J
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    return-object v0
.end method

.method public getModificationTime()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    return-wide v0
.end method

.method public getNextTrackId()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->nextTrackId:J

    return-wide v0
.end method

.method public getPosterTime()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->posterTime:I

    return v0
.end method

.method public getPreviewDuration()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewDuration:I

    return v0
.end method

.method public getPreviewTime()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewTime:I

    return v0
.end method

.method public getRate()D
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    return-wide v0
.end method

.method public getSelectionDuration()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionDuration:I

    return v0
.end method

.method public getSelectionTime()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionTime:I

    return v0
.end method

.method public getTimescale()J
    .registers 3

    iget-wide v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    return-wide v0
.end method

.method public getVolume()F
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    return v0
.end method

.method public setCreationTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->creationTime:J

    return-void
.end method

.method public setCurrentTime(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->currentTime:I

    return-void
.end method

.method public setDuration(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->duration:J

    return-void
.end method

.method public setMatrix([J)V
    .registers 2

    iput-object p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    return-void
.end method

.method public setModificationTime(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->modificationTime:J

    return-void
.end method

.method public setNextTrackId(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->nextTrackId:J

    return-void
.end method

.method public setPosterTime(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->posterTime:I

    return-void
.end method

.method public setPreviewDuration(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewDuration:I

    return-void
.end method

.method public setPreviewTime(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->previewTime:I

    return-void
.end method

.method public setRate(D)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->rate:D

    return-void
.end method

.method public setSelectionDuration(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionDuration:I

    return-void
.end method

.method public setSelectionTime(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->selectionTime:I

    return-void
.end method

.method public setTimescale(J)V
    .registers 3

    iput-wide p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->timescale:J

    return-void
.end method

.method public setVolume(F)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->volume:F

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "MovieHeaderBox["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "creationTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getCreationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "modificationTime="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getModificationTime()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "timescale="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getTimescale()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "duration="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "rate="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getRate()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "volume="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getVolume()F

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_72
    iget-object v2, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    array-length v2, v2

    if-ge v0, v2, :cond_96

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "matrix"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/coremedia/iso/boxes/MovieHeaderBox;->matrix:[J

    aget-wide v3, v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_72

    :cond_96
    const-string v0, ";"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "nextTrackId="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/MovieHeaderBox;->getNextTrackId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
