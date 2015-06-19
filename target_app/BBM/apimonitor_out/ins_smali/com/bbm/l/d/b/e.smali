.class final Lcom/bbm/l/d/b/e;
.super Ljava/lang/Object;
.source "GooglePlayMethod.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/l/d/b/d;
.method constructor <init>(Lcom/bbm/l/d/b/d;)V
.registers 2
iput-object p1, p0, Lcom/bbm/l/d/b/e;->a:Lcom/bbm/l/d/b/d;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 6
const-string v0, "Attempting validatePurchase retries"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
sget-object v0, Lcom/bbm/l/d/b/c;->f:Ljava/util/HashSet;
invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_e
:goto_e
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
sget-object v1, Lcom/bbm/l/d/b/c;->e:Ljava/util/Hashtable;
invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/l/d/b/x;
if-eqz v1, :cond_e
iget-object v3, p0, Lcom/bbm/l/d/b/e;->a:Lcom/bbm/l/d/b/d;
iget-object v3, v3, Lcom/bbm/l/d/b/d;->a:Lcom/bbm/l/d/b/c;
invoke-static {}, Lcom/bbm/l/d/b/c;->m()Lcom/bbm/l/e;
move-result-object v4
invoke-virtual {v3, v1, v4}, Lcom/bbm/l/d/b/c;->a(Lcom/bbm/l/d/c;Lcom/bbm/l/e;)Ljava/lang/String;
move-result-object v1
sget-object v3, Lcom/bbm/l/d/b/c;->d:Lcom/bbm/d/a;
invoke-static {v1}, Lcom/bbm/d/z;->g(Ljava/lang/String;)Lcom/bbm/d/dt;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/dt;->a(Ljava/lang/String;)Lcom/bbm/d/dt;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
goto :goto_e
:cond_3e
return-void
.end method