.class  Lcom/mapquest/android/maps/bz;
.super Ljava/lang/Thread;
.source "ThreadBasedTileDownloader.java"
.implements Ljava/util/Comparator;
.field  l:Lcom/mapquest/android/maps/bu;
.field volatile m:Z
.field final synthetic n:Lcom/mapquest/android/maps/bt;
.method private constructor <init>(Lcom/mapquest/android/maps/bt;)V
.registers 5
iput-object p1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-direct {p0}, Ljava/lang/Thread;-><init>()V
new-instance v0, Lcom/mapquest/android/maps/bu;
new-instance v1, Ljava/util/concurrent/PriorityBlockingQueue;
const/16 v2, 0x32
invoke-direct {v1, v2, p0}, Ljava/util/concurrent/PriorityBlockingQueue;-><init>(ILjava/util/Comparator;)V
invoke-direct {v0, v1}, Lcom/mapquest/android/maps/bu;-><init>(Ljava/util/Queue;)V
iput-object v0, p0, Lcom/mapquest/android/maps/bz;->l:Lcom/mapquest/android/maps/bu;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/mapquest/android/maps/bz;->m:Z
return-void
.end method
.method synthetic constructor <init>(Lcom/mapquest/android/maps/bt;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/mapquest/android/maps/bz;-><init>(Lcom/mapquest/android/maps/bt;)V
return-void
.end method
.method final a(Lcom/mapquest/android/maps/ca;)Z
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v1, v1, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
if-eqz v1, :cond_1a
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->h:[B
if-eqz v1, :cond_1a
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
if-nez v1, :cond_1a
:try_start_f
iget-object v1, p1, Lcom/mapquest/android/maps/ca;->h:[B
const/4 v2, 0x0
array-length v3, v1
invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;
move-result-object v1
iput-object v1, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
:try_end_19
.catch Ljava/lang/OutOfMemoryError; {:try_start_f .. :try_end_19} :catch_1b
const/4 v0, 0x1
:goto_1a
:cond_1a
return v0
:catch_1b
move-exception v1
const-string v2, "mq.maps.downloader"
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "constructTile(): "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_1a
.end method
.method final b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v0, v0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
sget-object v1, Lcom/mapquest/android/maps/cc;->c:Lcom/mapquest/android/maps/cc;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
move-result-object v0
return-object v0
.end method
.method  b()V
.registers 2
iget-object v0, p0, Lcom/mapquest/android/maps/bz;->l:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->clear()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/mapquest/android/maps/bz;->m:Z
invoke-virtual {p0}, Lcom/mapquest/android/maps/bz;->interrupt()V
return-void
.end method
.method public c()V
.registers 1
return-void
.end method
.method final c(Lcom/mapquest/android/maps/ca;)V
.registers 4
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->g:Landroid/graphics/Bitmap;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v0, v0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v0, v0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
sget-object v1, Lcom/mapquest/android/maps/cc;->b:Lcom/mapquest/android/maps/cc;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
if-eqz v0, :cond_19
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->a(Lcom/mapquest/android/maps/ca;)V
:cond_19
return-void
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p2, Lcom/mapquest/android/maps/ca;
iget-object v0, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v0, v0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
invoke-interface {v0, p2}, Lcom/mapquest/android/maps/x;->d(Lcom/mapquest/android/maps/ca;)Z
move-result v0
if-eqz v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, -0x1
goto :goto_d
.end method
.method final d(Lcom/mapquest/android/maps/ca;)V
.registers 4
iget-object v0, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v0, v0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
if-eqz v0, :cond_24
if-eqz p1, :cond_24
iget-object v0, p1, Lcom/mapquest/android/maps/ca;->h:[B
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v0, v0, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
sget-object v1, Lcom/mapquest/android/maps/cc;->a:Lcom/mapquest/android/maps/cc;
invoke-virtual {v0, v1}, Lcom/mapquest/android/maps/cb;->a(Lcom/mapquest/android/maps/cc;)Lcom/mapquest/android/maps/x;
move-result-object v0
if-eqz v0, :cond_21
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->d(Lcom/mapquest/android/maps/ca;)Z
move-result v1
if-nez v1, :cond_21
invoke-interface {v0, p1}, Lcom/mapquest/android/maps/x;->a(Lcom/mapquest/android/maps/ca;)V
:cond_21
const/4 v0, 0x0
iput-object v0, p1, Lcom/mapquest/android/maps/ca;->h:[B
:cond_24
return-void
.end method
.method public run()V
.registers 5
:goto_0
iget-boolean v0, p0, Lcom/mapquest/android/maps/bz;->m:Z
if-nez v0, :cond_bd
:try_start_4
iget-object v0, p0, Lcom/mapquest/android/maps/bz;->l:Lcom/mapquest/android/maps/bu;
invoke-virtual {v0}, Lcom/mapquest/android/maps/bu;->poll()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/mapquest/android/maps/ca;
if-eqz v0, :cond_2b
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-static {v1, v0}, Lcom/mapquest/android/maps/bt;->a(Lcom/mapquest/android/maps/bt;Lcom/mapquest/android/maps/ca;)V
:try_start_13
:try_end_13
.catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_13} :catch_31
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v1, v1, Lcom/mapquest/android/maps/bt;->b:Lcom/mapquest/android/maps/cb;
:try_end_17
.catchall {:try_start_13 .. :try_end_17} :catchall_a9
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_17} :catch_73
.catch Ljava/lang/OutOfMemoryError; {:try_start_13 .. :try_end_17} :catch_8e
if-nez v1, :cond_33
:try_start_19
invoke-virtual {v0}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v1
if-nez v1, :cond_26
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v1, v1, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->c()V
:cond_26
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:goto_2b
:cond_2b
const-wide/16 v0, 0x3e8
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_30
.catch Ljava/lang/InterruptedException; {:try_start_19 .. :try_end_30} :catch_31
goto :goto_0
:catch_31
move-exception v0
goto :goto_0
:cond_33
:try_start_33
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/bz;->b(Lcom/mapquest/android/maps/ca;)Lcom/mapquest/android/maps/ca;
move-result-object v1
if-eqz v1, :cond_3f
invoke-virtual {v1}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v1
if-nez v1, :cond_4f
:cond_3f
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1}, Lcom/mapquest/android/maps/bt;->a()Lcom/mapquest/android/maps/t;
move-result-object v1
iget-object v2, v0, Lcom/mapquest/android/maps/ca;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Lcom/mapquest/android/maps/t;->a(Ljava/lang/String;)[B
move-result-object v1
iput-object v1, v0, Lcom/mapquest/android/maps/ca;->h:[B
iput-object v1, v0, Lcom/mapquest/android/maps/ca;->h:[B
:cond_4f
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/bz;->a(Lcom/mapquest/android/maps/ca;)Z
move-result v1
if-eqz v1, :cond_60
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/bz;->c(Lcom/mapquest/android/maps/ca;)V
invoke-virtual {p0, v0}, Lcom/mapquest/android/maps/bz;->d(Lcom/mapquest/android/maps/ca;)V
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->c(Lcom/mapquest/android/maps/ca;)V
:try_end_60
.catchall {:try_start_33 .. :try_end_60} :catchall_a9
.catch Ljava/lang/Exception; {:try_start_33 .. :try_end_60} :catch_73
.catch Ljava/lang/OutOfMemoryError; {:try_start_33 .. :try_end_60} :catch_8e
:cond_60
:try_start_60
invoke-virtual {v0}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v1
if-nez v1, :cond_6d
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v1, v1, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->c()V
:cond_6d
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:try_end_72
.catch Ljava/lang/InterruptedException; {:try_start_60 .. :try_end_72} :catch_31
goto :goto_2b
:catch_73
move-exception v1
:try_start_74
const-string v2, "mq.maps.downloader"
const-string v3, "Exception "
invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_7b
.catchall {:try_start_74 .. :try_end_7b} :catchall_a9
:try_start_7b
invoke-virtual {v0}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v1
if-nez v1, :cond_88
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v1, v1, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->c()V
:cond_88
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
:try_end_8d
.catch Ljava/lang/InterruptedException; {:try_start_7b .. :try_end_8d} :catch_31
goto :goto_2b
:catch_8e
move-exception v1
:try_start_8f
const-string v2, "mq.maps.downloader"
const-string v3, "Out of memory "
invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_96
.catchall {:try_start_8f .. :try_end_96} :catchall_a9
:try_start_96
invoke-virtual {v0}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v1
if-nez v1, :cond_a3
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v1, v1, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v1}, Lcom/mapquest/android/maps/MapView;->c()V
:cond_a3
iget-object v1, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-virtual {v1, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
goto :goto_2b
:catchall_a9
move-exception v1
invoke-virtual {v0}, Lcom/mapquest/android/maps/ca;->a()Z
move-result v2
if-nez v2, :cond_b7
iget-object v2, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
iget-object v2, v2, Lcom/mapquest/android/maps/bt;->a:Lcom/mapquest/android/maps/MapView;
invoke-virtual {v2}, Lcom/mapquest/android/maps/MapView;->c()V
:cond_b7
iget-object v2, p0, Lcom/mapquest/android/maps/bz;->n:Lcom/mapquest/android/maps/bt;
invoke-virtual {v2, v0}, Lcom/mapquest/android/maps/bt;->b(Lcom/mapquest/android/maps/ca;)V
throw v1
:try_end_bd
.catch Ljava/lang/InterruptedException; {:try_start_96 .. :try_end_bd} :catch_31
:cond_bd
return-void
.end method