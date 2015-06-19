.class public Lcom/coremedia/iso/boxes/apple/AppleStoreAccountTypeBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleStoreAccountTypeBox.java"
.field public static final TYPE:Ljava/lang/String; = "akID"
.method public constructor <init>()V
.registers 2
const-string v0, "akID"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleStoreAccountTypeBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
return-void
.end method
.method public getReadableValue()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleStoreAccountTypeBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
invoke-virtual {v0}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getData()[B
move-result-object v0
const/4 v1, 0x0
aget-byte v0, v0, v1
packed-switch v0, :pswitch_data_16
const-string v0, "unknown Account"
:goto_e
return-object v0
:pswitch_f
const-string v0, "iTunes Account"
goto :goto_e
:pswitch_12
const-string v0, "AOL Account"
goto :goto_e
nop
:pswitch_data_16
.packed-switch 0x0
:pswitch_f
:pswitch_12
.end packed-switch
.end method