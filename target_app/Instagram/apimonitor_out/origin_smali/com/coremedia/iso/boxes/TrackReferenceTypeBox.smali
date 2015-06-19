.class public Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "TrackReferenceTypeBox.java"


# static fields
.field public static final TYPE1:Ljava/lang/String; = "hint"

.field public static final TYPE2:Ljava/lang/String; = "cdsc"


# instance fields
.field private trackIds:[J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 7

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    div-int/lit8 v1, v0, 0x4

    new-array v0, v1, [J

    iput-object v0, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    const/4 v0, 0x0

    :goto_b
    if-ge v0, v1, :cond_18

    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J

    move-result-wide v3

    aput-wide v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_18
    return-void
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 7

    iget-object v1, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    array-length v2, v1

    const/4 v0, 0x0

    :goto_4
    if-ge v0, v2, :cond_e

    aget-wide v3, v1, v0

    invoke-static {p1, v3, v4}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_e
    return-void
.end method

.method protected getContentSize()J
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    int-to-long v0, v0

    return-wide v0
.end method

.method public getTrackIds()[J
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TrackReferenceTypeBox[type="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_13
    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    array-length v2, v2

    if-ge v0, v2, :cond_2f

    const-string v2, ";trackId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/coremedia/iso/boxes/TrackReferenceTypeBox;->trackIds:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_13

    :cond_2f
    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
