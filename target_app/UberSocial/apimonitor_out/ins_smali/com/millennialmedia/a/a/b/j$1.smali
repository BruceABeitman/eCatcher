.class final Lcom/millennialmedia/a/a/b/j$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
.registers 4
invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/Comparable;
check-cast p2, Ljava/lang/Comparable;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/j$1;->a(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
move-result v0
return v0
.end method