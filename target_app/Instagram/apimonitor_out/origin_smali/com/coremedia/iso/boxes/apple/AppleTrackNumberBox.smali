.class public final Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleTrackNumberBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "trkn"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "trkn"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getNumberOfTracks()B
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    return v0
.end method

.method public final getTrackNumber()B
    .registers 3

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    return v0
.end method

.method public final setNumberOfTracks(B)V
    .registers 4

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x5

    aput-byte p1, v0, v1

    iget-object v1, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

.method public final setTrackNumber(B)V
    .registers 4

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    const/4 v1, 0x3

    aput-byte p1, v0, v1

    iget-object v1, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v1, v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

.method public final setTrackNumber(BB)V
    .registers 8

    const/4 v4, 0x4

    const/4 v3, 0x0

    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0, v3}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    new-array v1, v4, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTrackNumberBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/16 v1, 0x8

    new-array v1, v1, [B

    aput-byte v3, v1, v3

    const/4 v2, 0x1

    aput-byte v3, v1, v2

    const/4 v2, 0x2

    aput-byte v3, v1, v2

    const/4 v2, 0x3

    aput-byte p1, v1, v2

    aput-byte v3, v1, v4

    const/4 v2, 0x5

    aput-byte p2, v1, v2

    const/4 v2, 0x6

    aput-byte v3, v1, v2

    const/4 v2, 0x7

    aput-byte v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method
