.class public Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;
.super Lcom/googlecode/mp4parser/AbstractFullBox;
.source "MovieFragmentRandomAccessOffsetBox.java"
.field public static final TYPE:Ljava/lang/String; = "mfro"
.field private mfraSize:J
.method public constructor <init>()V
.registers 2
const-string v0, "mfro"
invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/AbstractFullBox;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public _parseDetails(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
invoke-static {p1}, Lcom/coremedia/iso/e;->b(Ljava/nio/ByteBuffer;)J
move-result-wide v0
iput-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->mfraSize:J
return-void
.end method
.method protected getContent(Ljava/nio/ByteBuffer;)V
.registers 4
invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->mfraSize:J
invoke-static {p1, v0, v1}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;J)V
return-void
.end method
.method protected getContentSize()J
.registers 3
const-wide/16 v0, 0x8
return-wide v0
.end method
.method public getMfraSize()J
.registers 3
iget-wide v0, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->mfraSize:J
return-wide v0
.end method
.method public setMfraSize(J)V
.registers 3
iput-wide p1, p0, Lcom/coremedia/iso/boxes/fragment/MovieFragmentRandomAccessOffsetBox;->mfraSize:J
return-void
.end method