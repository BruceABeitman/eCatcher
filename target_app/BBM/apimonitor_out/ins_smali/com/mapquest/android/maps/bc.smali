.class final Lcom/mapquest/android/maps/bc;
.super Landroid/os/Handler;
.source "MemoryTileCache.java"
.field  a:Ljava/util/concurrent/ConcurrentLinkedQueue;
.field final synthetic b:Lcom/mapquest/android/maps/ba;
.method public constructor <init>(Lcom/mapquest/android/maps/ba;Landroid/os/Looper;)V
.registers 4
iput-object p1, p0, Lcom/mapquest/android/maps/bc;->b:Lcom/mapquest/android/maps/ba;
invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/mapquest/android/maps/bc;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
iput-object v0, p0, Lcom/mapquest/android/maps/bc;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;
return-void
.end method
.method public final a(Landroid/graphics/Bitmap;)V
.registers 3
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/mapquest/android/maps/bc;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/bc;->sendEmptyMessage(I)Z
:cond_b
return-void
.end method
.method public final handleMessage(Landroid/os/Message;)V
.registers 4
iget v0, p1, Landroid/os/Message;->what:I
if-nez v0, :cond_20
:goto_4
:cond_4
iget-object v0, p0, Lcom/mapquest/android/maps/bc;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->isEmpty()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/mapquest/android/maps/bc;->a:Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
if-eqz v0, :cond_4
invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z
move-result v1
if-nez v1, :cond_4
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_4
:cond_20
invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V
return-void
.end method