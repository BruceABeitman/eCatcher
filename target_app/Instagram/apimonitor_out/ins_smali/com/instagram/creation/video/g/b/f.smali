.class public final Lcom/instagram/creation/video/g/b/f;
.super Ljava/lang/Object;
.source "MediaBaseCodecBuffer.java"
.implements Lcom/instagram/creation/video/g/b/a;
.field private final a:Ljava/lang/ref/WeakReference;
.field private final b:I
.field private c:Landroid/media/MediaCodec$BufferInfo;
.field private d:Z
.method public constructor <init>(Ljava/nio/ByteBuffer;ILandroid/media/MediaCodec$BufferInfo;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/instagram/creation/video/g/b/f;->a:Ljava/lang/ref/WeakReference;
iput p2, p0, Lcom/instagram/creation/video/g/b/f;->b:I
iput-object p3, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/video/g/b/f;->d:Z
return-void
.end method
.method public final a()Ljava/nio/ByteBuffer;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/b/f;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/nio/ByteBuffer;
return-object v0
.end method
.method public final a(IJI)V
.registers 11
iget-object v0, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;
if-nez v0, :cond_b
new-instance v0, Landroid/media/MediaCodec$BufferInfo;
invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;
:cond_b
iget-object v0, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;
const/4 v1, 0x0
move v2, p1
move-wide v3, p2
move v5, p4
invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V
return-void
.end method
.method public final b()Landroid/media/MediaCodec$BufferInfo;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/b/f;->c:Landroid/media/MediaCodec$BufferInfo;
return-object v0
.end method
.method public final c()I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/g/b/f;->b:I
return v0
.end method
.method public final d()Z
.registers 2
iget v0, p0, Lcom/instagram/creation/video/g/b/f;->b:I
if-ltz v0, :cond_6
const/4 v0, 0x1
:goto_5
return v0
:cond_6
const/4 v0, 0x0
goto :goto_5
.end method
.method public final e()Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/creation/video/g/b/f;->d:Z
return v0
.end method
.method final f()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/video/g/b/f;->d:Z
return-void
.end method