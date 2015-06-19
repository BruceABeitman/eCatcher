.class public final Lcom/bbm/f/g;
.super Ljava/lang/Object;
.source "MockServiceLayer.java"
.implements Lcom/bbm/f/ad;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
const-string v0, "MockServiceLayer start"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public final b()V
.registers 3
const-string v0, "MockServiceLayer stop"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
return-void
.end method
.method public final c()Lcom/bbm/f/a;
.registers 2
new-instance v0, Lcom/bbm/f/h;
invoke-direct {v0, p0}, Lcom/bbm/f/h;-><init>(Lcom/bbm/f/g;)V
return-object v0
.end method
.method public final d()Lcom/bbm/f/a;
.registers 2
new-instance v0, Lcom/bbm/f/h;
invoke-direct {v0, p0}, Lcom/bbm/f/h;-><init>(Lcom/bbm/f/g;)V
return-object v0
.end method
.method public final e()Lcom/bbm/f/a;
.registers 2
new-instance v0, Lcom/bbm/f/h;
invoke-direct {v0, p0}, Lcom/bbm/f/h;-><init>(Lcom/bbm/f/g;)V
return-object v0
.end method
.method public final f()Lcom/bbm/j/r;
.registers 3
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/f/ae;
invoke-direct {v1}, Lcom/bbm/f/ae;-><init>()V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
return-object v0
.end method
.method public final g()Lcom/bbm/j/r;
.registers 3
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/f/ag;
invoke-direct {v1}, Lcom/bbm/f/ag;-><init>()V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
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