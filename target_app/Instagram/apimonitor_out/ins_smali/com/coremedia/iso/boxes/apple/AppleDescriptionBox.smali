.class public final Lcom/coremedia/iso/boxes/apple/AppleDescriptionBox;
.super Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;
.source "AppleDescriptionBox.java"
.field public static final TYPE:Ljava/lang/String; = "desc"
.method public constructor <init>()V
.registers 2
const-string v0, "desc"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/apple/AbstractAppleMetaDataBox;-><init>(Ljava/lang/String;)V
invoke-static {}, Lcom/coremedia/iso/boxes/apple/AppleDataBox;->getStringAppleDataBox()Lcom/coremedia/iso/boxes/apple/AppleDataBox;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/boxes/apple/AppleDescriptionBox;->appleDataBox:Lcom/coremedia/iso/boxes/apple/AppleDataBox;
return-void
.end method