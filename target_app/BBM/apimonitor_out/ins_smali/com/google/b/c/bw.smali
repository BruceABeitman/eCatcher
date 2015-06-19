.class final Lcom/google/b/c/bw;
.super Lcom/google/b/c/bv;
.source "ReverseNaturalOrdering.java"
.implements Ljava/io/Serializable;
.field static final a:Lcom/google/b/c/bw;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/b/c/bw;
invoke-direct {v0}, Lcom/google/b/c/bw;-><init>()V
sput-object v0, Lcom/google/b/c/bw;->a:Lcom/google/b/c/bw;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/b/c/bv;-><init>()V
return-void
.end method
.method public final a()Lcom/google/b/c/bv;
.registers 2
sget-object v0, Lcom/google/b/c/bu;->a:Lcom/google/b/c/bu;
return-object v0
.end method
.method public final synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Ljava/lang/Comparable;
check-cast p2, Ljava/lang/Comparable;
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
if-ne p1, p2, :cond_b
const/4 v0, 0x0
:goto_a
return v0
:cond_b
invoke-interface {p2, p1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I
move-result v0
goto :goto_a
.end method
.method public final toString()Ljava/lang/String;
.registers 2
const-string v0, "Ordering.natural().reverse()"
return-object v0
.end method