.class  Lcom/millennialmedia/android/as$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/millennialmedia/android/as;
.method constructor <init>(Lcom/millennialmedia/android/as;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/android/as$2;->a:Lcom/millennialmedia/android/as;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/as$2;->a:Lcom/millennialmedia/android/as;
invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Lcom/millennialmedia/android/as;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
if-nez v0, :cond_1a
iget-object v0, p0, Lcom/millennialmedia/android/as$2;->a:Lcom/millennialmedia/android/as;
invoke-static {v0}, Lcom/millennialmedia/android/as;->b(Lcom/millennialmedia/android/as;)Ljava/lang/ref/WeakReference;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
:cond_1a
if-eqz v0, :cond_1f
invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
:cond_1f
return-void
.end method