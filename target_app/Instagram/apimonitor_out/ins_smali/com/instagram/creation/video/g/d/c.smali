.class public final Lcom/instagram/creation/video/g/d/c;
.super Ljava/lang/Object;
.source "PlatformBasedCodecMuxer.java"
.implements Lcom/instagram/creation/video/g/d/b;
.field private a:Landroid/media/MediaMuxer;
.field private b:I
.field private c:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/d/c;->a:Landroid/media/MediaMuxer;
invoke-virtual {v0}, Landroid/media/MediaMuxer;->start()V
return-void
.end method
.method public final a(Landroid/media/MediaFormat;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/g/d/c;->a:Landroid/media/MediaMuxer;
invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/g/d/c;->b:I
return-void
.end method
.method public final a(Lcom/instagram/creation/video/g/b/a;)V
.registers 6
iget-object v0, p0, Lcom/instagram/creation/video/g/d/c;->a:Landroid/media/MediaMuxer;
iget v1, p0, Lcom/instagram/creation/video/g/d/c;->b:I
invoke-interface {p1}, Lcom/instagram/creation/video/g/b/a;->a()Ljava/nio/ByteBuffer;
move-result-object v2
invoke-interface {p1}, Lcom/instagram/creation/video/g/b/a;->b()Landroid/media/MediaCodec$BufferInfo;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
new-instance v0, Landroid/media/MediaMuxer;
const/4 v1, 0x0
invoke-direct {v0, p1, v1}, Landroid/media/MediaMuxer;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/instagram/creation/video/g/d/c;->a:Landroid/media/MediaMuxer;
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/d/c;->a:Landroid/media/MediaMuxer;
invoke-virtual {v0}, Landroid/media/MediaMuxer;->stop()V
iget-object v0, p0, Lcom/instagram/creation/video/g/d/c;->a:Landroid/media/MediaMuxer;
invoke-virtual {v0}, Landroid/media/MediaMuxer;->release()V
return-void
.end method
.method public final b(Landroid/media/MediaFormat;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/video/g/d/c;->a:Landroid/media/MediaMuxer;
invoke-virtual {v0, p1}, Landroid/media/MediaMuxer;->addTrack(Landroid/media/MediaFormat;)I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/g/d/c;->c:I
return-void
.end method
.method public final b(Lcom/instagram/creation/video/g/b/a;)V
.registers 6
iget-object v0, p0, Lcom/instagram/creation/video/g/d/c;->a:Landroid/media/MediaMuxer;
iget v1, p0, Lcom/instagram/creation/video/g/d/c;->c:I
invoke-interface {p1}, Lcom/instagram/creation/video/g/b/a;->a()Ljava/nio/ByteBuffer;
move-result-object v2
invoke-interface {p1}, Lcom/instagram/creation/video/g/b/a;->b()Landroid/media/MediaCodec$BufferInfo;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Landroid/media/MediaMuxer;->writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
return-void
.end method