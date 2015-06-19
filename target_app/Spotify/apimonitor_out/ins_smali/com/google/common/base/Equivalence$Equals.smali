.class final Lcom/google/common/base/Equivalence$Equals;
.super Lcom/google/common/base/Equivalence;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field static final a:Lcom/google/common/base/Equivalence$Equals;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/common/base/Equivalence$Equals;
invoke-direct {v0}, Lcom/google/common/base/Equivalence$Equals;-><init>()V
sput-object v0, Lcom/google/common/base/Equivalence$Equals;->a:Lcom/google/common/base/Equivalence$Equals;
return-void
.end method
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/common/base/Equivalence;-><init>()V
return-void
.end method
.method public final b(Ljava/lang/Object;)I
.registers 3
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v0
return v0
.end method
.method protected final b(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 4
invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method