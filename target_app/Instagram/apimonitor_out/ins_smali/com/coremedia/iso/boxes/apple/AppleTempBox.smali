.class public final Lcom/coremedia/iso/boxes/apple/AppleTempBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleTempBox.java"
.field public static final TYPE:Ljava/lang/String; = "tmpo"
.method public constructor <init>()V
.registers 2
const-string v0, "tmpo"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint16AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
return-void
.end method
.method public final getTempo()I
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B
move-result-object v0
const/4 v1, 0x1
aget-byte v0, v0, v1
return v0
.end method
.method public final setTempo(I)V
.registers 6
const/4 v2, 0x0
new-instance v0, Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-direct {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0, v2}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setVersion(I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
const/16 v1, 0x15
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFlags(I)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
const/4 v1, 0x4
new-array v1, v1, [B
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setFourBytes([B)V
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleTempBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
const/4 v1, 0x2
new-array v1, v1, [B
aput-byte v2, v1, v2
const/4 v2, 0x1
and-int/lit16 v3, p1, 0xff
int-to-byte v3, v3
aput-byte v3, v1, v2
invoke-virtual {v0, v1}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->setData([B)V
return-void
.end method