.class public Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "SoundMediaHeaderBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "smhd"


# instance fields
.field private balance:F


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "smhd"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->j(Ljava/nio/ByteBuffer;)F

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->balance:F

    invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I

    return-void
.end method

.method public getBalance()F
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->balance:F

    return v0
.end method

.method protected getContent(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget v0, p0, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->balance:F

    float-to-double v0, v0

    invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;D)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method protected getContentSize()J
    .registers 3

    const-wide/16 v0, 0x8

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoundMediaHeaderBox[balance="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/SoundMediaHeaderBox;->getBalance()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
