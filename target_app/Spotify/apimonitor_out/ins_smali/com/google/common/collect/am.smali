.class public abstract Lcom/google/common/collect/am;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.method protected constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/util/Comparator;)Lcom/google/common/collect/am;
.registers 2
instance-of v0, p0, Lcom/google/common/collect/am;
if-eqz v0, :cond_7
check-cast p0, Lcom/google/common/collect/am;
:goto_6
return-object p0
:cond_7
new-instance v0, Lcom/google/common/collect/ComparatorOrdering;
invoke-direct {v0, p0}, Lcom/google/common/collect/ComparatorOrdering;-><init>(Ljava/util/Comparator;)V
move-object p0, v0
goto :goto_6
.end method
.method public static b()Lcom/google/common/collect/am;
.registers 1
sget-object v0, Lcom/google/common/collect/NaturalOrdering;->a:Lcom/google/common/collect/NaturalOrdering;
return-object v0
.end method
.method public a()Lcom/google/common/collect/am;
.registers 2
new-instance v0, Lcom/google/common/collect/ReverseOrdering;
invoke-direct {v0, p0}, Lcom/google/common/collect/ReverseOrdering;-><init>(Lcom/google/common/collect/am;)V
return-object v0
.end method
.method public final a(Lcom/google/common/base/b;)Lcom/google/common/collect/am;
.registers 3
new-instance v0, Lcom/google/common/collect/ByFunctionOrdering;
invoke-direct {v0, p1, p0}, Lcom/google/common/collect/ByFunctionOrdering;-><init>(Lcom/google/common/base/b;Lcom/google/common/collect/am;)V
return-object v0
.end method
.method public a(Ljava/lang/Iterable;)Ljava/util/List;
.registers 3
instance-of v0, p1, Ljava/util/Collection;
if-eqz v0, :cond_18
check-cast p1, Ljava/util/Collection;
:goto_6
invoke-interface {p1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
invoke-static {v0, p0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V
invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v0
invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/lang/Iterable;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
:cond_18
invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;
move-result-object v0
invoke-static {v0}, Lcom/google/common/collect/Lists;->a(Ljava/util/Iterator;)Ljava/util/ArrayList;
move-result-object p1
goto :goto_6
.end method
.method public abstract compare(Ljava/lang/Object;Ljava/lang/Object;)I
.end method