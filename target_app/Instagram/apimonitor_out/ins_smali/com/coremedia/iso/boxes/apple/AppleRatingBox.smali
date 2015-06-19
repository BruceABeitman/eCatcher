.class public final Lcom/coremedia/iso/boxes/apple/AppleRatingBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleRatingBox.java"
.field public static final TYPE:Ljava/lang/String; = "rtng"
.method public constructor <init>()V
.registers 2
const-string v0, "rtng"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getUint8AppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleRatingBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
return-void
.end method