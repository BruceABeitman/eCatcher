.class public final Lcom/coremedia/iso/boxes/sampleentry/a;
.super Ljava/lang/Object;
.source "TextSampleEntry.java"
.field  a:I
.field  b:I
.field  c:I
.field  d:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Ljava/nio/ByteBuffer;)V
.registers 3
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->a:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->b:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->c:I
invoke-static {p1}, Lcom/coremedia/iso/e;->d(Ljava/nio/ByteBuffer;)I
move-result v0
iput v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->d:I
return-void
.end method
.method public final b(Ljava/nio/ByteBuffer;)V
.registers 3
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->a:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->b:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->c:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->d:I
invoke-static {p1, v0}, Lcom/coremedia/iso/g;->b(Ljava/nio/ByteBuffer;I)V
return-void
.end method