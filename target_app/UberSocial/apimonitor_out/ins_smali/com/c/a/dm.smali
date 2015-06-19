.class  Lcom/c/a/dm;
.super Ljava/lang/Object;
.field static final synthetic a:Z
.field private final b:Lcom/c/a/cz;
.field private final c:Lcom/c/a/cz;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/c/a/dm;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/c/a/dm;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(J)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/c/a/cz;
invoke-direct {v0, p1, p2}, Lcom/c/a/cz;-><init>(J)V
iput-object v0, p0, Lcom/c/a/dm;->b:Lcom/c/a/cz;
new-instance v0, Lcom/c/a/cz;
invoke-direct {v0, p1, p2}, Lcom/c/a/cz;-><init>(J)V
iput-object v0, p0, Lcom/c/a/dm;->c:Lcom/c/a/cz;
return-void
.end method
.method  a(Lcom/c/ba;J)Lcom/c/a/cg;
.registers 5
iget-object v0, p0, Lcom/c/a/dm;->b:Lcom/c/a/cz;
invoke-virtual {v0, p1, p2, p3}, Lcom/c/a/cz;->b(Lcom/c/ba;J)Lcom/c/ap;
move-result-object v0
check-cast v0, Lcom/c/a/cg;
return-object v0
.end method
.method  a()V
.registers 2
iget-object v0, p0, Lcom/c/a/dm;->b:Lcom/c/a/cz;
invoke-virtual {v0}, Lcom/c/a/cz;->b()V
iget-object v0, p0, Lcom/c/a/dm;->c:Lcom/c/a/cz;
invoke-virtual {v0}, Lcom/c/a/cz;->b()V
return-void
.end method
.method  a(Lcom/c/a/cg;Lcom/c/a/cg;Lcom/c/ba;)V
.registers 7
sget-boolean v0, Lcom/c/a/dm;->a:Z
if-nez v0, :cond_e
if-eqz p1, :cond_8
if-nez p2, :cond_e
:cond_8
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_e
invoke-virtual {p2}, Lcom/c/a/cg;->w()Lcom/c/a/cg;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/c/a/cg;->a(Lcom/c/ba;)V
iget-object v1, p0, Lcom/c/a/dm;->b:Lcom/c/a/cz;
invoke-virtual {p1}, Lcom/c/a/cg;->w()Lcom/c/a/cg;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/c/a/cz;->a(Lcom/c/ap;)V
iget-object v1, p0, Lcom/c/a/dm;->c:Lcom/c/a/cz;
invoke-virtual {v1, v0}, Lcom/c/a/cz;->a(Lcom/c/ap;)V
return-void
.end method
.method  a(Lcom/c/ba;)V
.registers 3
iget-object v0, p0, Lcom/c/a/dm;->b:Lcom/c/a/cz;
invoke-virtual {v0, p1}, Lcom/c/a/cz;->a(Lcom/c/ba;)I
iget-object v0, p0, Lcom/c/a/dm;->c:Lcom/c/a/cz;
invoke-virtual {v0, p1}, Lcom/c/a/cz;->a(Lcom/c/ba;)I
return-void
.end method
.method  b()Lcom/c/a/cg;
.registers 2
iget-object v0, p0, Lcom/c/a/dm;->b:Lcom/c/a/cz;
invoke-virtual {v0}, Lcom/c/a/cz;->c()Lcom/c/ap;
move-result-object v0
check-cast v0, Lcom/c/a/cg;
return-object v0
.end method
.method  b(Lcom/c/ba;J)Ljava/lang/Iterable;
.registers 5
iget-object v0, p0, Lcom/c/a/dm;->b:Lcom/c/a/cz;
invoke-virtual {v0, p1, p2, p3}, Lcom/c/a/cz;->c(Lcom/c/ba;J)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method
.method  c()Lcom/c/a/cg;
.registers 2
iget-object v0, p0, Lcom/c/a/dm;->c:Lcom/c/a/cz;
invoke-virtual {v0}, Lcom/c/a/cz;->c()Lcom/c/ap;
move-result-object v0
check-cast v0, Lcom/c/a/cg;
return-object v0
.end method
.method  c(Lcom/c/ba;J)Ljava/lang/Iterable;
.registers 5
iget-object v0, p0, Lcom/c/a/dm;->c:Lcom/c/a/cz;
invoke-virtual {v0, p1, p2, p3}, Lcom/c/a/cz;->c(Lcom/c/ba;J)Ljava/lang/Iterable;
move-result-object v0
return-object v0
.end method