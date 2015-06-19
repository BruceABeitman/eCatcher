.class  Lcom/google/b/b/n;
.super Ljava/util/AbstractMap;
.source "LocalCache.java"
.implements Ljava/util/concurrent/ConcurrentMap;
.field static final a:Ljava/util/logging/Logger;
.field static final b:Lcom/google/b/f/a/n;
.field static final v:Lcom/google/b/b/ba;
.field static final w:Ljava/util/Queue;
.field final c:I
.field final d:I
.field final e:[Lcom/google/b/b/an;
.field final f:I
.field final g:Lcom/google/b/a/c;
.field final h:Lcom/google/b/a/c;
.field final i:Lcom/google/b/b/aq;
.field final j:Lcom/google/b/b/aq;
.field final k:J
.field final l:Lcom/google/b/b/cf;
.field final m:J
.field final n:J
.field final o:J
.field final p:Ljava/util/Queue;
.field final q:Lcom/google/b/b/by;
.field final r:Lcom/google/b/a/v;
.field final s:Lcom/google/b/b/v;
.field final t:Lcom/google/b/b/c;
.field final u:Lcom/google/b/b/k;
.field  x:Ljava/util/Set;
.field  y:Ljava/util/Collection;
.field  z:Ljava/util/Set;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/b/b/n;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/google/b/b/n;->a:Ljava/util/logging/Logger;
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v0
sput-object v0, Lcom/google/b/b/n;->b:Lcom/google/b/f/a/n;
new-instance v0, Lcom/google/b/b/o;
invoke-direct {v0}, Lcom/google/b/b/o;-><init>()V
sput-object v0, Lcom/google/b/b/n;->v:Lcom/google/b/b/ba;
new-instance v0, Lcom/google/b/b/p;
invoke-direct {v0}, Lcom/google/b/b/p;-><init>()V
sput-object v0, Lcom/google/b/b/n;->w:Ljava/util/Queue;
return-void
.end method
.method constructor <init>(Lcom/google/b/b/e;)V
.registers 14
const/4 v6, -0x1
const-wide/16 v10, -0x1
const/4 v5, 0x1
const-wide/16 v2, 0x0
const/4 v4, 0x0
invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V
iget v0, p1, Lcom/google/b/b/e;->h:I
if-ne v0, v6, :cond_10f
const/4 v0, 0x4
:goto_f
const/high16 v1, 0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iput v0, p0, Lcom/google/b/b/n;->f:I
invoke-virtual {p1}, Lcom/google/b/b/e;->b()Lcom/google/b/b/aq;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/n;->i:Lcom/google/b/b/aq;
invoke-virtual {p1}, Lcom/google/b/b/e;->c()Lcom/google/b/b/aq;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/n;->j:Lcom/google/b/b/aq;
iget-object v0, p1, Lcom/google/b/b/e;->q:Lcom/google/b/a/c;
invoke-virtual {p1}, Lcom/google/b/b/e;->b()Lcom/google/b/b/aq;
move-result-object v1
invoke-virtual {v1}, Lcom/google/b/b/aq;->a()Lcom/google/b/a/c;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/a/c;
iput-object v0, p0, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;
iget-object v0, p1, Lcom/google/b/b/e;->r:Lcom/google/b/a/c;
invoke-virtual {p1}, Lcom/google/b/b/e;->c()Lcom/google/b/b/aq;
move-result-object v1
invoke-virtual {v1}, Lcom/google/b/b/aq;->a()Lcom/google/b/a/c;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/a/c;
iput-object v0, p0, Lcom/google/b/b/n;->h:Lcom/google/b/a/c;
iget-wide v0, p1, Lcom/google/b/b/e;->n:J
cmp-long v0, v0, v2
if-eqz v0, :cond_53
iget-wide v0, p1, Lcom/google/b/b/e;->o:J
cmp-long v0, v0, v2
if-nez v0, :cond_113
:cond_53
move-wide v0, v2
:goto_54
iput-wide v0, p0, Lcom/google/b/b/n;->k:J
iget-object v0, p1, Lcom/google/b/b/e;->k:Lcom/google/b/b/cf;
sget-object v1, Lcom/google/b/b/j;->a:Lcom/google/b/b/j;
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/cf;
iput-object v0, p0, Lcom/google/b/b/n;->l:Lcom/google/b/b/cf;
iget-wide v0, p1, Lcom/google/b/b/e;->o:J
cmp-long v0, v0, v10
if-nez v0, :cond_11f
move-wide v0, v2
:goto_69
iput-wide v0, p0, Lcom/google/b/b/n;->m:J
iget-wide v0, p1, Lcom/google/b/b/e;->n:J
cmp-long v0, v0, v10
if-nez v0, :cond_123
move-wide v0, v2
:goto_72
iput-wide v0, p0, Lcom/google/b/b/n;->n:J
iget-wide v0, p1, Lcom/google/b/b/e;->p:J
cmp-long v0, v0, v10
if-nez v0, :cond_127
:goto_7a
iput-wide v2, p0, Lcom/google/b/b/n;->o:J
iget-object v0, p1, Lcom/google/b/b/e;->s:Lcom/google/b/b/by;
sget-object v1, Lcom/google/b/b/i;->a:Lcom/google/b/b/i;
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/by;
iput-object v0, p0, Lcom/google/b/b/n;->q:Lcom/google/b/b/by;
iget-object v0, p0, Lcom/google/b/b/n;->q:Lcom/google/b/b/by;
sget-object v1, Lcom/google/b/b/i;->a:Lcom/google/b/b/i;
if-ne v0, v1, :cond_12b
sget-object v0, Lcom/google/b/b/n;->w:Ljava/util/Queue;
:goto_90
iput-object v0, p0, Lcom/google/b/b/n;->p:Ljava/util/Queue;
invoke-virtual {p0}, Lcom/google/b/b/n;->g()Z
move-result v0
if-nez v0, :cond_9e
invoke-virtual {p0}, Lcom/google/b/b/n;->d()Z
move-result v0
if-eqz v0, :cond_132
:cond_9e
move v0, v5
:goto_9f
iget-object v1, p1, Lcom/google/b/b/e;->t:Lcom/google/b/a/v;
if-eqz v1, :cond_135
iget-object v0, p1, Lcom/google/b/b/e;->t:Lcom/google/b/a/v;
:goto_a5
iput-object v0, p0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;
iget-object v2, p0, Lcom/google/b/b/n;->i:Lcom/google/b/b/aq;
invoke-virtual {p0}, Lcom/google/b/b/n;->f()Z
move-result v0
if-nez v0, :cond_b5
invoke-virtual {p0}, Lcom/google/b/b/n;->d()Z
move-result v0
if-eqz v0, :cond_141
:cond_b5
move v0, v5
:goto_b6
invoke-virtual {p0}, Lcom/google/b/b/n;->c()Z
move-result v1
if-nez v1, :cond_c2
invoke-virtual {p0}, Lcom/google/b/b/n;->g()Z
move-result v1
if-eqz v1, :cond_144
:cond_c2
move v1, v5
:goto_c3
invoke-static {v2, v0, v1}, Lcom/google/b/b/v;->a(Lcom/google/b/b/aq;ZZ)Lcom/google/b/b/v;
move-result-object v0
iput-object v0, p0, Lcom/google/b/b/n;->s:Lcom/google/b/b/v;
iget-object v0, p1, Lcom/google/b/b/e;->u:Lcom/google/b/a/s;
invoke-interface {v0}, Lcom/google/b/a/s;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/c;
iput-object v0, p0, Lcom/google/b/b/n;->t:Lcom/google/b/b/c;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/b/b/n;->u:Lcom/google/b/b/k;
iget v0, p1, Lcom/google/b/b/e;->g:I
if-ne v0, v6, :cond_147
const/16 v0, 0x10
:goto_dc
const/high16 v1, 0x4000
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {p0}, Lcom/google/b/b/n;->a()Z
move-result v1
if-eqz v1, :cond_f5
invoke-virtual {p0}, Lcom/google/b/b/n;->b()Z
move-result v1
if-nez v1, :cond_f5
iget-wide v1, p0, Lcom/google/b/b/n;->k:J
long-to-int v1, v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
:cond_f5
move v1, v5
move v2, v4
:goto_f7
iget v3, p0, Lcom/google/b/b/n;->f:I
if-ge v1, v3, :cond_14a
invoke-virtual {p0}, Lcom/google/b/b/n;->a()Z
move-result v3
if-eqz v3, :cond_10a
mul-int/lit8 v3, v1, 0x14
int-to-long v6, v3
iget-wide v8, p0, Lcom/google/b/b/n;->k:J
cmp-long v3, v6, v8
if-gtz v3, :cond_14a
:cond_10a
add-int/lit8 v2, v2, 0x1
shl-int/lit8 v1, v1, 0x1
goto :goto_f7
:cond_10f
iget v0, p1, Lcom/google/b/b/e;->h:I
goto/16 :goto_f
:cond_113
iget-object v0, p1, Lcom/google/b/b/e;->k:Lcom/google/b/b/cf;
if-nez v0, :cond_11b
iget-wide v0, p1, Lcom/google/b/b/e;->i:J
goto/16 :goto_54
:cond_11b
iget-wide v0, p1, Lcom/google/b/b/e;->j:J
goto/16 :goto_54
:cond_11f
iget-wide v0, p1, Lcom/google/b/b/e;->o:J
goto/16 :goto_69
:cond_123
iget-wide v0, p1, Lcom/google/b/b/e;->n:J
goto/16 :goto_72
:cond_127
iget-wide v2, p1, Lcom/google/b/b/e;->p:J
goto/16 :goto_7a
:cond_12b
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
goto/16 :goto_90
:cond_132
move v0, v4
goto/16 :goto_9f
:cond_135
if-eqz v0, :cond_13d
invoke-static {}, Lcom/google/b/a/v;->b()Lcom/google/b/a/v;
move-result-object v0
goto/16 :goto_a5
:cond_13d
sget-object v0, Lcom/google/b/b/e;->d:Lcom/google/b/a/v;
goto/16 :goto_a5
:cond_141
move v0, v4
goto/16 :goto_b6
:cond_144
move v1, v4
goto/16 :goto_c3
:cond_147
iget v0, p1, Lcom/google/b/b/e;->g:I
goto :goto_dc
:cond_14a
rsub-int/lit8 v2, v2, 0x20
iput v2, p0, Lcom/google/b/b/n;->d:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/google/b/b/n;->c:I
new-array v2, v1, [Lcom/google/b/b/an;
iput-object v2, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
div-int v2, v0, v1
mul-int v3, v2, v1
if-ge v3, v0, :cond_1b2
add-int/lit8 v0, v2, 0x1
:goto_15e
if-ge v5, v0, :cond_163
shl-int/lit8 v5, v5, 0x1
goto :goto_15e
:cond_163
invoke-virtual {p0}, Lcom/google/b/b/n;->a()Z
move-result v0
if-eqz v0, :cond_197
iget-wide v2, p0, Lcom/google/b/b/n;->k:J
int-to-long v6, v1
div-long/2addr v2, v6
const-wide/16 v6, 0x1
add-long/2addr v2, v6
iget-wide v6, p0, Lcom/google/b/b/n;->k:J
int-to-long v0, v1
rem-long/2addr v6, v0
move-wide v0, v2
:goto_175
iget-object v2, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
array-length v2, v2
if-ge v4, v2, :cond_1af
int-to-long v2, v4
cmp-long v2, v2, v6
if-nez v2, :cond_1b0
const-wide/16 v2, 0x1
sub-long v1, v0, v2
:goto_183
iget-object v3, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
iget-object v0, p1, Lcom/google/b/b/e;->u:Lcom/google/b/a/s;
invoke-interface {v0}, Lcom/google/b/a/s;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/c;
invoke-direct {p0, v5, v1, v2, v0}, Lcom/google/b/b/n;->a(IJLcom/google/b/b/c;)Lcom/google/b/b/an;
move-result-object v0
aput-object v0, v3, v4
add-int/lit8 v4, v4, 0x1
move-wide v0, v1
goto :goto_175
:cond_197
:goto_197
iget-object v0, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
array-length v0, v0
if-ge v4, v0, :cond_1af
iget-object v1, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
iget-object v0, p1, Lcom/google/b/b/e;->u:Lcom/google/b/a/s;
invoke-interface {v0}, Lcom/google/b/a/s;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/c;
invoke-direct {p0, v5, v10, v11, v0}, Lcom/google/b/b/n;->a(IJLcom/google/b/b/c;)Lcom/google/b/b/an;
move-result-object v0
aput-object v0, v1, v4
add-int/lit8 v4, v4, 0x1
goto :goto_197
:cond_1af
return-void
:cond_1b0
move-wide v1, v0
goto :goto_183
:cond_1b2
move v0, v2
goto :goto_15e
.end method
.method private a(IJLcom/google/b/b/c;)Lcom/google/b/b/an;
.registers 11
new-instance v0, Lcom/google/b/b/an;
move-object v1, p0
move v2, p1
move-wide v3, p2
move-object v5, p4
invoke-direct/range {v0 .. v5}, Lcom/google/b/b/an;-><init>(Lcom/google/b/b/n;IJLcom/google/b/b/c;)V
return-object v0
.end method
.method static a(Lcom/google/b/b/am;)V
.registers 2
sget-object v0, Lcom/google/b/b/al;->a:Lcom/google/b/b/al;
invoke-interface {p0, v0}, Lcom/google/b/b/am;->a(Lcom/google/b/b/am;)V
invoke-interface {p0, v0}, Lcom/google/b/b/am;->b(Lcom/google/b/b/am;)V
return-void
.end method
.method static a(Lcom/google/b/b/am;Lcom/google/b/b/am;)V
.registers 2
invoke-interface {p0, p1}, Lcom/google/b/b/am;->a(Lcom/google/b/b/am;)V
invoke-interface {p1, p0}, Lcom/google/b/b/am;->b(Lcom/google/b/b/am;)V
return-void
.end method
.method static b(Lcom/google/b/b/am;)V
.registers 2
sget-object v0, Lcom/google/b/b/al;->a:Lcom/google/b/b/al;
invoke-interface {p0, v0}, Lcom/google/b/b/am;->c(Lcom/google/b/b/am;)V
invoke-interface {p0, v0}, Lcom/google/b/b/am;->d(Lcom/google/b/b/am;)V
return-void
.end method
.method static b(Lcom/google/b/b/am;Lcom/google/b/b/am;)V
.registers 2
invoke-interface {p0, p1}, Lcom/google/b/b/am;->c(Lcom/google/b/b/am;)V
invoke-interface {p1, p0}, Lcom/google/b/b/am;->d(Lcom/google/b/b/am;)V
return-void
.end method
.method static j()Lcom/google/b/b/ba;
.registers 1
sget-object v0, Lcom/google/b/b/n;->v:Lcom/google/b/b/ba;
return-object v0
.end method
.method static k()Lcom/google/b/b/am;
.registers 1
sget-object v0, Lcom/google/b/b/al;->a:Lcom/google/b/b/al;
return-object v0
.end method
.method static l()Ljava/util/Queue;
.registers 1
sget-object v0, Lcom/google/b/b/n;->w:Ljava/util/Queue;
return-object v0
.end method
.method final a(Ljava/lang/Object;)I
.registers 5
iget-object v0, p0, Lcom/google/b/b/n;->g:Lcom/google/b/a/c;
invoke-virtual {v0, p1}, Lcom/google/b/a/c;->a(Ljava/lang/Object;)I
move-result v0
shl-int/lit8 v1, v0, 0xf
xor-int/lit16 v1, v1, -0x3283
add-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0xa
xor-int/2addr v0, v1
shl-int/lit8 v1, v0, 0x3
add-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x6
xor-int/2addr v0, v1
shl-int/lit8 v1, v0, 0x2
shl-int/lit8 v2, v0, 0xe
add-int/2addr v1, v2
add-int/2addr v0, v1
ushr-int/lit8 v1, v0, 0x10
xor-int/2addr v0, v1
return v0
.end method
.method final a(I)Lcom/google/b/b/an;
.registers 5
iget-object v0, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
iget v1, p0, Lcom/google/b/b/n;->d:I
ushr-int v1, p1, v1
iget v2, p0, Lcom/google/b/b/n;->c:I
and-int/2addr v1, v2
aget-object v0, v0, v1
return-object v0
.end method
.method final a()Z
.registers 5
iget-wide v0, p0, Lcom/google/b/b/n;->k:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method final a(Lcom/google/b/b/am;J)Z
.registers 9
const/4 v0, 0x1
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0}, Lcom/google/b/b/n;->d()Z
move-result v1
if-eqz v1, :cond_17
invoke-interface {p1}, Lcom/google/b/b/am;->e()J
move-result-wide v1
sub-long v1, p2, v1
iget-wide v3, p0, Lcom/google/b/b/n;->m:J
cmp-long v1, v1, v3
if-ltz v1, :cond_17
:cond_16
:goto_16
return v0
:cond_17
invoke-virtual {p0}, Lcom/google/b/b/n;->c()Z
move-result v1
if-eqz v1, :cond_29
invoke-interface {p1}, Lcom/google/b/b/am;->h()J
move-result-wide v1
sub-long v1, p2, v1
iget-wide v3, p0, Lcom/google/b/b/n;->n:J
cmp-long v1, v1, v3
if-gez v1, :cond_16
:cond_29
const/4 v0, 0x0
goto :goto_16
.end method
.method final b()Z
.registers 3
iget-object v0, p0, Lcom/google/b/b/n;->l:Lcom/google/b/b/cf;
sget-object v1, Lcom/google/b/b/j;->a:Lcom/google/b/b/j;
if-eq v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method final c()Z
.registers 5
iget-wide v0, p0, Lcom/google/b/b/n;->n:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public clear()V
.registers 10
const/4 v1, 0x0
iget-object v4, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
array-length v5, v4
move v3, v1
:goto_5
if-ge v3, v5, :cond_93
aget-object v6, v4, v3
iget v0, v6, Lcom/google/b/b/an;->b:I
if-eqz v0, :cond_86
invoke-virtual {v6}, Lcom/google/b/b/an;->lock()V
:try_start_10
iget-object v7, v6, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
move v2, v1
:goto_13
invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I
move-result v0
if-ge v2, v0, :cond_39
invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/b/am;
:goto_1f
if-eqz v0, :cond_35
invoke-interface {v0}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;
move-result-object v8
invoke-interface {v8}, Lcom/google/b/b/ba;->d()Z
move-result v8
if-eqz v8, :cond_30
sget-object v8, Lcom/google/b/b/bs;->a:Lcom/google/b/b/bs;
invoke-virtual {v6, v0, v8}, Lcom/google/b/b/an;->a(Lcom/google/b/b/am;Lcom/google/b/b/bs;)V
:cond_30
invoke-interface {v0}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
move-result-object v0
goto :goto_1f
:cond_35
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_13
:cond_39
move v0, v1
:goto_3a
invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I
move-result v2
if-ge v0, v2, :cond_47
const/4 v2, 0x0
invoke-virtual {v7, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_3a
:cond_47
iget-object v0, v6, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;
invoke-virtual {v0}, Lcom/google/b/b/n;->h()Z
move-result v0
if-eqz v0, :cond_57
:cond_4f
iget-object v0, v6, Lcom/google/b/b/an;->h:Ljava/lang/ref/ReferenceQueue;
invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
move-result-object v0
if-nez v0, :cond_4f
:cond_57
iget-object v0, v6, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;
invoke-virtual {v0}, Lcom/google/b/b/n;->i()Z
move-result v0
if-eqz v0, :cond_67
:cond_5f
iget-object v0, v6, Lcom/google/b/b/an;->i:Ljava/lang/ref/ReferenceQueue;
invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
move-result-object v0
if-nez v0, :cond_5f
:cond_67
iget-object v0, v6, Lcom/google/b/b/an;->l:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
iget-object v0, v6, Lcom/google/b/b/an;->m:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
iget-object v0, v6, Lcom/google/b/b/an;->k:Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
iget v0, v6, Lcom/google/b/b/an;->d:I
add-int/lit8 v0, v0, 0x1
iput v0, v6, Lcom/google/b/b/an;->d:I
const/4 v0, 0x0
iput v0, v6, Lcom/google/b/b/an;->b:I
:try_end_80
.catchall {:try_start_10 .. :try_end_80} :catchall_8b
invoke-virtual {v6}, Lcom/google/b/b/an;->unlock()V
invoke-virtual {v6}, Lcom/google/b/b/an;->c()V
:cond_86
add-int/lit8 v0, v3, 0x1
move v3, v0
goto/16 :goto_5
:catchall_8b
move-exception v0
invoke-virtual {v6}, Lcom/google/b/b/an;->unlock()V
invoke-virtual {v6}, Lcom/google/b/b/an;->c()V
throw v0
:cond_93
return-void
.end method
.method public containsKey(Ljava/lang/Object;)Z
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-virtual {p0, p1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v1
invoke-virtual {v1, p1, v0}, Lcom/google/b/b/an;->b(Ljava/lang/Object;I)Z
move-result v0
goto :goto_3
.end method
.method public containsValue(Ljava/lang/Object;)Z
.registers 20
if-nez p1, :cond_4
const/4 v2, 0x0
:goto_3
return v2
:cond_4
move-object/from16 v0, p0
iget-object v2, v0, Lcom/google/b/b/n;->r:Lcom/google/b/a/v;
invoke-virtual {v2}, Lcom/google/b/a/v;->a()J
move-result-wide v11
move-object/from16 v0, p0
iget-object v13, v0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
const-wide/16 v6, -0x1
const/4 v2, 0x0
move v8, v2
move-wide v9, v6
:goto_15
const/4 v2, 0x3
if-ge v8, v2, :cond_96
const-wide/16 v3, 0x0
array-length v14, v13
const/4 v2, 0x0
move v5, v2
move-wide v6, v3
:goto_1e
if-ge v5, v14, :cond_8d
aget-object v15, v13, v5
iget v2, v15, Lcom/google/b/b/an;->b:I
iget-object v0, v15, Lcom/google/b/b/an;->f:Ljava/util/concurrent/atomic/AtomicReferenceArray;
move-object/from16 v16, v0
const/4 v2, 0x0
move v3, v2
:goto_2a
invoke-virtual/range {v16 .. v16}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I
move-result v2
if-ge v3, v2, :cond_83
move-object/from16 v0, v16
invoke-virtual {v0, v3}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/google/b/b/am;
move-object v4, v2
:goto_39
if-eqz v4, :cond_7f
invoke-interface {v4}, Lcom/google/b/b/am;->d()Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_59
invoke-virtual {v15}, Lcom/google/b/b/an;->a()V
const/4 v2, 0x0
:goto_45
:cond_45
if-eqz v2, :cond_79
move-object/from16 v0, p0
iget-object v0, v0, Lcom/google/b/b/n;->h:Lcom/google/b/a/c;
move-object/from16 v17, v0
move-object/from16 v0, v17
move-object/from16 v1, p1
invoke-virtual {v0, v1, v2}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_79
const/4 v2, 0x1
goto :goto_3
:cond_59
invoke-interface {v4}, Lcom/google/b/b/am;->a()Lcom/google/b/b/ba;
move-result-object v2
invoke-interface {v2}, Lcom/google/b/b/ba;->get()Ljava/lang/Object;
move-result-object v2
if-nez v2, :cond_68
invoke-virtual {v15}, Lcom/google/b/b/an;->a()V
const/4 v2, 0x0
goto :goto_45
:cond_68
iget-object v0, v15, Lcom/google/b/b/an;->a:Lcom/google/b/b/n;
move-object/from16 v17, v0
move-object/from16 v0, v17
invoke-virtual {v0, v4, v11, v12}, Lcom/google/b/b/n;->a(Lcom/google/b/b/am;J)Z
move-result v17
if-eqz v17, :cond_45
invoke-virtual {v15, v11, v12}, Lcom/google/b/b/an;->a(J)V
const/4 v2, 0x0
goto :goto_45
:cond_79
invoke-interface {v4}, Lcom/google/b/b/am;->b()Lcom/google/b/b/am;
move-result-object v2
move-object v4, v2
goto :goto_39
:cond_7f
add-int/lit8 v2, v3, 0x1
move v3, v2
goto :goto_2a
:cond_83
iget v2, v15, Lcom/google/b/b/an;->d:I
int-to-long v2, v2
add-long v3, v6, v2
add-int/lit8 v2, v5, 0x1
move v5, v2
move-wide v6, v3
goto :goto_1e
:cond_8d
cmp-long v2, v6, v9
if-eqz v2, :cond_96
add-int/lit8 v2, v8, 0x1
move v8, v2
move-wide v9, v6
goto :goto_15
:cond_96
const/4 v2, 0x0
goto/16 :goto_3
.end method
.method final d()Z
.registers 5
iget-wide v0, p0, Lcom/google/b/b/n;->m:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method final e()Z
.registers 5
iget-wide v0, p0, Lcom/google/b/b/n;->o:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public entrySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/b/b/n;->z:Ljava/util/Set;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/google/b/b/af;
invoke-direct {v0, p0, p0}, Lcom/google/b/b/af;-><init>(Lcom/google/b/b/n;Ljava/util/concurrent/ConcurrentMap;)V
iput-object v0, p0, Lcom/google/b/b/n;->z:Ljava/util/Set;
goto :goto_4
.end method
.method final f()Z
.registers 2
invoke-virtual {p0}, Lcom/google/b/b/n;->d()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0}, Lcom/google/b/b/n;->a()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method final g()Z
.registers 2
invoke-virtual {p0}, Lcom/google/b/b/n;->c()Z
move-result v0
if-nez v0, :cond_c
invoke-virtual {p0}, Lcom/google/b/b/n;->e()Z
move-result v0
if-eqz v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0, p1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v1
invoke-virtual {v1, p1, v0}, Lcom/google/b/b/an;->a(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v0
goto :goto_3
.end method
.method final h()Z
.registers 3
iget-object v0, p0, Lcom/google/b/b/n;->i:Lcom/google/b/b/aq;
sget-object v1, Lcom/google/b/b/aq;->a:Lcom/google/b/b/aq;
if-eq v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method final i()Z
.registers 3
iget-object v0, p0, Lcom/google/b/b/n;->j:Lcom/google/b/b/aq;
sget-object v1, Lcom/google/b/b/aq;->a:Lcom/google/b/b/aq;
if-eq v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public isEmpty()Z
.registers 10
const-wide/16 v4, 0x0
const/4 v1, 0x0
iget-object v6, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
move v0, v1
move-wide v2, v4
:goto_7
array-length v7, v6
if-ge v0, v7, :cond_1a
aget-object v7, v6, v0
iget v7, v7, Lcom/google/b/b/an;->b:I
if-eqz v7, :cond_11
:cond_10
:goto_10
return v1
:cond_11
aget-object v7, v6, v0
iget v7, v7, Lcom/google/b/b/an;->d:I
int-to-long v7, v7
add-long/2addr v2, v7
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
cmp-long v0, v2, v4
if-eqz v0, :cond_35
move v0, v1
:goto_1f
array-length v7, v6
if-ge v0, v7, :cond_31
aget-object v7, v6, v0
iget v7, v7, Lcom/google/b/b/an;->b:I
if-nez v7, :cond_10
aget-object v7, v6, v0
iget v7, v7, Lcom/google/b/b/an;->d:I
int-to-long v7, v7
sub-long/2addr v2, v7
add-int/lit8 v0, v0, 0x1
goto :goto_1f
:cond_31
cmp-long v0, v2, v4
if-nez v0, :cond_10
:cond_35
const/4 v1, 0x1
goto :goto_10
.end method
.method public keySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/b/b/n;->x:Ljava/util/Set;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/google/b/b/ai;
invoke-direct {v0, p0, p0}, Lcom/google/b/b/ai;-><init>(Lcom/google/b/b/n;Ljava/util/concurrent/ConcurrentMap;)V
iput-object v0, p0, Lcom/google/b/b/n;->x:Ljava/util/Set;
goto :goto_4
.end method
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public putAll(Ljava/util/Map;)V
.registers 5
invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_8
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
invoke-virtual {p0, v2, v0}, Lcom/google/b/b/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8
:cond_20
return-void
.end method
.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-virtual {p0, p1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v1
invoke-virtual {v1, p1, v0}, Lcom/google/b/b/an;->c(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v0
goto :goto_3
.end method
.method public remove(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 5
if-eqz p1, :cond_4
if-nez p2, :cond_6
:cond_4
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-virtual {p0, p1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v1
invoke-virtual {v1, p1, v0, p2}, Lcom/google/b/b/an;->b(Ljava/lang/Object;ILjava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {p0, p1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v1
invoke-virtual {v1, p1, v0, p2}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public replace(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 6
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p3}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
if-nez p2, :cond_a
const/4 v0, 0x0
:goto_9
return v0
:cond_a
invoke-virtual {p0, p1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v1
invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/b/b/an;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
move-result v0
goto :goto_9
.end method
.method public size()I
.registers 7
iget-object v3, p0, Lcom/google/b/b/n;->e:[Lcom/google/b/b/an;
const-wide/16 v0, 0x0
const/4 v2, 0x0
:goto_5
array-length v4, v3
if-ge v2, v4, :cond_11
aget-object v4, v3, v2
iget v4, v4, Lcom/google/b/b/an;->b:I
int-to-long v4, v4
add-long/2addr v0, v4
add-int/lit8 v2, v2, 0x1
goto :goto_5
:cond_11
invoke-static {v0, v1}, Lcom/google/b/e/a;->a(J)I
move-result v0
return v0
.end method
.method public values()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/google/b/b/n;->y:Ljava/util/Collection;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/google/b/b/bb;
invoke-direct {v0, p0, p0}, Lcom/google/b/b/bb;-><init>(Lcom/google/b/b/n;Ljava/util/concurrent/ConcurrentMap;)V
iput-object v0, p0, Lcom/google/b/b/n;->y:Ljava/util/Collection;
goto :goto_4
.end method