.class final Lcom/google/b/c/as;
.super Ljava/util/AbstractQueue;
.source "MapMakerInternalMap.java"
.field final a:Lcom/google/b/c/az;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/util/AbstractQueue;-><init>()V
new-instance v0, Lcom/google/b/c/at;
invoke-direct {v0, p0}, Lcom/google/b/c/at;-><init>(Lcom/google/b/c/as;)V
iput-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
return-void
.end method
.method private a()Lcom/google/b/c/az;
.registers 3
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-interface {v0}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v0
iget-object v1, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
if-ne v0, v1, :cond_b
const/4 v0, 0x0
:cond_b
return-object v0
.end method
.method public final clear()V
.registers 3
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-interface {v0}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v0
:goto_6
iget-object v1, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
if-eq v0, v1, :cond_13
invoke-interface {v0}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v1
invoke-static {v0}, Lcom/google/b/c/aa;->b(Lcom/google/b/c/az;)V
move-object v0, v1
goto :goto_6
:cond_13
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
iget-object v1, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-interface {v0, v1}, Lcom/google/b/c/az;->a(Lcom/google/b/c/az;)V
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
iget-object v1, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-interface {v0, v1}, Lcom/google/b/c/az;->b(Lcom/google/b/c/az;)V
return-void
.end method
.method public final contains(Ljava/lang/Object;)Z
.registers 4
check-cast p1, Lcom/google/b/c/az;
invoke-interface {p1}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v0
sget-object v1, Lcom/google/b/c/ay;->a:Lcom/google/b/c/ay;
if-eq v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final isEmpty()Z
.registers 3
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-interface {v0}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v0
iget-object v1, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method public final iterator()Ljava/util/Iterator;
.registers 3
new-instance v0, Lcom/google/b/c/au;
invoke-direct {p0}, Lcom/google/b/c/as;->a()Lcom/google/b/c/az;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/google/b/c/au;-><init>(Lcom/google/b/c/as;Lcom/google/b/c/az;)V
return-object v0
.end method
.method public final synthetic offer(Ljava/lang/Object;)Z
.registers 4
check-cast p1, Lcom/google/b/c/az;
invoke-interface {p1}, Lcom/google/b/c/az;->g()Lcom/google/b/c/az;
move-result-object v0
invoke-interface {p1}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/b/c/aa;->a(Lcom/google/b/c/az;Lcom/google/b/c/az;)V
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-interface {v0}, Lcom/google/b/c/az;->g()Lcom/google/b/c/az;
move-result-object v0
invoke-static {v0, p1}, Lcom/google/b/c/aa;->a(Lcom/google/b/c/az;Lcom/google/b/c/az;)V
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-static {p1, v0}, Lcom/google/b/c/aa;->a(Lcom/google/b/c/az;Lcom/google/b/c/az;)V
const/4 v0, 0x1
return v0
.end method
.method public final synthetic peek()Ljava/lang/Object;
.registers 2
invoke-direct {p0}, Lcom/google/b/c/as;->a()Lcom/google/b/c/az;
move-result-object v0
return-object v0
.end method
.method public final synthetic poll()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-interface {v0}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v0
iget-object v1, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
if-ne v0, v1, :cond_c
const/4 v0, 0x0
:goto_b
return-object v0
:cond_c
invoke-virtual {p0, v0}, Lcom/google/b/c/as;->remove(Ljava/lang/Object;)Z
goto :goto_b
.end method
.method public final remove(Ljava/lang/Object;)Z
.registers 4
check-cast p1, Lcom/google/b/c/az;
invoke-interface {p1}, Lcom/google/b/c/az;->g()Lcom/google/b/c/az;
move-result-object v0
invoke-interface {p1}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/b/c/aa;->a(Lcom/google/b/c/az;Lcom/google/b/c/az;)V
invoke-static {p1}, Lcom/google/b/c/aa;->b(Lcom/google/b/c/az;)V
sget-object v0, Lcom/google/b/c/ay;->a:Lcom/google/b/c/ay;
if-eq v1, v0, :cond_16
const/4 v0, 0x1
:goto_15
return v0
:cond_16
const/4 v0, 0x0
goto :goto_15
.end method
.method public final size()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
invoke-interface {v0}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v0
:goto_7
iget-object v2, p0, Lcom/google/b/c/as;->a:Lcom/google/b/c/az;
if-eq v0, v2, :cond_12
add-int/lit8 v1, v1, 0x1
invoke-interface {v0}, Lcom/google/b/c/az;->f()Lcom/google/b/c/az;
move-result-object v0
goto :goto_7
:cond_12
return v1
.end method