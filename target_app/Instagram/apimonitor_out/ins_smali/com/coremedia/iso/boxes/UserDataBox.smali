.class public Lcom/coremedia/iso/boxes/UserDataBox;
.super Lcom/googlecode/mp4parser/AbstractContainerBox;
.source "UserDataBox.java"
.field public static final TYPE:Ljava/lang/String; = "udta"
.method public constructor <init>()V
.registers 2
const-string v0, "udta"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractContainerBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->_parseDetails(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 2
invoke-super {p0, p1}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContent(Ljava/nio/ByteBuffer;)V
return-void
.end method
.method protected getContentSize()J
.registers 3
invoke-super {p0}, Lcom/googlecode/mp4parser/AbstractContainerBox;->getContentSize()J
move-result-wide v0
return-wide v0
.end method
.method public parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
.registers 6
invoke-super/range {p0 .. p5}, Lcom/googlecode/mp4parser/AbstractContainerBox;->parse(Ljava/nio/channels/ReadableByteChannel;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/b;)V
return-void
.end method