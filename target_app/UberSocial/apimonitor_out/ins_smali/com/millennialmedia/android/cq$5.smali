.class  Lcom/millennialmedia/android/cq$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/millennialmedia/android/MMAdView;
.field final synthetic b:Lcom/millennialmedia/android/cq;
.method constructor <init>(Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/MMAdView;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
iput-object p2, p0, Lcom/millennialmedia/android/cq$5;->a:Lcom/millennialmedia/android/MMAdView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method  a()V
.registers 4
const/16 v2, -0x32
invoke-static {}, Lcom/millennialmedia/android/co;->g()Z
move-result v0
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
invoke-static {v0}, Lcom/millennialmedia/android/cq;->a(Lcom/millennialmedia/android/cq;)Z
move-result v0
if-nez v0, :cond_2f
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
iget v1, v1, Lcom/millennialmedia/android/cq;->p:I
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
iget v1, v1, Lcom/millennialmedia/android/cq;->o:I
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
iput v2, v0, Lcom/millennialmedia/android/cq;->p:I
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
iput v2, v0, Lcom/millennialmedia/android/cq;->o:I
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->requestLayout()V
:cond_2f
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->a:Lcom/millennialmedia/android/MMAdView;
invoke-virtual {v0}, Lcom/millennialmedia/android/MMAdView;->a()V
invoke-virtual {p0}, Lcom/millennialmedia/android/cq$5;->a()V
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->q()V
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/millennialmedia/android/cq;->h:Z
iget-object v0, p0, Lcom/millennialmedia/android/cq$5;->b:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->invalidate()V
monitor-exit v1
return-void
:catchall_1c
move-exception v0
monitor-exit v1
:try_end_1e
.catchall {:try_start_3 .. :try_end_1e} :catchall_1c
throw v0
.end method