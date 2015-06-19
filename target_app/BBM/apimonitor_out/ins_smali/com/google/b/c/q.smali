.class public final Lcom/google/b/c/q;
.super Lcom/google/b/c/j;
.source "MapMaker.java"
.field public b:Z
.field  c:I
.field  d:I
.field  e:I
.field public f:Lcom/google/b/c/bc;
.field  g:Lcom/google/b/c/bc;
.field  h:J
.field  i:J
.field  j:Lcom/google/b/c/s;
.field  k:Lcom/google/b/a/c;
.field  l:Lcom/google/b/a/v;
.method public constructor <init>()V
.registers 4
const-wide/16 v1, -0x1
const/4 v0, -0x1
invoke-direct {p0}, Lcom/google/b/c/j;-><init>()V
iput v0, p0, Lcom/google/b/c/q;->c:I
iput v0, p0, Lcom/google/b/c/q;->d:I
iput v0, p0, Lcom/google/b/c/q;->e:I
iput-wide v1, p0, Lcom/google/b/c/q;->h:J
iput-wide v1, p0, Lcom/google/b/c/q;->i:J
return-void
.end method
.method final b()I
.registers 3
iget v0, p0, Lcom/google/b/c/q;->c:I
const/4 v1, -0x1
if-ne v0, v1, :cond_8
const/16 v0, 0x10
:goto_7
return v0
:cond_8
iget v0, p0, Lcom/google/b/c/q;->c:I
goto :goto_7
.end method
.method public final c()Lcom/google/b/c/q;
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
iget v0, p0, Lcom/google/b/c/q;->d:I
const/4 v3, -0x1
if-ne v0, v3, :cond_1d
move v0, v1
:goto_8
const-string v3, "concurrency level was already set to %s"
new-array v4, v1, [Ljava/lang/Object;
iget v5, p0, Lcom/google/b/c/q;->d:I
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v2
invoke-static {v0, v3, v4}, Lcom/google/b/a/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V
invoke-static {v1}, Lcom/google/b/a/o;->a(Z)V
iput v1, p0, Lcom/google/b/c/q;->d:I
return-object p0
:cond_1d
move v0, v2
goto :goto_8
.end method
.method final d()I
.registers 3
iget v0, p0, Lcom/google/b/c/q;->d:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x4
:goto_6
return v0
:cond_7
iget v0, p0, Lcom/google/b/c/q;->d:I
goto :goto_6
.end method
.method final e()Lcom/google/b/c/bc;
.registers 3
iget-object v0, p0, Lcom/google/b/c/q;->f:Lcom/google/b/c/bc;
sget-object v1, Lcom/google/b/c/bc;->a:Lcom/google/b/c/bc;
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/c/bc;
return-object v0
.end method
.method public final f()Lcom/google/b/c/q;
.registers 8
const/4 v2, 0x0
const/4 v1, 0x1
sget-object v3, Lcom/google/b/c/bc;->c:Lcom/google/b/c/bc;
iget-object v0, p0, Lcom/google/b/c/q;->g:Lcom/google/b/c/bc;
if-nez v0, :cond_23
move v0, v1
:goto_9
const-string v4, "Value strength was already set to %s"
new-array v5, v1, [Ljava/lang/Object;
iget-object v6, p0, Lcom/google/b/c/q;->g:Lcom/google/b/c/bc;
aput-object v6, v5, v2
invoke-static {v0, v4, v5}, Lcom/google/b/a/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V
invoke-static {v3}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/c/bc;
iput-object v0, p0, Lcom/google/b/c/q;->g:Lcom/google/b/c/bc;
sget-object v0, Lcom/google/b/c/bc;->a:Lcom/google/b/c/bc;
if-eq v3, v0, :cond_22
iput-boolean v1, p0, Lcom/google/b/c/q;->b:Z
:cond_22
return-object p0
:cond_23
move v0, v2
goto :goto_9
.end method
.method public final g()Ljava/util/concurrent/ConcurrentMap;
.registers 5
iget-boolean v0, p0, Lcom/google/b/c/q;->b:Z
if-nez v0, :cond_14
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {p0}, Lcom/google/b/c/q;->b()I
move-result v1
const/high16 v2, 0x3f40
invoke-virtual {p0}, Lcom/google/b/c/q;->d()I
move-result v3
invoke-direct {v0, v1, v2, v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IFI)V
:goto_13
return-object v0
:cond_14
iget-object v0, p0, Lcom/google/b/c/q;->j:Lcom/google/b/c/s;
if-nez v0, :cond_20
new-instance v0, Lcom/google/b/c/aa;
invoke-direct {v0, p0}, Lcom/google/b/c/aa;-><init>(Lcom/google/b/c/q;)V
:goto_1d
check-cast v0, Ljava/util/concurrent/ConcurrentMap;
goto :goto_13
:cond_20
new-instance v0, Lcom/google/b/c/r;
invoke-direct {v0, p0}, Lcom/google/b/c/r;-><init>(Lcom/google/b/c/q;)V
goto :goto_1d
.end method
.method public final toString()Ljava/lang/String;
.registers 8
const-wide/16 v5, -0x1
const/4 v3, -0x1
invoke-static {p0}, Lcom/google/b/a/i;->a(Ljava/lang/Object;)Lcom/google/b/a/j;
move-result-object v0
iget v1, p0, Lcom/google/b/c/q;->c:I
if-eq v1, v3, :cond_12
const-string v1, "initialCapacity"
iget v2, p0, Lcom/google/b/c/q;->c:I
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;I)Lcom/google/b/a/j;
:cond_12
iget v1, p0, Lcom/google/b/c/q;->d:I
if-eq v1, v3, :cond_1d
const-string v1, "concurrencyLevel"
iget v2, p0, Lcom/google/b/c/q;->d:I
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;I)Lcom/google/b/a/j;
:cond_1d
iget v1, p0, Lcom/google/b/c/q;->e:I
if-eq v1, v3, :cond_28
const-string v1, "maximumSize"
iget v2, p0, Lcom/google/b/c/q;->e:I
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;I)Lcom/google/b/a/j;
:cond_28
iget-wide v1, p0, Lcom/google/b/c/q;->h:J
cmp-long v1, v1, v5
if-eqz v1, :cond_48
const-string v1, "expireAfterWrite"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v3, p0, Lcom/google/b/c/q;->h:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "ns"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_48
iget-wide v1, p0, Lcom/google/b/c/q;->i:J
cmp-long v1, v1, v5
if-eqz v1, :cond_68
const-string v1, "expireAfterAccess"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v3, p0, Lcom/google/b/c/q;->i:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "ns"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_68
iget-object v1, p0, Lcom/google/b/c/q;->f:Lcom/google/b/c/bc;
if-eqz v1, :cond_7b
const-string v1, "keyStrength"
iget-object v2, p0, Lcom/google/b/c/q;->f:Lcom/google/b/c/bc;
invoke-virtual {v2}, Lcom/google/b/c/bc;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/b/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_7b
iget-object v1, p0, Lcom/google/b/c/q;->g:Lcom/google/b/c/bc;
if-eqz v1, :cond_8e
const-string v1, "valueStrength"
iget-object v2, p0, Lcom/google/b/c/q;->g:Lcom/google/b/c/bc;
invoke-virtual {v2}, Lcom/google/b/c/bc;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/b/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_8e
iget-object v1, p0, Lcom/google/b/c/q;->k:Lcom/google/b/a/c;
if-eqz v1, :cond_97
const-string v1, "keyEquivalence"
invoke-virtual {v0, v1}, Lcom/google/b/a/j;->a(Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_97
iget-object v1, p0, Lcom/google/b/c/q;->a:Lcom/google/b/c/y;
if-eqz v1, :cond_a0
const-string v1, "removalListener"
invoke-virtual {v0, v1}, Lcom/google/b/a/j;->a(Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_a0
invoke-virtual {v0}, Lcom/google/b/a/j;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method