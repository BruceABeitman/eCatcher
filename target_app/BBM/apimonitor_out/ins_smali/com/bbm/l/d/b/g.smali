.class final Lcom/bbm/l/d/b/g;
.super Ljava/lang/Object;
.source "GooglePlayMethod.java"
.implements Lcom/bbm/l/d/b/t;
.field final synthetic a:Lcom/bbm/l/d/b/c;
.field private final b:Ljava/util/List;
.method constructor <init>(Lcom/bbm/l/d/b/c;)V
.registers 3
iput-object p1, p0, Lcom/bbm/l/d/b/g;->a:Lcom/bbm/l/d/b/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p0, Lcom/bbm/l/d/b/g;->a:Lcom/bbm/l/d/b/c;
iget-object v0, v0, Lcom/bbm/l/d/b/c;->b:Ljava/util/List;
iput-object v0, p0, Lcom/bbm/l/d/b/g;->b:Ljava/util/List;
return-void
.end method
.method public final a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/v;)V
.registers 5
iget-object v0, p0, Lcom/bbm/l/d/b/g;->a:Lcom/bbm/l/d/b/c;
invoke-static {v0}, Lcom/bbm/l/d/b/c;->a(Lcom/bbm/l/d/b/c;)Z
iget-object v0, p0, Lcom/bbm/l/d/b/g;->b:Ljava/util/List;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/bbm/l/d/b/g;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_f
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/l/d/b/t;
invoke-interface {v0, p1, p2}, Lcom/bbm/l/d/b/t;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/v;)V
goto :goto_f
:cond_1f
iget-object v0, p0, Lcom/bbm/l/d/b/g;->a:Lcom/bbm/l/d/b/c;
invoke-virtual {v0}, Lcom/bbm/l/d/b/c;->i()V
return-void
.end method