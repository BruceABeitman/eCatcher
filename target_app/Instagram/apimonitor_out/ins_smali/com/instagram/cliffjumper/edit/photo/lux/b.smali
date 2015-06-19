.class final Lcom/instagram/cliffjumper/edit/photo/lux/b;
.super Ljava/lang/Object;
.source "CdfManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
.field final synthetic b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/lux/a;Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;)V
.registers 3
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
const/4 v4, 0x1
const/4 v3, -0x1
invoke-static {}, Lcom/instagram/cliffjumper/util/a/c;->a()Lcom/instagram/cliffjumper/util/a/d;
move-result-object v0
iget-boolean v0, v0, Lcom/instagram/cliffjumper/util/a/d;->d:Z
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I
move-result v1
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->calcCDF(I)I
move-result v1
invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;I)I
:goto_19
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I
move-result v0
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Ljava/util/concurrent/CountDownLatch;
move-result-object v0
invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
monitor-enter v1
:try_start_2e
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Z
move-result v0
if-eqz v0, :cond_5d
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c(Lcom/instagram/cliffjumper/edit/photo/lux/a;)I
move-result v0
if-eq v0, v3, :cond_4d
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->c(Lcom/instagram/cliffjumper/edit/photo/lux/a;)I
move-result v0
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
const/4 v2, -0x1
invoke-static {v0, v2}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;I)I
:cond_4d
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
new-instance v2, Ljava/util/concurrent/CountDownLatch;
const/4 v3, 0x1
invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V
invoke-static {v0, v2}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;Ljava/util/concurrent/CountDownLatch;)Ljava/util/concurrent/CountDownLatch;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->d(Lcom/instagram/cliffjumper/edit/photo/lux/a;)Z
:cond_5d
monitor-exit v1
:try_end_5e
.catchall {:try_start_2e .. :try_end_5e} :catchall_79
return-void
:cond_5f
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->a:Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I
move-result v0
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->calcBWpoint(I)[F
move-result-object v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
const/4 v2, 0x0
aget v2, v0, v2
invoke-static {v1, v2}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->a(Lcom/instagram/cliffjumper/edit/photo/lux/a;F)F
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/lux/b;->b:Lcom/instagram/cliffjumper/edit/photo/lux/a;
aget v0, v0, v4
invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/lux/a;->b(Lcom/instagram/cliffjumper/edit/photo/lux/a;F)F
goto :goto_19
:catchall_79
move-exception v0
monitor-exit v1
throw v0
.end method