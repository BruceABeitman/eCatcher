.class  Lcom/millennialmedia/android/bx;
.super Lcom/millennialmedia/android/bq;
.source "SourceFile"
.method constructor <init>(Lcom/millennialmedia/android/bp;)V
.registers 2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/bq;-><init>(Lcom/millennialmedia/android/bp;)V
return-void
.end method
.method public a(Ljava/lang/String;)V
.registers 4
invoke-super {p0, p1}, Lcom/millennialmedia/android/bq;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/bx;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_16
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->h()Z
move-result v1
if-eqz v1, :cond_16
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->i()V
:cond_16
return-void
.end method