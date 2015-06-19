.class final Lcom/c/a/de;
.super Ljava/lang/Object;
.field static final synthetic a:Z
.field private final b:Lcom/c/a/cw;
.field private final c:Lcom/c/a/ap;
.field private final d:Lcom/c/a/bf;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/c/a/de;
invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z
move-result v0
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_9
sput-boolean v0, Lcom/c/a/de;->a:Z
return-void
:cond_c
const/4 v0, 0x0
goto :goto_9
.end method
.method constructor <init>(Lcom/c/a/j;Ljava/util/List;Lcom/c/a/bs;Lcom/c/a/bf;Lcom/c/a/bw;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p5, p4}, Lcom/c/a/cw;->a(Lcom/c/a/bw;Lcom/c/a/bf;)Lcom/c/a/cw;
move-result-object v0
iput-object v0, p0, Lcom/c/a/de;->b:Lcom/c/a/cw;
new-instance v0, Lcom/c/a/ap;
invoke-direct {v0, p1, p2, p3}, Lcom/c/a/ap;-><init>(Lcom/c/a/j;Ljava/util/List;Lcom/c/a/bs;)V
iput-object v0, p0, Lcom/c/a/de;->c:Lcom/c/a/ap;
iput-object p4, p0, Lcom/c/a/de;->d:Lcom/c/a/bf;
return-void
.end method
.method  a(Lcom/c/a/bv;Ljava/util/List;)Lcom/c/o;
.registers 12
const/4 v6, 0x0
invoke-static {}, Lcom/c/ba;->d()Lcom/c/ba;
move-result-object v5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v0, p0, Lcom/c/a/de;->c:Lcom/c/a/ap;
iget-object v1, p0, Lcom/c/a/de;->d:Lcom/c/a/bf;
invoke-virtual {v1, v5}, Lcom/c/a/bf;->d(Lcom/c/ba;)Z
move-result v1
invoke-virtual {v0, p1, v2, v1}, Lcom/c/a/ap;->a(Lcom/c/a/bv;Ljava/util/ArrayList;Z)V
invoke-virtual {p1}, Lcom/c/a/bv;->d()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-eqz v0, :cond_51
move-object v3, v6
:goto_24
iget-object v0, p0, Lcom/c/a/de;->b:Lcom/c/a/cw;
invoke-virtual {p1}, Lcom/c/a/bv;->b()Ljava/util/ArrayList;
move-result-object v1
move-object v4, p2
invoke-virtual/range {v0 .. v5}, Lcom/c/a/cw;->a(Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/c/a/cg;Ljava/util/List;Lcom/c/ba;)Lcom/c/o;
move-result-object v2
iget-object v0, v2, Lcom/c/o;->b:Ljava/lang/Object;
if-eqz v0, :cond_85
iget-object v0, v2, Lcom/c/o;->b:Ljava/lang/Object;
check-cast v0, Lcom/c/a/cg;
invoke-virtual {v0}, Lcom/c/a/cg;->v()Z
move-result v1
if-nez v1, :cond_6c
sget-boolean v1, Lcom/c/a/de;->a:Z
if-nez v1, :cond_5f
iget-object v1, v2, Lcom/c/o;->b:Ljava/lang/Object;
check-cast v1, Lcom/c/a/cg;
invoke-virtual {v1}, Lcom/c/a/cg;->n_()Lcom/c/ba;
move-result-object v1
if-nez v1, :cond_5f
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_51
invoke-virtual {p1}, Lcom/c/a/bv;->d()Ljava/util/ArrayList;
move-result-object v0
sget-object v1, Lcom/c/ap;->f:Ljava/util/Comparator;
invoke-static {v0, v1}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/c/a/cg;
move-object v3, v0
goto :goto_24
:cond_5f
invoke-virtual {v0}, Lcom/c/a/cg;->n_()Lcom/c/ba;
move-result-object v1
invoke-virtual {v5, v1}, Lcom/c/ba;->b(Lcom/c/ba;)J
move-result-wide v3
sub-long v3, v7, v3
invoke-virtual {v0, v3, v4}, Lcom/c/a/cg;->a(J)V
:cond_6c
invoke-virtual {v0}, Lcom/c/a/cg;->u()Z
move-result v1
if-eqz v1, :cond_85
invoke-virtual {v0}, Lcom/c/a/cg;->j()D
move-result-wide v3
const-wide v7, 0x40ac200000000000L
mul-double/2addr v3, v7
const-wide v7, 0x408f400000000000L
div-double/2addr v3, v7
invoke-virtual {v0, v3, v4}, Lcom/c/a/cg;->d(D)V
:cond_85
iget-object v0, v2, Lcom/c/o;->a:Ljava/lang/Object;
sget-object v1, Lcom/c/a/r;->c:Lcom/c/a/r;
if-ne v0, v1, :cond_9c
invoke-virtual {p1}, Lcom/c/a/bv;->c()Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_9c
sget-object v0, Lcom/c/a/r;->f:Lcom/c/a/r;
invoke-static {v0, v6}, Lcom/c/o;->a(Ljava/lang/Object;Ljava/lang/Object;)Lcom/c/o;
move-result-object v0
:goto_9b
return-object v0
:cond_9c
move-object v0, v2
goto :goto_9b
.end method
.method  a()V
.registers 2
iget-object v0, p0, Lcom/c/a/de;->c:Lcom/c/a/ap;
invoke-virtual {v0}, Lcom/c/a/ap;->a()V
return-void
.end method
.method  a(Lcom/c/a/bs;)V
.registers 3
iget-object v0, p0, Lcom/c/a/de;->c:Lcom/c/a/ap;
invoke-virtual {v0, p1}, Lcom/c/a/ap;->a(Lcom/c/a/bs;)V
return-void
.end method
.method  a(Lcom/c/a/cg;)V
.registers 3
iget-object v0, p0, Lcom/c/a/de;->b:Lcom/c/a/cw;
invoke-virtual {v0, p1}, Lcom/c/a/cw;->a(Lcom/c/a/cg;)V
return-void
.end method
.method  a(Lcom/c/a/j;)V
.registers 3
iget-object v0, p0, Lcom/c/a/de;->c:Lcom/c/a/ap;
invoke-virtual {v0, p1}, Lcom/c/a/ap;->a(Lcom/c/a/j;)V
return-void
.end method
.method  a(Ljava/util/List;)V
.registers 3
iget-object v0, p0, Lcom/c/a/de;->c:Lcom/c/a/ap;
invoke-virtual {v0, p1}, Lcom/c/a/ap;->a(Ljava/util/List;)V
return-void
.end method
.method  b()V
.registers 2
iget-object v0, p0, Lcom/c/a/de;->c:Lcom/c/a/ap;
invoke-virtual {v0}, Lcom/c/a/ap;->b()V
return-void
.end method
.method  c()V
.registers 2
iget-object v0, p0, Lcom/c/a/de;->c:Lcom/c/a/ap;
invoke-virtual {v0}, Lcom/c/a/ap;->c()V
return-void
.end method