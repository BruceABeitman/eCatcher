.class public Lcom/coremedia/iso/boxes/DataEntryUrlBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "DataEntryUrlBox.java"
.field public static final TYPE:Ljava/lang/String; = "url "
.method public constructor <init>()V
.registers 2
const-string v0, "url "
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/DataEntryUrlBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x4
return-wide v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
const-string v0, "DataEntryUrlBox[]"
return-object v0
.end method