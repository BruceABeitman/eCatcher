.class public final Lcom/coremedia/iso/boxes/apple/AppleCoverBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleCoverBox.java"


# static fields
.field private static LOG:Ljava/util/logging/Logger; = null

.field public static final TYPE:Ljava/lang/String; = "covr"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->LOG:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const-string v0, "covr"

    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .registers 2

    const-string v0, "---"

    return-object v0
.end method

.method public final setJpg([B)V
    .registers 4

    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

.method public final setPng([B)V
    .registers 4

    new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V

    iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    const/4 v1, 0x4

    new-array v1, v1, [B

    invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V

    iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;

    invoke-virtual {v0, p1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V

    return-void
.end method

.method public final setValue(Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/coremedia/iso/boxes/apple/AppleCoverBox;->LOG:Ljava/util/logging/Logger;

    const-string v1, "---"

    invoke-virtual {v0, v1}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    return-void
.end method
