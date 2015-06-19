.class abstract Lcom/millennialmedia/android/ab;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:I = 0x64
.field final synthetic b:Lcom/millennialmedia/android/aa;
.field private c:Ljava/util/ArrayList;
.field private d:Ljava/util/Timer;
.field private e:Landroid/media/SoundPool;
.method public constructor <init>(Lcom/millennialmedia/android/aa;Landroid/media/SoundPool;)V
.registers 4
iput-object p1, p0, Lcom/millennialmedia/android/ab;->b:Lcom/millennialmedia/android/aa;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/ab;->c:Ljava/util/ArrayList;
iput-object p2, p0, Lcom/millennialmedia/android/ab;->e:Landroid/media/SoundPool;
return-void
.end method
.method static synthetic a(Lcom/millennialmedia/android/ab;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/ab;->c:Ljava/util/ArrayList;
return-object v0
.end method
.method static synthetic b(Lcom/millennialmedia/android/ab;)Landroid/media/SoundPool;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/ab;->e:Landroid/media/SoundPool;
return-object v0
.end method
.method static synthetic c(Lcom/millennialmedia/android/ab;)Ljava/util/Timer;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/ab;->d:Ljava/util/Timer;
return-object v0
.end method
.method declared-synchronized a()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/ab;->d:Ljava/util/Timer;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/millennialmedia/android/ab;->d:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
iget-object v0, p0, Lcom/millennialmedia/android/ab;->d:Ljava/util/Timer;
invoke-virtual {v0}, Ljava/util/Timer;->purge()I
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_11
:cond_f
monitor-exit p0
return-void
:catchall_11
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized a(I)V
.registers 8
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/ab;->c:Ljava/util/ArrayList;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/millennialmedia/android/ab;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_28
new-instance v0, Ljava/util/Timer;
invoke-direct {v0}, Ljava/util/Timer;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/android/ab;->d:Ljava/util/Timer;
iget-object v0, p0, Lcom/millennialmedia/android/ab;->d:Ljava/util/Timer;
new-instance v1, Lcom/millennialmedia/android/ab$1;
invoke-direct {v1, p0}, Lcom/millennialmedia/android/ab$1;-><init>(Lcom/millennialmedia/android/ab;)V
const-wide/16 v2, 0x0
const-wide/16 v4, 0x64
invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V
:cond_28
:try_end_28
.catchall {:try_start_1 .. :try_end_28} :catchall_2a
monitor-exit p0
return-void
:catchall_2a
move-exception v0
monitor-exit p0
throw v0
.end method
.method abstract a(Landroid/media/SoundPool;II)V
.end method