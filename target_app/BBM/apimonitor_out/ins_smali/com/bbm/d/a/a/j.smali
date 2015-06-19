.class abstract Lcom/bbm/d/a/a/j;
.super Lcom/bbm/d/b/m;
.source "LiveListManager.java"
.implements Lcom/bbm/j/w;
.field private final a:Lcom/bbm/d/a/a/e;
.field final synthetic d:Lcom/bbm/d/a/a/h;
.method constructor <init>(Lcom/bbm/d/a/a/h;Lcom/bbm/d/a/a/e;)V
.registers 3
iput-object p1, p0, Lcom/bbm/d/a/a/j;->d:Lcom/bbm/d/a/a/h;
invoke-direct {p0, p2}, Lcom/bbm/d/b/m;-><init>(Lcom/bbm/j/r;)V
iput-object p2, p0, Lcom/bbm/d/a/a/j;->a:Lcom/bbm/d/a/a/e;
return-void
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/a/j;->a:Lcom/bbm/d/a/a/e;
invoke-virtual {v0}, Lcom/bbm/d/a/a/e;->b()Z
move-result v0
return v0
.end method