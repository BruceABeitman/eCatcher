.class final Lcom/c/bv;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/Comparable;
invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
move-result v0
return v0
.end method