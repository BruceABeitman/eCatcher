.class final Lcom/bbm/f/d;
.super Lcom/bbm/j/a;
.source "DelegatingBroker.java"
.field final synthetic a:Lcom/bbm/f/c;
.method constructor <init>(Lcom/bbm/f/c;)V
.registers 2
iput-object p1, p0, Lcom/bbm/f/d;->a:Lcom/bbm/f/c;
invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V
return-void
.end method
.method protected final synthetic a()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/bbm/f/d;->a:Lcom/bbm/f/c;
iget-object v0, v0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/bbm/f/d;->a:Lcom/bbm/f/c;
iget-object v0, v0, Lcom/bbm/f/c;->a:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/f/a;
invoke-interface {v0}, Lcom/bbm/f/a;->a()Lcom/bbm/f/b;
move-result-object v0
:goto_18
return-object v0
:cond_19
sget-object v0, Lcom/bbm/f/b;->c:Lcom/bbm/f/b;
goto :goto_18
.end method