.class public final Lcom/bbm/f/ar;
.super Ljava/lang/Object;
.source "ShuntServiceLayer.java"
.implements Lcom/bbm/f/ad;
.field private final a:Lcom/bbm/f/ai;
.field private final b:Lcom/bbm/f/ai;
.field private final c:Lcom/bbm/f/ai;
.field private final d:Lcom/bbm/j/r;
.field private final e:Lcom/bbm/j/r;
.method public constructor <init>(Ljava/lang/String;III)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/f/ae;
invoke-direct {v1}, Lcom/bbm/f/ae;-><init>()V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/f/ar;->d:Lcom/bbm/j/r;
new-instance v0, Lcom/bbm/util/cr;
new-instance v1, Lcom/bbm/f/ag;
invoke-direct {v1}, Lcom/bbm/f/ag;-><init>()V
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/f/ar;->e:Lcom/bbm/j/r;
new-instance v0, Lcom/bbm/f/ai;
invoke-direct {v0, p1, p4}, Lcom/bbm/f/ai;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/bbm/f/ar;->a:Lcom/bbm/f/ai;
new-instance v0, Lcom/bbm/f/ai;
invoke-direct {v0, p1, p2}, Lcom/bbm/f/ai;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/bbm/f/ar;->b:Lcom/bbm/f/ai;
new-instance v0, Lcom/bbm/f/ai;
invoke-direct {v0, p1, p3}, Lcom/bbm/f/ai;-><init>(Ljava/lang/String;I)V
iput-object v0, p0, Lcom/bbm/f/ar;->c:Lcom/bbm/f/ai;
return-void
.end method
.method public final a()V
.registers 3
const-string v0, "ShuntServiceLayer start"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/f/ar;->a:Lcom/bbm/f/ai;
invoke-virtual {v0}, Lcom/bbm/f/ai;->b()V
iget-object v0, p0, Lcom/bbm/f/ar;->b:Lcom/bbm/f/ai;
invoke-virtual {v0}, Lcom/bbm/f/ai;->b()V
iget-object v0, p0, Lcom/bbm/f/ar;->c:Lcom/bbm/f/ai;
invoke-virtual {v0}, Lcom/bbm/f/ai;->b()V
return-void
.end method
.method public final b()V
.registers 3
const-string v0, "ShuntServiceLayer stop"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/bbm/f/ar;->b:Lcom/bbm/f/ai;
invoke-virtual {v0}, Lcom/bbm/f/ai;->c()V
iget-object v0, p0, Lcom/bbm/f/ar;->a:Lcom/bbm/f/ai;
invoke-virtual {v0}, Lcom/bbm/f/ai;->c()V
iget-object v0, p0, Lcom/bbm/f/ar;->c:Lcom/bbm/f/ai;
invoke-virtual {v0}, Lcom/bbm/f/ai;->c()V
return-void
.end method
.method public final c()Lcom/bbm/f/a;
.registers 2
iget-object v0, p0, Lcom/bbm/f/ar;->a:Lcom/bbm/f/ai;
return-object v0
.end method
.method public final d()Lcom/bbm/f/a;
.registers 2
iget-object v0, p0, Lcom/bbm/f/ar;->c:Lcom/bbm/f/ai;
return-object v0
.end method
.method public final e()Lcom/bbm/f/a;
.registers 2
iget-object v0, p0, Lcom/bbm/f/ar;->b:Lcom/bbm/f/ai;
return-object v0
.end method
.method public final f()Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/f/ar;->d:Lcom/bbm/j/r;
return-object v0
.end method
.method public final g()Lcom/bbm/j/r;
.registers 2
iget-object v0, p0, Lcom/bbm/f/ar;->e:Lcom/bbm/j/r;
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