.class final Lcom/bbm/d/a/d/d;
.super Ljava/lang/Object;
.source "BbmdsStreamManager.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/d/a/d/c;
.method constructor <init>(Lcom/bbm/d/a/d/c;)V
.registers 2
iput-object p1, p0, Lcom/bbm/d/a/d/d;->a:Lcom/bbm/d/a/d/c;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/d/d;->a:Lcom/bbm/d/a/d/c;
invoke-static {v0}, Lcom/bbm/d/a/d/c;->a(Lcom/bbm/d/a/d/c;)Z
iget-object v0, p0, Lcom/bbm/d/a/d/d;->a:Lcom/bbm/d/a/d/c;
invoke-static {v0}, Lcom/bbm/d/a/d/c;->b(Lcom/bbm/d/a/d/c;)V
return-void
.end method