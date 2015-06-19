.class public final Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleCustomGenreBox.java"


# static fields
.field public static final TYPE:Ljava/lang/String; = "\u00a9gen"


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "\u00a9gen"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getStringAppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    move-result-object v0

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    return-void
.end method


# virtual methods
.method public final getGenre()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B

    move-result-object v0

    invoke-static {v0}, Lcom/coremedia/iso/k;->a([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final setGenre(Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCustomGenreBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-static {p1}, Lcom/coremedia/iso/k;->a(Ljava/lang/String;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method
