.class  Lcom/millennialmedia/android/ab$1;
.super Ljava/util/TimerTask;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/android/ab;
.method constructor <init>(Lcom/millennialmedia/android/ab;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V
return-void
.end method
.method public run()V
.registers 11
const/4 v2, 0x0
const/4 v4, 0x0
new-instance v8, Ljava/util/ArrayList;
invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-static {v0}, Lcom/millennialmedia/android/ab;->a(Lcom/millennialmedia/android/ab;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
:goto_11
:cond_11
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_4e
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object v7, v0
check-cast v7, Ljava/lang/Integer;
iget-object v0, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-static {v0}, Lcom/millennialmedia/android/ab;->b(Lcom/millennialmedia/android/ab;)Landroid/media/SoundPool;
move-result-object v0
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v1
const/high16 v6, 0x3f80
move v3, v2
move v5, v4
invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I
move-result v0
if-eqz v0, :cond_11
iget-object v1, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-static {v1}, Lcom/millennialmedia/android/ab;->b(Lcom/millennialmedia/android/ab;)Landroid/media/SoundPool;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/media/SoundPool;->stop(I)V
iget-object v0, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
iget-object v1, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-static {v1}, Lcom/millennialmedia/android/ab;->b(Lcom/millennialmedia/android/ab;)Landroid/media/SoundPool;
move-result-object v1
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-virtual {v0, v1, v3, v4}, Lcom/millennialmedia/android/ab;->a(Landroid/media/SoundPool;II)V
invoke-virtual {v8, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_11
:cond_4e
iget-object v0, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-static {v0}, Lcom/millennialmedia/android/ab;->a(Lcom/millennialmedia/android/ab;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, v8}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z
iget-object v0, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-static {v0}, Lcom/millennialmedia/android/ab;->a(Lcom/millennialmedia/android/ab;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_75
iget-object v0, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-static {v0}, Lcom/millennialmedia/android/ab;->c(Lcom/millennialmedia/android/ab;)Ljava/util/Timer;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Timer;->cancel()V
iget-object v0, p0, Lcom/millennialmedia/android/ab$1;->a:Lcom/millennialmedia/android/ab;
invoke-static {v0}, Lcom/millennialmedia/android/ab;->c(Lcom/millennialmedia/android/ab;)Ljava/util/Timer;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Timer;->purge()I
:cond_75
return-void
.end method