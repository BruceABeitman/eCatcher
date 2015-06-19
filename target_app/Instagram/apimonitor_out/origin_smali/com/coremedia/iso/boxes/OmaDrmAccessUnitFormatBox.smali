.class public final Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "OmaDrmAccessUnitFormatBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "odaf"


# instance fields
.field private allBits:B

.field private initVectorLength:I

.field private keyIndicatorLength:I

.field private selectiveEncryption:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "odaf"

    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final _parseDetails(Ljava/nio/ByteBuffer;)V
    .registers 4

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->allBits:B

    iget-byte v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->allBits:B

    and-int/lit16 v0, v0, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_22

    const/4 v0, 0x1

    :goto_13
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->selectiveEncryption:Z

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->keyIndicatorLength:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->initVectorLength:I

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_13
.end method

.method protected final getContent(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V

    iget-byte v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->allBits:B

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->keyIndicatorLength:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->initVectorLength:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    return-void
.end method

.method protected final getContentSize()J
    .registers 3

    const-wide/16 v0, 0x7

    return-wide v0
.end method

.method public final getInitVectorLength()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->initVectorLength:I

    return v0
.end method

.method public final getKeyIndicatorLength()I
    .registers 2

    iget v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->keyIndicatorLength:I

    return v0
.end method

.method public final isSelectiveEncryption()Z
    .registers 2

    iget-boolean v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->selectiveEncryption:Z

    return v0
.end method

.method public final setAllBits(B)V
    .registers 4

    iput-byte p1, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->allBits:B

    and-int/lit16 v0, p1, 0x80

    const/16 v1, 0x80

    if-ne v0, v1, :cond_c

    const/4 v0, 0x1

    :goto_9
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->selectiveEncryption:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final setInitVectorLength(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->initVectorLength:I

    return-void
.end method

.method public final setKeyIndicatorLength(I)V
    .registers 2

    iput p1, p0, Lcom/coremedia/iso/boxes/OmaDrmAccessUnitFormatBox;->keyIndicatorLength:I

    return-void
.end method
