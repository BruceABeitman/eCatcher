.class public final Lcom/instagram/creation/video/f/ao;
.super Lcom/instagram/creation/video/f/ad;
.source "VideoCoverFragmentJellybean.java"
.field private f:Ljava/util/concurrent/ThreadPoolExecutor;
.field private g:Lcom/instagram/creation/video/f/ap;
.method public constructor <init>()V
.registers 8
const/4 v1, 0x1
invoke-direct {p0}, Lcom/instagram/creation/video/f/ad;-><init>()V
new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;
const-wide/16 v3, 0x1
sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
new-instance v6, Ljava/util/concurrent/LinkedBlockingQueue;
invoke-direct {v6}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V
move v2, v1
invoke-direct/range {v0 .. v6}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;)V
iput-object v0, p0, Lcom/instagram/creation/video/f/ao;->f:Ljava/util/concurrent/ThreadPoolExecutor;
return-void
.end method
.method static synthetic a(Lcom/instagram/creation/video/f/ao;)Lcom/instagram/creation/video/f/ap;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/creation/video/f/ao;)Ljava/util/concurrent/ThreadPoolExecutor;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->f:Ljava/util/concurrent/ThreadPoolExecutor;
return-object v0
.end method
.method public final G()V
.registers 2
invoke-super {p0}, Lcom/instagram/creation/video/f/ad;->G()V
iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->f:Ljava/util/concurrent/ThreadPoolExecutor;
invoke-virtual {v0}, Ljava/util/concurrent/ThreadPoolExecutor;->shutdown()V
return-void
.end method
.method public final U()Lcom/instagram/creation/video/f/ah;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;
return-object v0
.end method
.method public final W()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;
move-result-object v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;
move-result-object v0
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;
invoke-virtual {v0}, Lcom/instagram/creation/video/f/ap;->a()Lcom/instagram/creation/video/j/f;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/creation/video/j/f;->c()Landroid/graphics/SurfaceTexture;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V
:cond_26
iput-object v1, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;
:cond_28
return-void
.end method
.method public final a(Lcom/instagram/creation/video/gl/j;)V
.registers 3
new-instance v0, Lcom/instagram/creation/video/f/ap;
invoke-direct {v0, p0, p1}, Lcom/instagram/creation/video/f/ap;-><init>(Lcom/instagram/creation/video/f/ao;Lcom/instagram/creation/video/gl/j;)V
iput-object v0, p0, Lcom/instagram/creation/video/f/ao;->g:Lcom/instagram/creation/video/f/ap;
return-void
.end method