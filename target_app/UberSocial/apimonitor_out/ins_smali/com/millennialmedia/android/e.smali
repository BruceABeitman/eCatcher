.class  Lcom/millennialmedia/android/e;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Comparable;
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/millennialmedia/android/d;
.field private b:Ljava/lang/ref/WeakReference;
.field private c:Ljava/lang/String;
.field private d:Lcom/millennialmedia/android/ai;
.field private e:Ljava/lang/ref/WeakReference;
.method constructor <init>(Lcom/millennialmedia/android/d;Landroid/content/Context;Ljava/lang/String;Lcom/millennialmedia/android/ai;Lcom/millennialmedia/android/b;)V
.registers 8
iput-object p1, p0, Lcom/millennialmedia/android/e;->a:Lcom/millennialmedia/android/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
iput-object p3, p0, Lcom/millennialmedia/android/e;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
if-eqz p5, :cond_1d
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/millennialmedia/android/e;->e:Ljava/lang/ref/WeakReference;
:cond_1d
return-void
.end method
.method public a(Lcom/millennialmedia/android/e;)I
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
iget v0, v0, Lcom/millennialmedia/android/ai;->i:I
iget-object v1, p1, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
iget v1, v1, Lcom/millennialmedia/android/ai;->i:I
sub-int/2addr v0, v1
return v0
.end method
.method public synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lcom/millennialmedia/android/e;
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/e;->a(Lcom/millennialmedia/android/e;)I
move-result v0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-ne p0, p1, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
instance-of v0, p1, Lcom/millennialmedia/android/e;
if-nez v0, :cond_a
const/4 v0, 0x0
goto :goto_3
:cond_a
check-cast p1, Lcom/millennialmedia/android/e;
iget-object v0, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
iget-object v1, p1, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/ai;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_3
.end method
.method public run()V
.registers 7
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/e;->e:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_ad
iget-object v0, p0, Lcom/millennialmedia/android/e;->e:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/b;
move-object v2, v0
:goto_e
if-eqz v2, :cond_15
iget-object v0, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
invoke-interface {v2, v0}, Lcom/millennialmedia/android/b;->a(Lcom/millennialmedia/android/ai;)V
:cond_15
iget-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v0
iget-object v3, p0, Lcom/millennialmedia/android/e;->c:Ljava/lang/String;
invoke-virtual {v0, v3}, Lcom/millennialmedia/android/as;->d(Ljava/lang/String;)V
iget-object v3, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
iget-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-virtual {v3, v0}, Lcom/millennialmedia/android/ai;->b(Landroid/content/Context;)Z
move-result v3
iget-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-static {v0}, Lcom/millennialmedia/android/as;->a(Landroid/content/Context;)Lcom/millennialmedia/android/as;
move-result-object v0
iget-object v4, p0, Lcom/millennialmedia/android/e;->c:Ljava/lang/String;
invoke-virtual {v0, v4}, Lcom/millennialmedia/android/as;->e(Ljava/lang/String;)V
if-nez v3, :cond_9f
iget-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v4, p0, Lcom/millennialmedia/android/e;->c:Ljava/lang/String;
invoke-static {v0, v4}, Lcom/millennialmedia/android/a;->e(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_85
iget-object v4, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
invoke-virtual {v4}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_85
iget-object v4, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
iget-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
invoke-virtual {v4, v0}, Lcom/millennialmedia/android/ai;->c(Landroid/content/Context;)V
iget-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v4, p0, Lcom/millennialmedia/android/e;->c:Ljava/lang/String;
invoke-static {v0, v4, v1}, Lcom/millennialmedia/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
:goto_7d
if-eqz v2, :cond_84
iget-object v0, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
invoke-interface {v2, v0, v3}, Lcom/millennialmedia/android/b;->a(Lcom/millennialmedia/android/ai;Z)V
:cond_84
return-void
:cond_85
iget-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v4, p0, Lcom/millennialmedia/android/e;->c:Ljava/lang/String;
iget-object v5, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
iget-boolean v5, v5, Lcom/millennialmedia/android/ai;->j:Z
if-nez v5, :cond_9b
iget-object v1, p0, Lcom/millennialmedia/android/e;->d:Lcom/millennialmedia/android/ai;
invoke-virtual {v1}, Lcom/millennialmedia/android/ai;->e()Ljava/lang/String;
move-result-object v1
:cond_9b
invoke-static {v0, v4, v1}, Lcom/millennialmedia/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7d
:cond_9f
iget-object v0, p0, Lcom/millennialmedia/android/e;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/content/Context;
iget-object v4, p0, Lcom/millennialmedia/android/e;->c:Ljava/lang/String;
invoke-static {v0, v4, v1}, Lcom/millennialmedia/android/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_7d
:cond_ad
move-object v2, v1
goto/16 :goto_e
.end method