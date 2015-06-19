.class final Lcom/google/gson/internal/LinkedTreeMap$1;
.super Ljava/lang/Object;
.source "LinkedTreeMap.java"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
.registers 4
invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/Comparable;
check-cast p2, Ljava/lang/Comparable;
invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/LinkedTreeMap$1;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
move-result v0
return v0
.end method