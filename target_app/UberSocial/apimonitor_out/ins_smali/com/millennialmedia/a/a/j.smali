.class public final Lcom/millennialmedia/a/a/j;
.super Lcom/millennialmedia/a/a/m;
.source "SourceFile"
.implements Ljava/lang/Iterable;
.field private final a:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/a/a/m;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
return-void
.end method
.method  a()Lcom/millennialmedia/a/a/j;
.registers 4
new-instance v1, Lcom/millennialmedia/a/a/j;
invoke-direct {v1}, Lcom/millennialmedia/a/a/j;-><init>()V
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_b
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_1f
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->o()Lcom/millennialmedia/a/a/m;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/millennialmedia/a/a/j;->a(Lcom/millennialmedia/a/a/m;)V
goto :goto_b
:cond_1f
return-object v1
.end method
.method public a(I)Lcom/millennialmedia/a/a/m;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
return-object v0
.end method
.method public a(Lcom/millennialmedia/a/a/j;)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
iget-object v1, p1, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/m;)V
.registers 3
if-nez p1, :cond_4
sget-object p1, Lcom/millennialmedia/a/a/o;->a:Lcom/millennialmedia/a/a/o;
:cond_4
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public b()I
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public c()Ljava/lang/Number;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->c()Ljava/lang/Number;
move-result-object v0
return-object v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public d()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->d()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public e()D
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->e()D
move-result-wide v0
return-wide v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
if-eq p1, p0, :cond_12
instance-of v0, p1, Lcom/millennialmedia/a/a/j;
if-eqz v0, :cond_14
check-cast p1, Lcom/millennialmedia/a/a/j;
iget-object v0, p1, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
iget-object v1, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_14
:cond_12
const/4 v0, 0x1
:goto_13
return v0
:cond_14
const/4 v0, 0x0
goto :goto_13
.end method
.method public f()Ljava/math/BigDecimal;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->f()Ljava/math/BigDecimal;
move-result-object v0
return-object v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public g()Ljava/math/BigInteger;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->g()Ljava/math/BigInteger;
move-result-object v0
return-object v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public h()F
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->h()F
move-result v0
return v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method
.method public i()J
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->i()J
move-result-wide v0
return-wide v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v0
return-object v0
.end method
.method public j()I
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->j()I
move-result v0
return v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public k()B
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->k()B
move-result v0
return v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public l()C
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->l()C
move-result v0
return v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public m()S
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->m()S
move-result v0
return v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method public n()Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_17
iget-object v0, p0, Lcom/millennialmedia/a/a/j;->a:Ljava/util/List;
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/a/a/m;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/m;->n()Z
move-result v0
return v0
:cond_17
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
.end method
.method synthetic o()Lcom/millennialmedia/a/a/m;
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/a/a/j;->a()Lcom/millennialmedia/a/a/j;
move-result-object v0
return-object v0
.end method