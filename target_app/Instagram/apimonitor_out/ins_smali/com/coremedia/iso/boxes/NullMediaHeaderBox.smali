.class public Lcom/coremedia/iso/boxes/NullMediaHeaderBox;
.super Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;
.source "NullMediaHeaderBox.java"
.method public constructor <init>()V
.registers 2
const-string v0, "nmhd"
invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/AbstractMediaHeaderBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/NullMediaHeaderBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x4
return-wide v0
.end method