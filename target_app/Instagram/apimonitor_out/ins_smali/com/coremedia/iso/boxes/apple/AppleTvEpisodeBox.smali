.class public Lcom/coremedia/iso/boxes/apple/AppleTvEpisodeBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleTvEpisodeBox.java"
.field public static final TYPE:Ljava/lang/String; = "tves"
.method public constructor <init>()V
.registers 2
const-string v0, "tves"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint32AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTvEpisodeBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
return-void
.end method