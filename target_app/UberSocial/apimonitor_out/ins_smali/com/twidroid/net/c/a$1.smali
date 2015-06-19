.class  Lcom/twidroid/net/c/a$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/c/a/e;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Landroid/content/Context;
.field final synthetic c:Lcom/c/a/j;
.field final synthetic d:Lcom/c/a/s;
.field final synthetic e:Lcom/twidroid/net/c/a;
.method constructor <init>(Lcom/twidroid/net/c/a;Ljava/lang/String;Landroid/content/Context;Lcom/c/a/j;Lcom/c/a/s;)V
.registers 6
iput-object p1, p0, Lcom/twidroid/net/c/a$1;->e:Lcom/twidroid/net/c/a;
iput-object p2, p0, Lcom/twidroid/net/c/a$1;->a:Ljava/lang/String;
iput-object p3, p0, Lcom/twidroid/net/c/a$1;->b:Landroid/content/Context;
iput-object p4, p0, Lcom/twidroid/net/c/a$1;->c:Lcom/c/a/j;
iput-object p5, p0, Lcom/twidroid/net/c/a$1;->d:Lcom/c/a/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/c/a/r;)Lcom/c/a/k;
.registers 5
const-string v0, "GPSUpdateTask"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "WPS Registration error: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/c/a/r;->name()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
return-object v0
.end method
.method public o_()V
.registers 5
const-string v0, "GPSUpdateTask"
const-string v1, "WPS Registration success"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/net/c/a$1;->e:Lcom/twidroid/net/c/a;
iget-object v0, v0, Lcom/twidroid/net/c/a;->c:Lcom/twidroid/d/v;
iget-object v1, p0, Lcom/twidroid/net/c/a$1;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->j(Ljava/lang/String;)V
const-wide/16 v0, 0x1f4
:try_start_12
invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
:try_end_15
.catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_15} :catch_38
:goto_15
const-string v0, "GPSUpdateTask"
const-string v1, "WPS start lookup location with new user"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/c/a/t;
iget-object v1, p0, Lcom/twidroid/net/c/a$1;->b:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/c/a/t;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/twidroid/net/c/a$1;->c:Lcom/c/a/j;
iget-object v2, p0, Lcom/twidroid/net/c/a$1;->d:Lcom/c/a/s;
iget-object v3, p0, Lcom/twidroid/net/c/a$1;->e:Lcom/twidroid/net/c/a;
invoke-static {v3}, Lcom/twidroid/net/c/a;->a(Lcom/twidroid/net/c/a;)Lcom/twidroid/net/c/d;
move-result-object v3
invoke-virtual {v0, v1, v2, v3}, Lcom/c/a/t;->a(Lcom/c/a/j;Lcom/c/a/s;Lcom/c/a/p;)V
const-string v0, "GPSUpdateTask"
const-string v1, "WPS start lookup location - started"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
:catch_38
move-exception v0
invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
goto :goto_15
.end method
.method public q_()V
.registers 3
const-string v0, "GPSUpdateTask"
const-string v1, "WPS Registration done"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method