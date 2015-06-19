.class final Lcom/google/common/collect/i$3;
.super Lcom/google/common/collect/a;
.source "SourceFile"
.field final synthetic a:[Ljava/lang/Object;
.field final synthetic b:I
.method constructor <init>(II[Ljava/lang/Object;I)V
.registers 5
iput-object p3, p0, Lcom/google/common/collect/i$3;->a:[Ljava/lang/Object;
iput p4, p0, Lcom/google/common/collect/i$3;->b:I
invoke-direct {p0, p1, p2}, Lcom/google/common/collect/a;-><init>(II)V
return-void
.end method
.method protected final a(I)Ljava/lang/Object;
.registers 4
iget-object v0, p0, Lcom/google/common/collect/i$3;->a:[Ljava/lang/Object;
iget v1, p0, Lcom/google/common/collect/i$3;->b:I
add-int/2addr v1, p1
aget-object v0, v0, v1
return-object v0
.end method