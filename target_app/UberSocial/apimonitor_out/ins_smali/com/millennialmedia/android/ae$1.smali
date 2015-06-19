.class  Lcom/millennialmedia/android/ae$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/concurrent/Callable;
.field final synthetic a:Ljava/util/Map;
.field final synthetic b:Lcom/millennialmedia/android/ae;
.method constructor <init>(Lcom/millennialmedia/android/ae;Ljava/util/Map;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/ae$1;->b:Lcom/millennialmedia/android/ae;
iput-object p2, p0, Lcom/millennialmedia/android/ae$1;->a:Ljava/util/Map;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Lcom/millennialmedia/android/cg;
.registers 7
const/4 v5, 0x1
iget-object v0, p0, Lcom/millennialmedia/android/ae$1;->b:Lcom/millennialmedia/android/ae;
iget-object v0, v0, Lcom/millennialmedia/android/ae;->c:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_a4
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->j()Landroid/app/Activity;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/ae$1;->a:Ljava/util/Map;
if-eqz v0, :cond_a4
invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z
move-result v2
if-nez v2, :cond_90
new-instance v2, Landroid/app/AlertDialog$Builder;
invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v2
const-string v0, "title"
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_37
const-string v0, "title"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V
:cond_37
const-string v0, "message"
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4a
const-string v0, "message"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
invoke-virtual {v2, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V
:cond_4a
const-string v0, "cancelButton"
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_60
const/4 v3, -0x2
const-string v0, "cancelButton"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/CharSequence;
iget-object v4, p0, Lcom/millennialmedia/android/ae$1;->b:Lcom/millennialmedia/android/ae;
invoke-virtual {v2, v3, v0, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
:cond_60
const-string v0, "buttons"
invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_8d
const-string v0, "buttons"
invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
const-string v1, ","
invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
array-length v1, v0
if-lez v1, :cond_82
const/4 v1, -0x3
const/4 v3, 0x0
aget-object v3, v0, v3
iget-object v4, p0, Lcom/millennialmedia/android/ae$1;->b:Lcom/millennialmedia/android/ae;
invoke-virtual {v2, v1, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
:cond_82
array-length v1, v0
if-le v1, v5, :cond_8d
const/4 v1, -0x1
aget-object v0, v0, v5
iget-object v3, p0, Lcom/millennialmedia/android/ae$1;->b:Lcom/millennialmedia/android/ae;
invoke-virtual {v2, v1, v0, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
:cond_8d
invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V
:cond_90
new-instance v0, Lcom/millennialmedia/android/cg;
invoke-direct {v0}, Lcom/millennialmedia/android/cg;-><init>()V
iput v5, v0, Lcom/millennialmedia/android/cg;->c:I
iget-object v1, p0, Lcom/millennialmedia/android/ae$1;->b:Lcom/millennialmedia/android/ae;
invoke-static {v1}, Lcom/millennialmedia/android/ae;->a(Lcom/millennialmedia/android/ae;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
iput-object v1, v0, Lcom/millennialmedia/android/cg;->d:Ljava/lang/Object;
:goto_a3
return-object v0
:cond_a4
const/4 v0, 0x0
goto :goto_a3
.end method
.method public synthetic call()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/android/ae$1;->a()Lcom/millennialmedia/android/cg;
move-result-object v0
return-object v0
.end method