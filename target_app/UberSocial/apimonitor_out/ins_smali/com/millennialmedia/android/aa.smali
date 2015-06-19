.class  Lcom/millennialmedia/android/aa;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.field private static d:Lcom/millennialmedia/android/aa; = null
.field private static final i:I = 0x4
.field  a:Ljava/util/concurrent/CopyOnWriteArrayList;
.field  b:Ljava/util/concurrent/CopyOnWriteArrayList;
.field  c:Ljava/lang/Runnable;
.field private e:Ljava/lang/ref/WeakReference;
.field private f:Landroid/media/MediaPlayer;
.field private g:Landroid/media/SoundPool;
.field private h:Lcom/millennialmedia/android/ab;
.method private constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/millennialmedia/android/aa$1;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/aa$1;-><init>(Lcom/millennialmedia/android/aa;)V
iput-object v0, p0, Lcom/millennialmedia/android/aa;->c:Ljava/lang/Runnable;
return-void
.end method
.method private constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/millennialmedia/android/aa$1;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/aa$1;-><init>(Lcom/millennialmedia/android/aa;)V
iput-object v0, p0, Lcom/millennialmedia/android/aa;->c:Ljava/lang/Runnable;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/aa;->e:Ljava/lang/ref/WeakReference;
return-void
.end method
.method static synthetic a(Lcom/millennialmedia/android/aa;)Landroid/media/MediaPlayer;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
return-object v0
.end method
.method static declared-synchronized a(Landroid/content/Context;)Lcom/millennialmedia/android/aa;
.registers 3
const-class v1, Lcom/millennialmedia/android/aa;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/millennialmedia/android/aa;->d:Lcom/millennialmedia/android/aa;
if-nez v0, :cond_e
new-instance v0, Lcom/millennialmedia/android/aa;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/aa;-><init>(Landroid/content/Context;)V
sput-object v0, Lcom/millennialmedia/android/aa;->d:Lcom/millennialmedia/android/aa;
:cond_e
sget-object v0, Lcom/millennialmedia/android/aa;->d:Lcom/millennialmedia/android/aa;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic b(Lcom/millennialmedia/android/aa;)Ljava/lang/ref/WeakReference;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/aa;->e:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method declared-synchronized a(Landroid/net/Uri;Z)Lcom/millennialmedia/android/cg;
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
:cond_d
iget-object v0, p0, Lcom/millennialmedia/android/aa;->e:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->setLooping(Z)V
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
invoke-virtual {v0, p0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
iget-object v0, p0, Lcom/millennialmedia/android/aa;->c:Ljava/lang/Runnable;
invoke-static {v0}, Lcom/millennialmedia/android/co;->a(Ljava/lang/Runnable;)V
:try_end_2f
.catchall {:try_start_1 .. :try_end_2f} :catchall_44
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_2f} :catch_37
:try_start_2f
:goto_2f
const-string v0, "Audio playback started"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
:try_end_34
.catchall {:try_start_2f .. :try_end_34} :catchall_44
move-result-object v0
monitor-exit p0
return-object v0
:catch_37
move-exception v0
:try_start_38
const-string v1, "BridgeMMMedia"
const-string v2, "Exception in playAudio method"
invoke-virtual {v0}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_43
.catchall {:try_start_38 .. :try_end_43} :catchall_44
goto :goto_2f
:catchall_44
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized a(Ljava/io/File;)Lcom/millennialmedia/android/cg;
.registers 6
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/aa;->g:Landroid/media/SoundPool;
if-nez v0, :cond_18
new-instance v0, Landroid/media/SoundPool;
const/4 v1, 0x4
const/4 v2, 0x3
const/4 v3, 0x0
invoke-direct {v0, v1, v2, v3}, Landroid/media/SoundPool;-><init>(III)V
iput-object v0, p0, Lcom/millennialmedia/android/aa;->g:Landroid/media/SoundPool;
new-instance v0, Lcom/millennialmedia/android/aa$2;
iget-object v1, p0, Lcom/millennialmedia/android/aa;->g:Landroid/media/SoundPool;
invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/aa$2;-><init>(Lcom/millennialmedia/android/aa;Landroid/media/SoundPool;)V
iput-object v0, p0, Lcom/millennialmedia/android/aa;->h:Lcom/millennialmedia/android/ab;
:cond_18
iget-object v0, p0, Lcom/millennialmedia/android/aa;->h:Lcom/millennialmedia/android/ab;
iget-object v1, p0, Lcom/millennialmedia/android/aa;->g:Landroid/media/SoundPool;
invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
invoke-virtual {v1, v2, v3}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/ab;->a(I)V
:goto_28
:try_start_28
:try_end_28
.catchall {:try_start_1 .. :try_end_28} :catchall_30
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_28} :catch_33
const-string v0, "Sound playback started"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
:try_end_2d
.catchall {:try_start_28 .. :try_end_2d} :catchall_30
move-result-object v0
monitor-exit p0
return-object v0
:catchall_30
move-exception v0
monitor-exit p0
throw v0
:catch_33
move-exception v0
goto :goto_28
.end method
.method declared-synchronized a()Z
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_12
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_e
monitor-exit p0
return v0
:cond_10
const/4 v0, 0x0
goto :goto_e
:catchall_12
move-exception v0
monitor-exit p0
throw v0
.end method
.method  a(Landroid/media/MediaPlayer$OnCompletionListener;)Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
:cond_b
iget-object v0, p0, Lcom/millennialmedia/android/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/millennialmedia/android/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
move-result v0
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method  a(Lcom/millennialmedia/android/ac;)Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
if-nez v0, :cond_b
new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
:cond_b
iget-object v0, p0, Lcom/millennialmedia/android/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/millennialmedia/android/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z
move-result v0
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method
.method declared-synchronized b()Lcom/millennialmedia/android/cg;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/aa;->onCompletion(Landroid/media/MediaPlayer;)V
:cond_a
iget-object v0, p0, Lcom/millennialmedia/android/aa;->g:Landroid/media/SoundPool;
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/millennialmedia/android/aa;->g:Landroid/media/SoundPool;
invoke-virtual {v0}, Landroid/media/SoundPool;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/android/aa;->g:Landroid/media/SoundPool;
:cond_16
iget-object v0, p0, Lcom/millennialmedia/android/aa;->h:Lcom/millennialmedia/android/ab;
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/millennialmedia/android/aa;->h:Lcom/millennialmedia/android/ab;
invoke-virtual {v0}, Lcom/millennialmedia/android/ab;->a()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/android/aa;->h:Lcom/millennialmedia/android/ab;
:cond_22
const-string v0, "Audio stopped"
invoke-static {v0}, Lcom/millennialmedia/android/cg;->a(Ljava/lang/String;)Lcom/millennialmedia/android/cg;
:try_end_27
.catchall {:try_start_1 .. :try_end_27} :catchall_2a
move-result-object v0
monitor-exit p0
return-object v0
:catchall_2a
move-exception v0
monitor-exit p0
throw v0
.end method
.method  b(Landroid/media/MediaPlayer$OnCompletionListener;)Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/millennialmedia/android/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method  b(Lcom/millennialmedia/android/ac;)Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/millennialmedia/android/aa;->b:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public declared-synchronized onCompletion(Landroid/media/MediaPlayer;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
if-eqz v0, :cond_20
iget-object v0, p0, Lcom/millennialmedia/android/aa;->a:Ljava/util/concurrent/CopyOnWriteArrayList;
invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/MediaPlayer$OnCompletionListener;
iget-object v2, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnCompletionListener;->onCompletion(Landroid/media/MediaPlayer;)V
:try_end_1c
.catchall {:try_start_1 .. :try_end_1c} :catchall_1d
goto :goto_b
:catchall_1d
move-exception v0
monitor-exit p0
throw v0
:try_start_20
:cond_20
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
if-eqz v0, :cond_2c
iget-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/android/aa;->f:Landroid/media/MediaPlayer;
:try_end_2c
.catchall {:try_start_20 .. :try_end_2c} :catchall_1d
:cond_2c
monitor-exit p0
return-void
.end method