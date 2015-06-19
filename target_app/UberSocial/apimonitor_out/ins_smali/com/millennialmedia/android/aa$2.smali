.class  Lcom/millennialmedia/android/aa$2;
.super Lcom/millennialmedia/android/ab;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/android/aa;
.method constructor <init>(Lcom/millennialmedia/android/aa;Landroid/media/SoundPool;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/aa$2;->a:Lcom/millennialmedia/android/aa;
invoke-direct {p0, p1, p2}, Lcom/millennialmedia/android/ab;-><init>(Lcom/millennialmedia/android/aa;Landroid/media/SoundPool;)V
return-void
.end method
.method public declared-synchronized a(Landroid/media/SoundPool;II)V
.registers 11
monitor-enter p0
if-eqz p1, :cond_33
:try_start_3
iget-object v0, p0, Lcom/millennialmedia/android/aa$2;->a:Lcom/millennialmedia/android/aa;
invoke-static {v0}, Lcom/millennialmedia/android/aa;->b(Lcom/millennialmedia/android/aa;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-eqz v0, :cond_33
const-string v1, "audio"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/media/AudioManager;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I
move-result v1
int-to-float v1, v1
const/4 v2, 0x0
add-float/2addr v1, v2
const/4 v2, 0x3
invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I
move-result v0
int-to-float v0, v0
div-float v2, v1, v0
const/4 v4, 0x1
const/4 v5, 0x0
const/high16 v6, 0x3f80
move-object v0, p1
move v1, p2
move v3, v2
invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
:try_end_33
.catchall {:try_start_3 .. :try_end_33} :catchall_35
:cond_33
monitor-exit p0
return-void
:catchall_35
move-exception v0
monitor-exit p0
throw v0
.end method