.class public final Lcom/google/b/b/e;
.super Ljava/lang/Object;
.source "CacheBuilder.java"
.field static final a:Lcom/google/b/a/s;
.field static final b:Lcom/google/b/b/m;
.field static final c:Lcom/google/b/a/s;
.field static final d:Lcom/google/b/a/v;
.field public static final e:Ljava/util/logging/Logger;
.field public f:Z
.field  g:I
.field  h:I
.field public i:J
.field public j:J
.field public k:Lcom/google/b/b/cf;
.field  l:Lcom/google/b/b/aq;
.field  m:Lcom/google/b/b/aq;
.field  n:J
.field  o:J
.field public p:J
.field  q:Lcom/google/b/a/c;
.field  r:Lcom/google/b/a/c;
.field  s:Lcom/google/b/b/by;
.field  t:Lcom/google/b/a/v;
.field  u:Lcom/google/b/a/s;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Lcom/google/b/b/f;
invoke-direct {v0}, Lcom/google/b/b/f;-><init>()V
new-instance v1, Lcom/google/b/a/u;
invoke-direct {v1, v0}, Lcom/google/b/a/u;-><init>(Ljava/lang/Object;)V
sput-object v1, Lcom/google/b/b/e;->a:Lcom/google/b/a/s;
new-instance v0, Lcom/google/b/b/m;
invoke-direct {v0}, Lcom/google/b/b/m;-><init>()V
sput-object v0, Lcom/google/b/b/e;->b:Lcom/google/b/b/m;
new-instance v0, Lcom/google/b/b/g;
invoke-direct {v0}, Lcom/google/b/b/g;-><init>()V
sput-object v0, Lcom/google/b/b/e;->c:Lcom/google/b/a/s;
new-instance v0, Lcom/google/b/b/h;
invoke-direct {v0}, Lcom/google/b/b/h;-><init>()V
sput-object v0, Lcom/google/b/b/e;->d:Lcom/google/b/a/v;
const-class v0, Lcom/google/b/b/e;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/google/b/b/e;->e:Ljava/util/logging/Logger;
return-void
.end method
.method constructor <init>()V
.registers 5
const/4 v3, -0x1
const-wide/16 v1, -0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/b/b/e;->f:Z
iput v3, p0, Lcom/google/b/b/e;->g:I
iput v3, p0, Lcom/google/b/b/e;->h:I
iput-wide v1, p0, Lcom/google/b/b/e;->i:J
iput-wide v1, p0, Lcom/google/b/b/e;->j:J
iput-wide v1, p0, Lcom/google/b/b/e;->n:J
iput-wide v1, p0, Lcom/google/b/b/e;->o:J
iput-wide v1, p0, Lcom/google/b/b/e;->p:J
sget-object v0, Lcom/google/b/b/e;->a:Lcom/google/b/a/s;
iput-object v0, p0, Lcom/google/b/b/e;->u:Lcom/google/b/a/s;
return-void
.end method
.method public static a()Lcom/google/b/b/e;
.registers 1
new-instance v0, Lcom/google/b/b/e;
invoke-direct {v0}, Lcom/google/b/b/e;-><init>()V
return-object v0
.end method
.method final b()Lcom/google/b/b/aq;
.registers 3
iget-object v0, p0, Lcom/google/b/b/e;->l:Lcom/google/b/b/aq;
sget-object v1, Lcom/google/b/b/aq;->a:Lcom/google/b/b/aq;
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/aq;
return-object v0
.end method
.method final c()Lcom/google/b/b/aq;
.registers 3
iget-object v0, p0, Lcom/google/b/b/e;->m:Lcom/google/b/b/aq;
sget-object v1, Lcom/google/b/b/aq;->a:Lcom/google/b/b/aq;
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/aq;
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 8
const/4 v3, -0x1
const-wide/16 v5, -0x1
invoke-static {p0}, Lcom/google/b/a/i;->a(Ljava/lang/Object;)Lcom/google/b/a/j;
move-result-object v0
iget v1, p0, Lcom/google/b/b/e;->g:I
if-eq v1, v3, :cond_12
const-string v1, "initialCapacity"
iget v2, p0, Lcom/google/b/b/e;->g:I
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;I)Lcom/google/b/a/j;
:cond_12
iget v1, p0, Lcom/google/b/b/e;->h:I
if-eq v1, v3, :cond_1d
const-string v1, "concurrencyLevel"
iget v2, p0, Lcom/google/b/b/e;->h:I
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;I)Lcom/google/b/a/j;
:cond_1d
iget-wide v1, p0, Lcom/google/b/b/e;->i:J
cmp-long v1, v1, v5
if-eqz v1, :cond_2a
const-string v1, "maximumSize"
iget-wide v2, p0, Lcom/google/b/b/e;->i:J
invoke-virtual {v0, v1, v2, v3}, Lcom/google/b/a/j;->a(Ljava/lang/String;J)Lcom/google/b/a/j;
:cond_2a
iget-wide v1, p0, Lcom/google/b/b/e;->j:J
cmp-long v1, v1, v5
if-eqz v1, :cond_37
const-string v1, "maximumWeight"
iget-wide v2, p0, Lcom/google/b/b/e;->j:J
invoke-virtual {v0, v1, v2, v3}, Lcom/google/b/a/j;->a(Ljava/lang/String;J)Lcom/google/b/a/j;
:cond_37
iget-wide v1, p0, Lcom/google/b/b/e;->n:J
cmp-long v1, v1, v5
if-eqz v1, :cond_57
const-string v1, "expireAfterWrite"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v3, p0, Lcom/google/b/b/e;->n:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "ns"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_57
iget-wide v1, p0, Lcom/google/b/b/e;->o:J
cmp-long v1, v1, v5
if-eqz v1, :cond_77
const-string v1, "expireAfterAccess"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-wide v3, p0, Lcom/google/b/b/e;->o:J
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "ns"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_77
iget-object v1, p0, Lcom/google/b/b/e;->l:Lcom/google/b/b/aq;
if-eqz v1, :cond_8a
const-string v1, "keyStrength"
iget-object v2, p0, Lcom/google/b/b/e;->l:Lcom/google/b/b/aq;
invoke-virtual {v2}, Lcom/google/b/b/aq;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/b/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_8a
iget-object v1, p0, Lcom/google/b/b/e;->m:Lcom/google/b/b/aq;
if-eqz v1, :cond_9d
const-string v1, "valueStrength"
iget-object v2, p0, Lcom/google/b/b/e;->m:Lcom/google/b/b/aq;
invoke-virtual {v2}, Lcom/google/b/b/aq;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/google/b/a/b;->a(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/j;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_9d
iget-object v1, p0, Lcom/google/b/b/e;->q:Lcom/google/b/a/c;
if-eqz v1, :cond_a6
const-string v1, "keyEquivalence"
invoke-virtual {v0, v1}, Lcom/google/b/a/j;->a(Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_a6
iget-object v1, p0, Lcom/google/b/b/e;->r:Lcom/google/b/a/c;
if-eqz v1, :cond_af
const-string v1, "valueEquivalence"
invoke-virtual {v0, v1}, Lcom/google/b/a/j;->a(Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_af
iget-object v1, p0, Lcom/google/b/b/e;->s:Lcom/google/b/b/by;
if-eqz v1, :cond_b8
const-string v1, "removalListener"
invoke-virtual {v0, v1}, Lcom/google/b/a/j;->a(Ljava/lang/Object;)Lcom/google/b/a/j;
:cond_b8
invoke-virtual {v0}, Lcom/google/b/a/j;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method