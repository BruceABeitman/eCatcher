.class  Lcom/millennialmedia/android/cq$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/millennialmedia/android/MMAdView;
.field final synthetic b:Lcom/millennialmedia/android/aq;
.field final synthetic c:Lcom/millennialmedia/android/cq;
.method constructor <init>(Lcom/millennialmedia/android/cq;Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/aq;)V
.registers 4
iput-object p1, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
iput-object p2, p0, Lcom/millennialmedia/android/cq$4;->a:Lcom/millennialmedia/android/MMAdView;
iput-object p3, p0, Lcom/millennialmedia/android/cq$4;->b:Lcom/millennialmedia/android/aq;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a()V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
invoke-static {v0}, Lcom/millennialmedia/android/cq;->a(Lcom/millennialmedia/android/cq;)Z
move-result v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iput v2, v1, Lcom/millennialmedia/android/cq;->p:I
iget-object v1, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
iput v0, v1, Lcom/millennialmedia/android/cq;->o:I
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
iget v0, v0, Lcom/millennialmedia/android/cq;->p:I
if-gtz v0, :cond_2a
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
iget-object v1, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v1}, Lcom/millennialmedia/android/cq;->getWidth()I
move-result v1
iput v1, v0, Lcom/millennialmedia/android/cq;->p:I
:cond_2a
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
iget v0, v0, Lcom/millennialmedia/android/cq;->o:I
if-gtz v0, :cond_3a
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
iget-object v1, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v1}, Lcom/millennialmedia/android/cq;->getHeight()I
move-result v1
iput v1, v0, Lcom/millennialmedia/android/cq;->o:I
:cond_3a
return-void
.end method
.method private a(Lcom/millennialmedia/android/aq;)V
.registers 4
new-instance v0, Lcom/millennialmedia/android/bu;
iget-object v1, p0, Lcom/millennialmedia/android/cq$4;->a:Lcom/millennialmedia/android/MMAdView;
invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
invoke-direct {v0, v1, p1}, Lcom/millennialmedia/android/bu;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/aq;)V
invoke-direct {p0}, Lcom/millennialmedia/android/cq$4;->a()V
iget-object v1, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v1}, Lcom/millennialmedia/android/cq;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/bu;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
return-void
.end method
.method public run()V
.registers 4
iget-object v1, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
monitor-enter v1
:try_start_3
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
const/4 v2, 0x1
iput-boolean v2, v0, Lcom/millennialmedia/android/cq;->h:Z
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->a:Lcom/millennialmedia/android/MMAdView;
iget-object v2, p0, Lcom/millennialmedia/android/cq$4;->b:Lcom/millennialmedia/android/aq;
invoke-virtual {v0, v2}, Lcom/millennialmedia/android/MMAdView;->a(Lcom/millennialmedia/android/aq;)V
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->b:Lcom/millennialmedia/android/aq;
invoke-direct {p0, v0}, Lcom/millennialmedia/android/cq$4;->a(Lcom/millennialmedia/android/aq;)V
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
const-string v2, "javascript:MMJS.sdk.setState(\'resized\');"
invoke-virtual {v0, v2}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/cq$4;->c:Lcom/millennialmedia/android/cq;
const-string v2, "resized"
iput-object v2, v0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;
monitor-exit v1
return-void
:catchall_23
move-exception v0
monitor-exit v1
:try_end_25
.catchall {:try_start_3 .. :try_end_25} :catchall_23
throw v0
.end method