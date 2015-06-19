.class public final Lcom/c/a/bv;
.super Ljava/lang/Object;
.implements Ljava/lang/Cloneable;
.field static final synthetic a:Z
.field private b:Ljava/util/ArrayList;
.field private c:Ljava/util/ArrayList;
.field private d:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/c/a/bv;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/c/a/bv;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
return-void
.end method
.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/c/a/cg;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-eqz p1, :cond_2d
invoke-virtual {p1}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
:goto_b
iput-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
if-eqz p2, :cond_33
invoke-virtual {p2}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
:goto_15
iput-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
if-eqz p3, :cond_29
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {p3}, Lcom/c/a/cg;->w()Lcom/c/a/cg;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_29
invoke-direct {p0}, Lcom/c/a/bv;->j()V
return-void
:cond_2d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
goto :goto_b
:cond_33
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
goto :goto_15
.end method
.method private static a(Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
.registers 19
sget-boolean v8, Lcom/c/a/d;->h_:Z
const/4 v0, 0x0
invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v9
move-object v1, v0
:goto_8
:cond_8
invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_61
invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/ap;
if-eqz v1, :cond_24
invoke-interface {v0}, Lcom/c/ap;->n_()Lcom/c/ba;
move-result-object v2
invoke-interface {v1}, Lcom/c/ap;->n_()Lcom/c/ba;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/c/ba;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_8
:cond_24
const-wide/16 v3, 0x7530
const/4 v2, -0x1
const/4 v1, 0x0
invoke-virtual/range {p0 .. p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v10
move v13, v2
move v2, v1
move-wide v14, v3
move-wide v4, v14
move v3, v13
:goto_31
invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z
move-result v1
if-eqz v1, :cond_59
invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/c/a/cg;
invoke-interface {v0}, Lcom/c/ap;->n_()Lcom/c/ba;
move-result-object v6
invoke-virtual {v1}, Lcom/c/a/cg;->n_()Lcom/c/ba;
move-result-object v1
invoke-virtual {v6, v1}, Lcom/c/ba;->b(Lcom/c/ba;)J
move-result-wide v6
cmp-long v1, v6, v4
if-gez v1, :cond_55
const-wide/16 v11, 0x0
cmp-long v1, v6, v11
if-ltz v1, :cond_55
move v3, v2
move-wide v4, v6
:cond_55
add-int/lit8 v1, v2, 0x1
if-eqz v8, :cond_64
:cond_59
const/4 v1, -0x1
if-le v3, v1, :cond_5f
const/4 v1, 0x1
aput-boolean v1, p2, v3
:cond_5f
if-eqz v8, :cond_62
:cond_61
return-void
:cond_62
move-object v1, v0
goto :goto_8
:cond_64
move v2, v1
goto :goto_31
.end method
.method private static a(Ljava/util/ArrayList;[Z)V
.registers 9
const/4 v3, -0x1
sget-boolean v5, Lcom/c/a/d;->h_:Z
const/4 v1, 0x0
const/4 v0, 0x0
move v2, v3
move-object v4, v1
move v1, v0
:goto_8
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_24
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/ap;
if-eqz v4, :cond_1e
sget-object v6, Lcom/c/ap;->f:Ljava/util/Comparator;
invoke-interface {v6, v0, v4}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I
move-result v6
if-gez v6, :cond_20
:cond_1e
move v2, v1
move-object v4, v0
:cond_20
add-int/lit8 v0, v1, 0x1
if-eqz v5, :cond_2a
:cond_24
if-le v2, v3, :cond_29
const/4 v0, 0x1
aput-boolean v0, p1, v2
:cond_29
return-void
:cond_2a
move v1, v0
goto :goto_8
.end method
.method private static a(Ljava/util/Collection;J)V
.registers 5
invoke-interface {p0}, Ljava/util/Collection;->size()I
move-result v0
const/4 v1, 0x1
if-le v0, v1, :cond_16
sget-object v0, Lcom/c/ap;->f:Ljava/util/Comparator;
invoke-static {p0, v0}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/ap;
invoke-interface {v0}, Lcom/c/ap;->n_()Lcom/c/ba;
move-result-object v0
invoke-static {p0, p1, p2, v0}, Lcom/c/a/bv;->a(Ljava/util/Collection;JLcom/c/ba;)V
:cond_16
return-void
.end method
.method private static a(Ljava/util/Collection;JLcom/c/ba;)V
.registers 5
new-instance v0, Lcom/c/a/bz;
invoke-direct {v0, p3, p1, p2}, Lcom/c/a/bz;-><init>(Lcom/c/ba;J)V
invoke-static {p0, v0}, Lcom/c/br;->a(Ljava/lang/Iterable;Lcom/c/y;)V
return-void
.end method
.method private j()V
.registers 4
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_e
invoke-virtual {p0}, Lcom/c/a/bv;->g()Z
move-result v0
if-nez v0, :cond_f
:cond_e
:goto_e
return-void
:cond_f
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Z
const/4 v1, 0x0
invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V
iget-object v1, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-static {v1, v2, v0}, Lcom/c/a/bv;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
iget-object v1, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
iget-object v2, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-static {v1, v2, v0}, Lcom/c/a/bv;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;[Z)V
iget-object v1, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-static {v1, v0}, Lcom/c/a/bv;->a(Ljava/util/ArrayList;[Z)V
iget-object v1, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-static {v1, v0}, Lcom/c/br;->a(Ljava/util/List;[Z)V
goto :goto_e
.end method
.method public a(Lcom/c/ba;)V
.registers 5
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
const-wide/16 v1, 0x1388
invoke-static {v0, v1, v2, p1}, Lcom/c/a/bv;->a(Ljava/util/Collection;JLcom/c/ba;)V
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
const-wide/16 v1, 0x4e20
invoke-static {v0, v1, v2}, Lcom/c/a/bv;->a(Ljava/util/Collection;J)V
invoke-direct {p0}, Lcom/c/a/bv;->j()V
return-void
.end method
.method public a()Z
.registers 3
invoke-virtual {p0}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;
move-result-object v0
sget-object v1, Lcom/c/bi;->a:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/c/a/bv;->c()Ljava/util/ArrayList;
move-result-object v0
sget-object v1, Lcom/c/q;->a:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;
move-result-object v0
sget-object v1, Lcom/c/bi;->a:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
move-result v0
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/c/a/bv;->c()Ljava/util/ArrayList;
move-result-object v0
sget-object v1, Lcom/c/q;->a:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
move-result v0
if-eqz v0, :cond_32
const/4 v0, 0x1
:goto_31
return v0
:cond_32
const/4 v0, 0x0
goto :goto_31
.end method
.method public a(Lcom/c/a/bv;)Z
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_29
move v0, v1
:goto_b
iget-object v3, p1, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z
move-result v3
if-nez v3, :cond_2b
move v3, v1
:goto_14
if-eq v0, v3, :cond_18
if-nez v0, :cond_2d
:cond_18
iget-object v0, p1, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {p0, v0}, Lcom/c/a/bv;->a(Ljava/util/List;)Z
move-result v0
if-eqz v0, :cond_2d
iget-object v0, p1, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {p0, v0}, Lcom/c/a/bv;->b(Ljava/util/List;)Z
move-result v0
if-eqz v0, :cond_2d
:goto_28
return v1
:cond_29
move v0, v2
goto :goto_b
:cond_2b
move v3, v2
goto :goto_14
:cond_2d
move v1, v2
goto :goto_28
.end method
.method public a(Ljava/util/List;)Z
.registers 4
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
sget-object v1, Lcom/c/bi;->a:Ljava/util/Comparator;
invoke-static {v0, p1, v1}, Lcom/c/br;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Comparator;)Z
move-result v0
return v0
.end method
.method public final b()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
return-object v0
.end method
.method public b(Lcom/c/a/bv;)V
.registers 7
const/4 v4, 0x2
sget-boolean v1, Lcom/c/a/d;->h_:Z
iget-object v0, p1, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1c
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/bu;
iget-object v3, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz v1, :cond_9
:cond_1c
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt v0, v4, :cond_30
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
sget-object v2, Lcom/c/bi;->a:Ljava/util/Comparator;
invoke-static {v0, v2}, Lcom/c/br;->c(Ljava/lang/Iterable;Ljava/util/Comparator;)V
:cond_30
iget-object v0, p1, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_3f
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
if-eqz v1, :cond_6c
:cond_3f
iget-object v0, p1, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_45
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_58
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/ak;
iget-object v3, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz v1, :cond_45
:cond_58
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt v0, v4, :cond_6c
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
sget-object v2, Lcom/c/ak;->a:Ljava/util/Comparator;
invoke-static {v0, v2}, Lcom/c/br;->c(Ljava/lang/Iterable;Ljava/util/Comparator;)V
:cond_6c
iget-object v0, p1, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
:cond_72
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_85
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/cg;
iget-object v3, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz v1, :cond_72
:cond_85
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lt v0, v4, :cond_9b
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
sget-object v1, Lcom/c/ap;->f:Ljava/util/Comparator;
invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
sget-object v1, Lcom/c/ap;->f:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->c(Ljava/lang/Iterable;Ljava/util/Comparator;)V
:cond_9b
sget-boolean v0, Lcom/c/a/bv;->a:Z
if-nez v0, :cond_af
iget-object v0, p1, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
sget-object v1, Lcom/c/bi;->a:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
move-result v0
if-nez v0, :cond_af
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_af
sget-boolean v0, Lcom/c/a/bv;->a:Z
if-nez v0, :cond_c3
iget-object v0, p1, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
sget-object v1, Lcom/c/q;->a:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->a(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
move-result v0
if-nez v0, :cond_c3
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_c3
sget-boolean v0, Lcom/c/a/bv;->a:Z
if-nez v0, :cond_d7
iget-object v0, p1, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
sget-object v1, Lcom/c/bi;->a:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
move-result v0
if-nez v0, :cond_d7
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_d7
sget-boolean v0, Lcom/c/a/bv;->a:Z
if-nez v0, :cond_eb
iget-object v0, p1, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
sget-object v1, Lcom/c/q;->a:Ljava/util/Comparator;
invoke-static {v0, v1}, Lcom/c/br;->b(Ljava/lang/Iterable;Ljava/util/Comparator;)Z
move-result v0
if-nez v0, :cond_eb
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_eb
return-void
.end method
.method public b(Ljava/util/List;)Z
.registers 4
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
sget-object v1, Lcom/c/ak;->a:Ljava/util/Comparator;
invoke-static {v0, p1, v1}, Lcom/c/br;->a(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Comparator;)Z
move-result v0
return v0
.end method
.method public final c()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
return-object v0
.end method
.method public synthetic clone()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/c/a/bv;->i()Lcom/c/a/bv;
move-result-object v0
return-object v0
.end method
.method public final d()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
return-object v0
.end method
.method public e()Z
.registers 2
invoke-virtual {p0}, Lcom/c/a/bv;->g()Z
move-result v0
if-nez v0, :cond_10
iget-object v0, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x0
if-nez p1, :cond_5
move v0, v1
:goto_4
return v0
:try_start_5
:cond_5
check-cast p1, Lcom/c/a/bv;
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v2, p1, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-ne v0, v2, :cond_23
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v2, p1, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
if-eq v0, v2, :cond_25
:cond_23
move v0, v1
goto :goto_4
:cond_25
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
iget-object v0, p1, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_31
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_53
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/bu;
invoke-virtual {v0}, Lcom/c/bu;->b()Lcom/c/bq;
move-result-object v4
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/bu;
invoke-virtual {v0}, Lcom/c/bu;->b()Lcom/c/bq;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/c/bq;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_31
move v0, v1
goto :goto_4
:cond_53
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v2
iget-object v0, p1, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_5f
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_81
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/ak;
invoke-virtual {v0}, Lcom/c/ak;->a()Lcom/c/l;
move-result-object v4
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/ak;
invoke-virtual {v0}, Lcom/c/ak;->a()Lcom/c/l;
move-result-object v0
invoke-virtual {v4, v0}, Lcom/c/l;->equals(Ljava/lang/Object;)Z
:try_end_7c
.catch Ljava/lang/ClassCastException; {:try_start_5 .. :try_end_7c} :catch_83
move-result v0
if-nez v0, :cond_5f
move v0, v1
goto :goto_4
:cond_81
const/4 v0, 0x1
goto :goto_4
:catch_83
move-exception v0
move v0, v1
goto/16 :goto_4
.end method
.method public f()I
.registers 3
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/2addr v0, v1
iget-object v1, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public g()Z
.registers 2
iget-object v0, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public h()Lcom/c/a/bv;
.registers 5
invoke-virtual {p0}, Lcom/c/a/bv;->i()Lcom/c/a/bv;
move-result-object v0
iget-object v1, v0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
const-wide/16 v2, 0x1388
invoke-static {v1, v2, v3}, Lcom/c/a/bv;->a(Ljava/util/Collection;J)V
iget-object v1, v0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
const-wide/16 v2, 0x4e20
invoke-static {v1, v2, v3}, Lcom/c/a/bv;->a(Ljava/util/Collection;J)V
invoke-direct {v0}, Lcom/c/a/bv;->j()V
return-object v0
.end method
.method public hashCode()I
.registers 3
const/4 v0, 0x0
iget-object v1, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_1a
iget-object v1, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/bu;
invoke-virtual {v0}, Lcom/c/bu;->b()Lcom/c/bq;
move-result-object v0
invoke-virtual {v0}, Lcom/c/bq;->hashCode()I
move-result v0
:goto_19
:cond_19
return v0
:cond_1a
iget-object v1, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_19
iget-object v1, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/ak;
invoke-virtual {v0}, Lcom/c/ak;->a()Lcom/c/l;
move-result-object v0
invoke-virtual {v0}, Lcom/c/l;->hashCode()I
move-result v0
goto :goto_19
.end method
.method public i()Lcom/c/a/bv;
.registers 4
:try_start_0
invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/bv;
new-instance v1, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v1, v0, Lcom/c/a/bv;->b:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v1, v0, Lcom/c/a/bv;->c:Ljava/util/ArrayList;
new-instance v1, Ljava/util/ArrayList;
iget-object v2, p0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iput-object v1, v0, Lcom/c/a/bv;->d:Ljava/util/ArrayList;
:try_end_21
.catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_21} :catch_22
return-object v0
:catch_22
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method