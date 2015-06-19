.class final Lcom/bbm/l/d/b/p;
.super Ljava/lang/Object;
.source "IabHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Z
.field final synthetic b:Ljava/util/List;
.field final synthetic c:Lcom/bbm/l/d/b/t;
.field final synthetic d:Landroid/os/Handler;
.field final synthetic e:Lcom/bbm/l/d/b/n;
.method constructor <init>(Lcom/bbm/l/d/b/n;Ljava/util/List;Lcom/bbm/l/d/b/t;Landroid/os/Handler;)V
.registers 6
iput-object p1, p0, Lcom/bbm/l/d/b/p;->e:Lcom/bbm/l/d/b/n;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/l/d/b/p;->a:Z
iput-object p2, p0, Lcom/bbm/l/d/b/p;->b:Ljava/util/List;
iput-object p3, p0, Lcom/bbm/l/d/b/p;->c:Lcom/bbm/l/d/b/t;
iput-object p4, p0, Lcom/bbm/l/d/b/p;->d:Landroid/os/Handler;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 7
const/4 v5, 0x0
new-instance v1, Lcom/bbm/l/d/b/u;
const-string v0, "Inventory refresh successful."
invoke-direct {v1, v5, v0}, Lcom/bbm/l/d/b/u;-><init>(ILjava/lang/String;)V
const/4 v0, 0x0
:try_start_9
iget-object v2, p0, Lcom/bbm/l/d/b/p;->e:Lcom/bbm/l/d/b/n;
iget-boolean v3, p0, Lcom/bbm/l/d/b/p;->a:Z
iget-object v4, p0, Lcom/bbm/l/d/b/p;->b:Ljava/util/List;
invoke-virtual {v2, v3, v4}, Lcom/bbm/l/d/b/n;->a(ZLjava/util/List;)Lcom/bbm/l/d/b/v;
:try_end_12
.catch Lcom/bbm/l/d/b/m; {:try_start_9 .. :try_end_12} :catch_2d
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_12} :catch_31
move-result-object v0
:goto_13
iget-object v2, p0, Lcom/bbm/l/d/b/p;->e:Lcom/bbm/l/d/b/n;
invoke-virtual {v2}, Lcom/bbm/l/d/b/n;->b()V
iget-object v2, p0, Lcom/bbm/l/d/b/p;->e:Lcom/bbm/l/d/b/n;
iget-boolean v2, v2, Lcom/bbm/l/d/b/n;->d:Z
if-nez v2, :cond_2c
iget-object v2, p0, Lcom/bbm/l/d/b/p;->c:Lcom/bbm/l/d/b/t;
if-eqz v2, :cond_2c
iget-object v2, p0, Lcom/bbm/l/d/b/p;->d:Landroid/os/Handler;
new-instance v3, Lcom/bbm/l/d/b/q;
invoke-direct {v3, p0, v1, v0}, Lcom/bbm/l/d/b/q;-><init>(Lcom/bbm/l/d/b/p;Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/v;)V
invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_2c
:cond_2c
return-void
:catch_2d
move-exception v1
iget-object v1, v1, Lcom/bbm/l/d/b/m;->a:Lcom/bbm/l/d/b/u;
goto :goto_13
:catch_31
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Error query Inventory: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v5, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_2c
.end method