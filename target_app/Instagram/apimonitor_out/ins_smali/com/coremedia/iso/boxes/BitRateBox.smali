.class public final Lcom/coremedia/iso/boxes/BitRateBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "BitRateBox.java"
.field public static final TYPE:Ljava/lang/String; = "btrt"
.field private avgBitrate:J
.field private bufferSizeDb:J
.field private maxBitrate:J
.method public constructor <init>()V
.registers 2
const-string v0, "btrt"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->bufferSizeDb:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->maxBitrate:J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->avgBitrate:J
return-void
.end method
.method public final getAvgBitrate()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->avgBitrate:J
return-wide v0
.end method
.method public final getBufferSizeDb()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->bufferSizeDb:J
return-wide v0
.end method
.method protected final getContent(Ljava/nio/ByteBuffer;)V
.registers 4
iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->bufferSizeDb:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->maxBitrate:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->avgBitrate:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
return-void
.end method
.method protected final getContentSize()J
.registers 3
const-wide/16 v0, 0xc
return-wide v0
.end method
.method public final getMaxBitrate()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/BitRateBox;->maxBitrate:J
return-wide v0
.end method
.method public final setAvgBitrate(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/BitRateBox;->avgBitrate:J
return-void
.end method
.method public final setBufferSizeDb(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/BitRateBox;->bufferSizeDb:J
return-void
.end method
.method public final setMaxBitrate(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/BitRateBox;->maxBitrate:J
return-void
.end method