.class public abstract Lcom/bbm/d/b/o;
.super Lcom/bbm/d/b/f;
.source "SortedList.java"
.field  a:Lcom/bbm/j/r;
.method public constructor <init>(Lcom/bbm/j/r;)V
.registers 2
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
iput-object p1, p0, Lcom/bbm/d/b/o;->a:Lcom/bbm/j/r;
return-void
.end method
.method public abstract a(Ljava/lang/Object;Ljava/lang/Object;)I
.end method
.method protected final a()Ljava/util/List;
.registers 5
iget-object v0, p0, Lcom/bbm/d/b/o;->a:Lcom/bbm/j/r;
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/List;
new-instance v2, Ljava/util/ArrayList;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V
const/4 v1, 0x0
:goto_12
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
if-ge v1, v3, :cond_22
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v1, 0x1
goto :goto_12
:cond_22
new-instance v0, Lcom/bbm/d/b/p;
invoke-direct {v0, p0}, Lcom/bbm/d/b/p;-><init>(Lcom/bbm/d/b/o;)V
invoke-static {v2, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
return-object v2
.end method