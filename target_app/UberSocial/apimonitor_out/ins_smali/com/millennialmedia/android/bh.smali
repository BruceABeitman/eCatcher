.class  Lcom/millennialmedia/android/bh;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/media/MediaPlayer$OnCompletionListener;
.field private a:Ljava/lang/ref/WeakReference;
.method public constructor <init>(Lcom/millennialmedia/android/ba;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/bh;->a:Ljava/lang/ref/WeakReference;
return-void
.end method
.method public onCompletion(Landroid/media/MediaPlayer;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/bh;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/ba;
if-eqz v0, :cond_d
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/ba;->a(Landroid/media/MediaPlayer;)V
:cond_d
return-void
.end method