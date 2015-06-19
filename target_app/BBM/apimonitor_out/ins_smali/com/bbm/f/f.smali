.class public Lcom/bbm/f/f;
.super Ljava/lang/Object;
.source "DisconnectedService.java"
.implements Lcom/bbm/f/ad;
.field private a:Lcom/bbm/f/c;
.field private final b:Lcom/bbm/j/r;
.field private final c:Lcom/bbm/j/r;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/f/ae;
invoke-direct {v1}, Lcom/bbm/f/ae;-><init>()V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/f/f;->b:Lcom/bbm/j/r;
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/f/ag;
invoke-direct {v1}, Lcom/bbm/f/ag;-><init>()V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/f/f;->c:Lcom/bbm/j/r;
return-void
.end method
.method public final a()V
.registers 1
return-void
.end method
.method public final b()V
.registers 1
return-void
.end method
.method public final c()Lcom/bbm/f/a;
.registers 2
iget-object v0, p0, Lcom/bbm/f/f;->a:Lcom/bbm/f/c;
return-object v0
.end method
.method public final d()Lcom/bbm/f/a;
.registers 2
iget-object v0, p0, Lcom/bbm/f/f;->a:Lcom/bbm/f/c;
return-object v0
.end method
.method public final e()Lcom/bbm/f/a;
.registers 2
iget-object v0, p0, Lcom/bbm/f/f;->a:Lcom/bbm/f/c;
return-object v0
.end method
.method public final f()Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/f/f;->b:Lcom/bbm/j/r;
return-object v0
.end method
.method public final g()Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/f/f;->c:Lcom/bbm/j/r;
return-object v0
.end method
.method public final h()Lcom/bbm/f/af;
.registers 2
sget-object v0, Lcom/bbm/f/af;->e:Lcom/bbm/f/af;
return-object v0
.end method
.method public final i()V
.registers 1
return-void
.end method