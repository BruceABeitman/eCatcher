.class abstract Lcom/c/a/dy;
.super Ljava/lang/Object;
.implements Ljava/util/Comparator;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method constructor <init>(Lcom/c/a/du;)V
.registers 2
invoke-direct {p0}, Lcom/c/a/dy;-><init>()V
return-void
.end method
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Comparable;
.end method
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 5
invoke-virtual {p0, p1}, Lcom/c/a/dy;->a(Ljava/lang/Object;)Ljava/lang/Comparable;
move-result-object v0
invoke-virtual {p0, p2}, Lcom/c/a/dy;->a(Ljava/lang/Object;)Ljava/lang/Comparable;
move-result-object v1
invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
move-result v0
return v0
.end method