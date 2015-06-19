.class  Lcom/google/b/c/aa;
.super Ljava/util/AbstractMap;
.source "MapMakerInternalMap.java"
.implements Ljava/io/Serializable;
.implements Ljava/util/concurrent/ConcurrentMap;
.field static final a:Ljava/util/logging/Logger;
.field static final q:Lcom/google/b/c/bm;
.field static final r:Ljava/util/Queue;
.field final transient b:I
.field final transient c:I
.field final transient d:[Lcom/google/b/c/ba;
.field final e:I
.field final f:Lcom/google/b/a/c;
.field final g:Lcom/google/b/a/c;
.field final h:Lcom/google/b/c/bc;
.field final i:Lcom/google/b/c/bc;
.field final j:I
.field final k:J
.field final l:J
.field final m:Ljava/util/Queue;
.field final n:Lcom/google/b/c/y;
.field final transient o:Lcom/google/b/c/ae;
.field final p:Lcom/google/b/a/v;
.field transient s:Ljava/util/Set;
.field transient t:Ljava/util/Collection;
.field transient u:Ljava/util/Set;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/google/b/c/aa;
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;
move-result-object v0
sput-object v0, Lcom/google/b/c/aa;->a:Ljava/util/logging/Logger;
new-instance v0, Lcom/google/b/c/ab;
invoke-direct {v0}, Lcom/google/b/c/ab;-><init>()V
sput-object v0, Lcom/google/b/c/aa;->q:Lcom/google/b/c/bm;
new-instance v0, Lcom/google/b/c/ac;
invoke-direct {v0}, Lcom/google/b/c/ac;-><init>()V
sput-object v0, Lcom/google/b/c/aa;->r:Ljava/util/Queue;
return-void
.end method
.method constructor <init>(Lcom/google/b/c/q;)V
.registers 10
const-wide/16 v2, 0x0
const-wide/16 v6, -0x1
const/4 v4, 0x1
const/4 v5, 0x0
invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V
invoke-virtual {p1}, Lcom/google/b/c/q;->d()I
move-result v0
const/high16 v1, 0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iput v0, p0, Lcom/google/b/c/aa;->e:I
invoke-virtual {p1}, Lcom/google/b/c/q;->e()Lcom/google/b/c/bc;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/aa;->h:Lcom/google/b/c/bc;
iget-object v0, p1, Lcom/google/b/c/q;->g:Lcom/google/b/c/bc;
sget-object v1, Lcom/google/b/c/bc;->a:Lcom/google/b/c/bc;
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/c/bc;
iput-object v0, p0, Lcom/google/b/c/aa;->i:Lcom/google/b/c/bc;
iget-object v0, p1, Lcom/google/b/c/q;->k:Lcom/google/b/a/c;
invoke-virtual {p1}, Lcom/google/b/c/q;->e()Lcom/google/b/c/bc;
move-result-object v1
invoke-virtual {v1}, Lcom/google/b/c/bc;->a()Lcom/google/b/a/c;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/a/c;
iput-object v0, p0, Lcom/google/b/c/aa;->f:Lcom/google/b/a/c;
iget-object v0, p0, Lcom/google/b/c/aa;->i:Lcom/google/b/c/bc;
invoke-virtual {v0}, Lcom/google/b/c/bc;->a()Lcom/google/b/a/c;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/aa;->g:Lcom/google/b/a/c;
iget v0, p1, Lcom/google/b/c/q;->e:I
iput v0, p0, Lcom/google/b/c/aa;->j:I
iget-wide v0, p1, Lcom/google/b/c/q;->i:J
cmp-long v0, v0, v6
if-nez v0, :cond_b1
move-wide v0, v2
:goto_4c
iput-wide v0, p0, Lcom/google/b/c/aa;->k:J
iget-wide v0, p1, Lcom/google/b/c/q;->h:J
cmp-long v0, v0, v6
if-nez v0, :cond_b4
:goto_54
iput-wide v2, p0, Lcom/google/b/c/aa;->l:J
iget-object v0, p0, Lcom/google/b/c/aa;->h:Lcom/google/b/c/bc;
invoke-virtual {p0}, Lcom/google/b/c/aa;->b()Z
move-result v1
invoke-virtual {p0}, Lcom/google/b/c/aa;->a()Z
move-result v2
invoke-static {v0, v1, v2}, Lcom/google/b/c/ae;->a(Lcom/google/b/c/bc;ZZ)Lcom/google/b/c/ae;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/aa;->o:Lcom/google/b/c/ae;
iget-object v0, p1, Lcom/google/b/c/q;->l:Lcom/google/b/a/v;
invoke-static {}, Lcom/google/b/a/v;->b()Lcom/google/b/a/v;
move-result-object v1
invoke-static {v0, v1}, Lcom/google/b/a/i;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/a/v;
iput-object v0, p0, Lcom/google/b/c/aa;->p:Lcom/google/b/a/v;
invoke-virtual {p1}, Lcom/google/b/c/q;->a()Lcom/google/b/c/y;
move-result-object v0
iput-object v0, p0, Lcom/google/b/c/aa;->n:Lcom/google/b/c/y;
iget-object v0, p0, Lcom/google/b/c/aa;->n:Lcom/google/b/c/y;
sget-object v1, Lcom/google/b/c/k;->a:Lcom/google/b/c/k;
if-ne v0, v1, :cond_b7
sget-object v0, Lcom/google/b/c/aa;->r:Ljava/util/Queue;
:goto_82
iput-object v0, p0, Lcom/google/b/c/aa;->m:Ljava/util/Queue;
invoke-virtual {p1}, Lcom/google/b/c/q;->b()I
move-result v0
const/high16 v1, 0x4000
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-virtual {p0}, Lcom/google/b/c/aa;->a()Z
move-result v1
if-eqz v1, :cond_9a
iget v1, p0, Lcom/google/b/c/aa;->j:I
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
:cond_9a
move v1, v4
move v2, v5
:goto_9c
iget v3, p0, Lcom/google/b/c/aa;->e:I
if-ge v1, v3, :cond_bd
invoke-virtual {p0}, Lcom/google/b/c/aa;->a()Z
move-result v3
if-eqz v3, :cond_ac
mul-int/lit8 v3, v1, 0x2
iget v6, p0, Lcom/google/b/c/aa;->j:I
if-gt v3, v6, :cond_bd
:cond_ac
add-int/lit8 v2, v2, 0x1
shl-int/lit8 v1, v1, 0x1
goto :goto_9c
:cond_b1
iget-wide v0, p1, Lcom/google/b/c/q;->i:J
goto :goto_4c
:cond_b4
iget-wide v2, p1, Lcom/google/b/c/q;->h:J
goto :goto_54
:cond_b7
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
goto :goto_82
:cond_bd
rsub-int/lit8 v2, v2, 0x20
iput v2, p0, Lcom/google/b/c/aa;->c:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/google/b/c/aa;->b:I
new-array v2, v1, [Lcom/google/b/c/ba;
iput-object v2, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
div-int v2, v0, v1
mul-int v3, v2, v1
if-ge v3, v0, :cond_10b
add-int/lit8 v0, v2, 0x1
:goto_d1
if-ge v4, v0, :cond_d6
shl-int/lit8 v4, v4, 0x1
goto :goto_d1
:cond_d6
invoke-virtual {p0}, Lcom/google/b/c/aa;->a()Z
move-result v0
if-eqz v0, :cond_f9
iget v0, p0, Lcom/google/b/c/aa;->j:I
div-int/2addr v0, v1
add-int/lit8 v0, v0, 0x1
iget v2, p0, Lcom/google/b/c/aa;->j:I
rem-int v1, v2, v1
:goto_e5
iget-object v2, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
array-length v2, v2
if-ge v5, v2, :cond_10a
if-ne v5, v1, :cond_ee
add-int/lit8 v0, v0, -0x1
:cond_ee
iget-object v2, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
invoke-direct {p0, v4, v0}, Lcom/google/b/c/aa;->a(II)Lcom/google/b/c/ba;
move-result-object v3
aput-object v3, v2, v5
add-int/lit8 v5, v5, 0x1
goto :goto_e5
:goto_f9
:cond_f9
iget-object v0, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
array-length v0, v0
if-ge v5, v0, :cond_10a
iget-object v0, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
const/4 v1, -0x1
invoke-direct {p0, v4, v1}, Lcom/google/b/c/aa;->a(II)Lcom/google/b/c/ba;
move-result-object v1
aput-object v1, v0, v5
add-int/lit8 v5, v5, 0x1
goto :goto_f9
:cond_10a
return-void
:cond_10b
move v0, v2
goto :goto_d1
.end method
.method private a(Ljava/lang/Object;)I
.registers 5
iget-object v0, p0, Lcom/google/b/c/aa;->f:Lcom/google/b/a/c;
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
.method private a(II)Lcom/google/b/c/ba;
.registers 4
new-instance v0, Lcom/google/b/c/ba;
invoke-direct {v0, p0, p1, p2}, Lcom/google/b/c/ba;-><init>(Lcom/google/b/c/aa;II)V
return-object v0
.end method
.method static a(Lcom/google/b/c/az;Lcom/google/b/c/az;)V
.registers 2
invoke-interface {p0, p1}, Lcom/google/b/c/az;->a(Lcom/google/b/c/az;)V
invoke-interface {p1, p0}, Lcom/google/b/c/az;->b(Lcom/google/b/c/az;)V
return-void
.end method
.method static a(Lcom/google/b/c/az;J)Z
.registers 7
invoke-interface {p0}, Lcom/google/b/c/az;->e()J
move-result-wide v0
sub-long v0, p1, v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_e
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method static b(Lcom/google/b/c/az;)V
.registers 2
sget-object v0, Lcom/google/b/c/ay;->a:Lcom/google/b/c/ay;
invoke-interface {p0, v0}, Lcom/google/b/c/az;->a(Lcom/google/b/c/az;)V
invoke-interface {p0, v0}, Lcom/google/b/c/az;->b(Lcom/google/b/c/az;)V
return-void
.end method
.method static b(Lcom/google/b/c/az;Lcom/google/b/c/az;)V
.registers 2
invoke-interface {p0, p1}, Lcom/google/b/c/az;->c(Lcom/google/b/c/az;)V
invoke-interface {p1, p0}, Lcom/google/b/c/az;->d(Lcom/google/b/c/az;)V
return-void
.end method
.method static c(Lcom/google/b/c/az;)V
.registers 2
sget-object v0, Lcom/google/b/c/ay;->a:Lcom/google/b/c/ay;
invoke-interface {p0, v0}, Lcom/google/b/c/az;->c(Lcom/google/b/c/az;)V
invoke-interface {p0, v0}, Lcom/google/b/c/az;->d(Lcom/google/b/c/az;)V
return-void
.end method
.method static f()Lcom/google/b/c/bm;
.registers 1
sget-object v0, Lcom/google/b/c/aa;->q:Lcom/google/b/c/bm;
return-object v0
.end method
.method static g()Lcom/google/b/c/az;
.registers 1
sget-object v0, Lcom/google/b/c/ay;->a:Lcom/google/b/c/ay;
return-object v0
.end method
.method static h()Ljava/util/Queue;
.registers 1
sget-object v0, Lcom/google/b/c/aa;->r:Ljava/util/Queue;
return-object v0
.end method
.method final a(I)Lcom/google/b/c/ba;
.registers 5
iget-object v0, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
iget v1, p0, Lcom/google/b/c/aa;->c:I
ushr-int v1, p1, v1
iget v2, p0, Lcom/google/b/c/aa;->b:I
and-int/2addr v1, v2
aget-object v0, v0, v1
return-object v0
.end method
.method final a()Z
.registers 3
iget v0, p0, Lcom/google/b/c/aa;->j:I
const/4 v1, -0x1
if-eq v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method final a(Lcom/google/b/c/az;)Z
.registers 4
iget-object v0, p0, Lcom/google/b/c/aa;->p:Lcom/google/b/a/v;
invoke-virtual {v0}, Lcom/google/b/a/v;->a()J
move-result-wide v0
invoke-static {p1, v0, v1}, Lcom/google/b/c/aa;->a(Lcom/google/b/c/az;J)Z
move-result v0
return v0
.end method
.method final b()Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
iget-wide v2, p0, Lcom/google/b/c/aa;->l:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_15
move v2, v1
:goto_b
if-nez v2, :cond_13
invoke-virtual {p0}, Lcom/google/b/c/aa;->c()Z
move-result v2
if-eqz v2, :cond_14
:cond_13
move v0, v1
:cond_14
return v0
:cond_15
move v2, v0
goto :goto_b
.end method
.method final c()Z
.registers 5
iget-wide v0, p0, Lcom/google/b/c/aa;->k:J
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
iget-object v4, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
array-length v5, v4
move v3, v1
:goto_5
if-ge v3, v5, :cond_94
aget-object v6, v4, v3
iget v0, v6, Lcom/google/b/c/ba;->b:I
if-eqz v0, :cond_87
invoke-virtual {v6}, Lcom/google/b/c/ba;->lock()V
:try_start_10
iget-object v7, v6, Lcom/google/b/c/ba;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
iget-object v0, v6, Lcom/google/b/c/ba;->a:Lcom/google/b/c/aa;
iget-object v0, v0, Lcom/google/b/c/aa;->m:Ljava/util/Queue;
sget-object v2, Lcom/google/b/c/aa;->r:Ljava/util/Queue;
if-eq v0, v2, :cond_3a
move v2, v1
:goto_1b
invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I
move-result v0
if-ge v2, v0, :cond_3a
invoke-virtual {v7, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/c/az;
:goto_27
if-eqz v0, :cond_36
invoke-interface {v0}, Lcom/google/b/c/az;->a()Lcom/google/b/c/bm;
sget-object v8, Lcom/google/b/c/s;->a:Lcom/google/b/c/s;
invoke-virtual {v6, v0, v8}, Lcom/google/b/c/ba;->a(Lcom/google/b/c/az;Lcom/google/b/c/s;)V
invoke-interface {v0}, Lcom/google/b/c/az;->b()Lcom/google/b/c/az;
move-result-object v0
goto :goto_27
:cond_36
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_1b
:cond_3a
move v0, v1
:goto_3b
invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I
move-result v2
if-ge v0, v2, :cond_48
const/4 v2, 0x0
invoke-virtual {v7, v0, v2}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->set(ILjava/lang/Object;)V
add-int/lit8 v0, v0, 0x1
goto :goto_3b
:cond_48
iget-object v0, v6, Lcom/google/b/c/ba;->a:Lcom/google/b/c/aa;
invoke-virtual {v0}, Lcom/google/b/c/aa;->d()Z
move-result v0
if-eqz v0, :cond_58
:cond_50
iget-object v0, v6, Lcom/google/b/c/ba;->g:Ljava/lang/ref/ReferenceQueue;
invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
move-result-object v0
if-nez v0, :cond_50
:cond_58
iget-object v0, v6, Lcom/google/b/c/ba;->a:Lcom/google/b/c/aa;
invoke-virtual {v0}, Lcom/google/b/c/aa;->e()Z
move-result v0
if-eqz v0, :cond_68
:cond_60
iget-object v0, v6, Lcom/google/b/c/ba;->h:Ljava/lang/ref/ReferenceQueue;
invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;
move-result-object v0
if-nez v0, :cond_60
:cond_68
iget-object v0, v6, Lcom/google/b/c/ba;->k:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
iget-object v0, v6, Lcom/google/b/c/ba;->l:Ljava/util/Queue;
invoke-interface {v0}, Ljava/util/Queue;->clear()V
iget-object v0, v6, Lcom/google/b/c/ba;->j:Ljava/util/concurrent/atomic/AtomicInteger;
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
iget v0, v6, Lcom/google/b/c/ba;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, v6, Lcom/google/b/c/ba;->c:I
const/4 v0, 0x0
iput v0, v6, Lcom/google/b/c/ba;->b:I
:try_end_81
.catchall {:try_start_10 .. :try_end_81} :catchall_8c
invoke-virtual {v6}, Lcom/google/b/c/ba;->unlock()V
invoke-virtual {v6}, Lcom/google/b/c/ba;->d()V
:cond_87
add-int/lit8 v0, v3, 0x1
move v3, v0
goto/16 :goto_5
:catchall_8c
move-exception v0
invoke-virtual {v6}, Lcom/google/b/c/ba;->unlock()V
invoke-virtual {v6}, Lcom/google/b/c/ba;->d()V
throw v0
:cond_94
return-void
.end method
.method public containsKey(Ljava/lang/Object;)Z
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
invoke-direct {p0, p1}, Lcom/google/b/c/aa;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/c/aa;->a(I)Lcom/google/b/c/ba;
move-result-object v1
invoke-virtual {v1, p1, v0}, Lcom/google/b/c/ba;->b(Ljava/lang/Object;I)Z
move-result v0
goto :goto_3
.end method
.method public containsValue(Ljava/lang/Object;)Z
.registers 16
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
iget-object v9, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
const-wide/16 v4, -0x1
const/4 v0, 0x0
move v6, v0
move-wide v7, v4
:goto_b
const/4 v0, 0x3
if-ge v6, v0, :cond_84
const-wide/16 v1, 0x0
array-length v10, v9
const/4 v0, 0x0
move v3, v0
move-wide v4, v1
:goto_14
if-ge v3, v10, :cond_7b
aget-object v11, v9, v3
iget v0, v11, Lcom/google/b/c/ba;->b:I
iget-object v12, v11, Lcom/google/b/c/ba;->e:Ljava/util/concurrent/atomic/AtomicReferenceArray;
const/4 v0, 0x0
move v1, v0
:goto_1e
invoke-virtual {v12}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->length()I
move-result v0
if-ge v1, v0, :cond_71
invoke-virtual {v12, v1}, Ljava/util/concurrent/atomic/AtomicReferenceArray;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/b/c/az;
move-object v2, v0
:goto_2b
if-eqz v2, :cond_6d
invoke-interface {v2}, Lcom/google/b/c/az;->d()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_43
invoke-virtual {v11}, Lcom/google/b/c/ba;->a()V
const/4 v0, 0x0
:goto_37
:cond_37
if-eqz v0, :cond_67
iget-object v13, p0, Lcom/google/b/c/aa;->g:Lcom/google/b/a/c;
invoke-virtual {v13, p1, v0}, Lcom/google/b/a/c;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_67
const/4 v0, 0x1
goto :goto_3
:cond_43
invoke-interface {v2}, Lcom/google/b/c/az;->a()Lcom/google/b/c/bm;
move-result-object v0
invoke-interface {v0}, Lcom/google/b/c/bm;->get()Ljava/lang/Object;
move-result-object v0
if-nez v0, :cond_52
invoke-virtual {v11}, Lcom/google/b/c/ba;->a()V
const/4 v0, 0x0
goto :goto_37
:cond_52
iget-object v13, v11, Lcom/google/b/c/ba;->a:Lcom/google/b/c/aa;
invoke-virtual {v13}, Lcom/google/b/c/aa;->b()Z
move-result v13
if-eqz v13, :cond_37
iget-object v13, v11, Lcom/google/b/c/ba;->a:Lcom/google/b/c/aa;
invoke-virtual {v13, v2}, Lcom/google/b/c/aa;->a(Lcom/google/b/c/az;)Z
move-result v13
if-eqz v13, :cond_37
invoke-virtual {v11}, Lcom/google/b/c/ba;->b()V
const/4 v0, 0x0
goto :goto_37
:cond_67
invoke-interface {v2}, Lcom/google/b/c/az;->b()Lcom/google/b/c/az;
move-result-object v0
move-object v2, v0
goto :goto_2b
:cond_6d
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_1e
:cond_71
iget v0, v11, Lcom/google/b/c/ba;->c:I
int-to-long v0, v0
add-long v1, v4, v0
add-int/lit8 v0, v3, 0x1
move v3, v0
move-wide v4, v1
goto :goto_14
:cond_7b
cmp-long v0, v4, v7
if-eqz v0, :cond_84
add-int/lit8 v0, v6, 0x1
move v6, v0
move-wide v7, v4
goto :goto_b
:cond_84
const/4 v0, 0x0
goto/16 :goto_3
.end method
.method final d()Z
.registers 3
iget-object v0, p0, Lcom/google/b/c/aa;->h:Lcom/google/b/c/bc;
sget-object v1, Lcom/google/b/c/bc;->a:Lcom/google/b/c/bc;
if-eq v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method final e()Z
.registers 3
iget-object v0, p0, Lcom/google/b/c/aa;->i:Lcom/google/b/c/bc;
sget-object v1, Lcom/google/b/c/bc;->a:Lcom/google/b/c/bc;
if-eq v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public entrySet()Ljava/util/Set;
.registers 2
iget-object v0, p0, Lcom/google/b/c/aa;->u:Ljava/util/Set;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/google/b/c/ao;
invoke-direct {v0, p0}, Lcom/google/b/c/ao;-><init>(Lcom/google/b/c/aa;)V
iput-object v0, p0, Lcom/google/b/c/aa;->u:Ljava/util/Set;
goto :goto_4
.end method
.method public get(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
invoke-direct {p0, p1}, Lcom/google/b/c/aa;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/c/aa;->a(I)Lcom/google/b/c/ba;
move-result-object v1
invoke-virtual {v1, p1, v0}, Lcom/google/b/c/ba;->a(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v0
goto :goto_3
.end method
.method public isEmpty()Z
.registers 10
const-wide/16 v4, 0x0
const/4 v1, 0x0
iget-object v6, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
move v0, v1
move-wide v2, v4
:goto_7
array-length v7, v6
if-ge v0, v7, :cond_1a
aget-object v7, v6, v0
iget v7, v7, Lcom/google/b/c/ba;->b:I
if-eqz v7, :cond_11
:cond_10
:goto_10
return v1
:cond_11
aget-object v7, v6, v0
iget v7, v7, Lcom/google/b/c/ba;->c:I
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
iget v7, v7, Lcom/google/b/c/ba;->b:I
if-nez v7, :cond_10
aget-object v7, v6, v0
iget v7, v7, Lcom/google/b/c/ba;->c:I
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
iget-object v0, p0, Lcom/google/b/c/aa;->s:Ljava/util/Set;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/google/b/c/ax;
invoke-direct {v0, p0}, Lcom/google/b/c/ax;-><init>(Lcom/google/b/c/aa;)V
iput-object v0, p0, Lcom/google/b/c/aa;->s:Ljava/util/Set;
goto :goto_4
.end method
.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, p1}, Lcom/google/b/c/aa;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/c/aa;->a(I)Lcom/google/b/c/ba;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/b/c/ba;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
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
invoke-virtual {p0, v2, v0}, Lcom/google/b/c/aa;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_8
:cond_20
return-void
.end method
.method public putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, p1}, Lcom/google/b/c/aa;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/c/aa;->a(I)Lcom/google/b/c/ba;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v1, p1, v0, p2, v2}, Lcom/google/b/c/ba;->a(Ljava/lang/Object;ILjava/lang/Object;Z)Ljava/lang/Object;
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
invoke-direct {p0, p1}, Lcom/google/b/c/aa;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/c/aa;->a(I)Lcom/google/b/c/ba;
move-result-object v1
invoke-virtual {v1, p1, v0}, Lcom/google/b/c/ba;->c(Ljava/lang/Object;I)Ljava/lang/Object;
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
invoke-direct {p0, p1}, Lcom/google/b/c/aa;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/c/aa;->a(I)Lcom/google/b/c/ba;
move-result-object v1
invoke-virtual {v1, p1, v0, p2}, Lcom/google/b/c/ba;->b(Ljava/lang/Object;ILjava/lang/Object;)Z
move-result v0
goto :goto_5
.end method
.method public replace(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-direct {p0, p1}, Lcom/google/b/c/aa;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/c/aa;->a(I)Lcom/google/b/c/ba;
move-result-object v1
invoke-virtual {v1, p1, v0, p2}, Lcom/google/b/c/ba;->a(Ljava/lang/Object;ILjava/lang/Object;)Ljava/lang/Object;
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
invoke-direct {p0, p1}, Lcom/google/b/c/aa;->a(Ljava/lang/Object;)I
move-result v0
invoke-virtual {p0, v0}, Lcom/google/b/c/aa;->a(I)Lcom/google/b/c/ba;
move-result-object v1
invoke-virtual {v1, p1, v0, p2, p3}, Lcom/google/b/c/ba;->a(Ljava/lang/Object;ILjava/lang/Object;Ljava/lang/Object;)Z
move-result v0
goto :goto_9
.end method
.method public size()I
.registers 7
iget-object v3, p0, Lcom/google/b/c/aa;->d:[Lcom/google/b/c/ba;
const-wide/16 v1, 0x0
const/4 v0, 0x0
:goto_5
array-length v4, v3
if-ge v0, v4, :cond_11
aget-object v4, v3, v0
iget v4, v4, Lcom/google/b/c/ba;->b:I
int-to-long v4, v4
add-long/2addr v1, v4
add-int/lit8 v0, v0, 0x1
goto :goto_5
:cond_11
invoke-static {v1, v2}, Lcom/google/b/e/a;->a(J)I
move-result v0
return v0
.end method
.method public values()Ljava/util/Collection;
.registers 2
iget-object v0, p0, Lcom/google/b/c/aa;->t:Ljava/util/Collection;
if-eqz v0, :cond_5
:goto_4
return-object v0
:cond_5
new-instance v0, Lcom/google/b/c/bn;
invoke-direct {v0, p0}, Lcom/google/b/c/bn;-><init>(Lcom/google/b/c/aa;)V
iput-object v0, p0, Lcom/google/b/c/aa;->t:Ljava/util/Collection;
goto :goto_4
.end method