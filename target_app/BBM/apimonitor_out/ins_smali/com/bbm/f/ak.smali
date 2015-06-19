.class final Lcom/bbm/f/ak;
.super Ljava/lang/Object;
.source "ShuntBroker.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/bbm/f/aj;
.method constructor <init>(Lcom/bbm/f/aj;)V
.registers 2
iput-object p1, p0, Lcom/bbm/f/ak;->a:Lcom/bbm/f/aj;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/bbm/f/ak;->a:Lcom/bbm/f/aj;
iget-object v0, v0, Lcom/bbm/f/aj;->a:Lcom/bbm/f/ai;
iget-object v0, v0, Lcom/bbm/f/ai;->e:Lcom/bbm/util/cr;
sget-object v1, Lcom/bbm/f/b;->c:Lcom/bbm/f/b;
invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
return-void
.end method