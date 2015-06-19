.class public Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "SubtitleMediaHeaderBox.java"
.field public static final TYPE:Ljava/lang/String; = "sthd"
.method public constructor <init>()V
.registers 2
const-string v0, "sthd"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/SubtitleMediaHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x4
return-wide v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
const-string v0, "SubtitleMediaHeaderBox"
return-object v0
.end method