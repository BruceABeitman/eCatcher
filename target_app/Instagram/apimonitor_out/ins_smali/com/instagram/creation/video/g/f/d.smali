.class final Lcom/instagram/creation/video/g/f/d;
.super Ljava/lang/Object;
.source "VideoResizeOperation.java"
.implements Lcom/instagram/creation/video/g/b/a;
.field private final a:Ljava/nio/ByteBuffer;
.field private final b:Landroid/media/MediaCodec$BufferInfo;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x10
invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/g/f/d;->a:Ljava/nio/ByteBuffer;
new-instance v0, Landroid/media/MediaCodec$BufferInfo;
invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/g/f/d;->b:Landroid/media/MediaCodec$BufferInfo;
return-void
.end method
.method public final a()Ljava/nio/ByteBuffer;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/f/d;->a:Ljava/nio/ByteBuffer;
return-object v0
.end method
.method public final a(IJI)V
.registers 11
iget-object v0, p0, Lcom/instagram/creation/video/g/f/d;->b:Landroid/media/MediaCodec$BufferInfo;
const/4 v1, 0x0
move v2, p1
move-wide v3, p2
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V
return-void
.end method
.method public final b()Landroid/media/MediaCodec$BufferInfo;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/f/d;->b:Landroid/media/MediaCodec$BufferInfo;
return-object v0
.end method