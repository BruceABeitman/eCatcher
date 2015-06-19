.class final Lcom/google/common/collect/EmptyImmutableList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"
.field static final a:Lcom/google/common/collect/EmptyImmutableList;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/common/collect/EmptyImmutableList;
invoke-direct {v0}, Lcom/google/common/collect/EmptyImmutableList;-><init>()V
sput-object v0, Lcom/google/common/collect/EmptyImmutableList;->a:Lcom/google/common/collect/EmptyImmutableList;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V
return-void
.end method
.method public final a(II)Lcom/google/common/collect/ImmutableList;
.registers 4
const/4 v0, 0x0
invoke-static {p1, p2, v0}, Lcom/google/common/base/i;->a(III)V
return-object p0
.end method
.method public final a(I)Lcom/google/common/collect/ar;
.registers 3
const/4 v0, 0x0
invoke-static {p1, v0}, Lcom/google/common/base/i;->b(II)I
sget-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;
return-object v0
.end method
.method final a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final b()Lcom/google/common/collect/aq;
.registers 2
sget-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;
return-object v0
.end method
.method public final c()Lcom/google/common/collect/ar;
.registers 2
sget-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;
return-object v0
.end method
.method public final contains(Ljava/lang/Object;)Z
.registers 3
const/4 v0, 0x0
return v0
.end method
.method public final containsAll(Ljava/util/Collection;)Z
.registers 3
invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z
move-result v0
return v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljava/util/List;
if-eqz v0, :cond_b
check-cast p1, Ljava/util/List;
invoke-interface {p1}, Ljava/util/List;->isEmpty()Z
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public final get(I)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(II)I
new-instance v0, Ljava/lang/AssertionError;
const-string v1, "unreachable"
invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
.end method
.method public final hashCode()I
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final indexOf(Ljava/lang/Object;)I
.registers 3
const/4 v0, -0x1
return v0
.end method
.method public final isEmpty()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final bridge synthetic iterator()Ljava/util/Iterator;
.registers 2
sget-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;
return-object v0
.end method
.method public final lastIndexOf(Ljava/lang/Object;)I
.registers 3
const/4 v0, -0x1
return v0
.end method
.method public final bridge synthetic listIterator()Ljava/util/ListIterator;
.registers 2
sget-object v0, Lcom/google/common/collect/i;->a:Lcom/google/common/collect/ar;
return-object v0
.end method
.method public final synthetic listIterator(I)Ljava/util/ListIterator;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/common/collect/EmptyImmutableList;->a(I)Lcom/google/common/collect/ar;
move-result-object v0
return-object v0
.end method
.method public final size()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final synthetic subList(II)Ljava/util/List;
.registers 4
const/4 v0, 0x0
invoke-static {p1, p2, v0}, Lcom/google/common/base/i;->a(III)V
return-object p0
.end method
.method public final toArray()[Ljava/lang/Object;
.registers 2
sget-object v0, Lcom/google/common/collect/al;->a:[Ljava/lang/Object;
return-object v0
.end method
.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
.registers 4
array-length v0, p1
if-lez v0, :cond_7
const/4 v0, 0x0
const/4 v1, 0x0
aput-object v1, p1, v0
:cond_7
return-object p1
.end method
.method public final toString()Ljava/lang/String;
.registers 2
const-string v0, "[]"
return-object v0
.end method