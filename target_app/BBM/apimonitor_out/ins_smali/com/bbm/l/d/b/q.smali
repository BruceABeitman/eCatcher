.class final Lcom/bbm/l/d/b/q;
.super Ljava/lang/Object;
.source "IabHelper.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/l/d/b/u;
.field final synthetic b:Lcom/bbm/l/d/b/v;
.field final synthetic c:Lcom/bbm/l/d/b/p;
.method constructor <init>(Lcom/bbm/l/d/b/p;Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/v;)V
.registers 4
iput-object p1, p0, Lcom/bbm/l/d/b/q;->c:Lcom/bbm/l/d/b/p;
iput-object p2, p0, Lcom/bbm/l/d/b/q;->a:Lcom/bbm/l/d/b/u;
iput-object p3, p0, Lcom/bbm/l/d/b/q;->b:Lcom/bbm/l/d/b/v;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/bbm/l/d/b/q;->c:Lcom/bbm/l/d/b/p;
iget-object v0, v0, Lcom/bbm/l/d/b/p;->c:Lcom/bbm/l/d/b/t;
iget-object v1, p0, Lcom/bbm/l/d/b/q;->a:Lcom/bbm/l/d/b/u;
iget-object v2, p0, Lcom/bbm/l/d/b/q;->b:Lcom/bbm/l/d/b/v;
invoke-interface {v0, v1, v2}, Lcom/bbm/l/d/b/t;->a(Lcom/bbm/l/d/b/u;Lcom/bbm/l/d/b/v;)V
return-void
.end method