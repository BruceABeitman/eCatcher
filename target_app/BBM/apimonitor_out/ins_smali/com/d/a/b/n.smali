.class final Lcom/d/a/b/n;
.super Ljava/lang/Object;
.source "LoadAndDisplayImageTask.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/d/a/b/a/b;
.field final synthetic b:Ljava/lang/Throwable;
.field final synthetic c:Lcom/d/a/b/l;
.method constructor <init>(Lcom/d/a/b/l;Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
.registers 4
iput-object p1, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/l;
iput-object p2, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/a/b;
iput-object p3, p0, Lcom/d/a/b/n;->b:Ljava/lang/Throwable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/l;
iget-object v0, v0, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget v0, v0, Lcom/d/a/b/d;->c:I
if-eqz v0, :cond_2e
const/4 v0, 0x1
:goto_9
if-eqz v0, :cond_18
iget-object v0, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/l;
iget-object v0, v0, Lcom/d/a/b/l;->b:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/l;
iget-object v1, v1, Lcom/d/a/b/l;->c:Lcom/d/a/b/d;
iget v1, v1, Lcom/d/a/b/d;->c:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
:cond_18
iget-object v0, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/l;
iget-object v0, v0, Lcom/d/a/b/l;->d:Lcom/d/a/b/a/d;
iget-object v0, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/l;
iget-object v0, v0, Lcom/d/a/b/l;->a:Ljava/lang/String;
iget-object v0, p0, Lcom/d/a/b/n;->c:Lcom/d/a/b/l;
iget-object v0, v0, Lcom/d/a/b/l;->b:Landroid/widget/ImageView;
new-instance v0, Lcom/d/a/b/a/a;
iget-object v1, p0, Lcom/d/a/b/n;->a:Lcom/d/a/b/a/b;
iget-object v2, p0, Lcom/d/a/b/n;->b:Ljava/lang/Throwable;
invoke-direct {v0, v1, v2}, Lcom/d/a/b/a/a;-><init>(Lcom/d/a/b/a/b;Ljava/lang/Throwable;)V
return-void
:cond_2e
const/4 v0, 0x0
goto :goto_9
.end method