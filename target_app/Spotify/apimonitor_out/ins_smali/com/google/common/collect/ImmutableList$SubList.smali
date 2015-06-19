.class  Lcom/google/common/collect/ImmutableList$SubList;
.super Lcom/google/common/collect/ImmutableList;
.source "SourceFile"
.field final transient a:I
.field final transient c:I
.field final synthetic this$0:Lcom/google/common/collect/ImmutableList;
.method constructor <init>(Lcom/google/common/collect/ImmutableList;II)V
.registers 4
iput-object p1, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;
invoke-direct {p0}, Lcom/google/common/collect/ImmutableList;-><init>()V
iput p2, p0, Lcom/google/common/collect/ImmutableList$SubList;->a:I
iput p3, p0, Lcom/google/common/collect/ImmutableList$SubList;->c:I
return-void
.end method
.method public final a(II)Lcom/google/common/collect/ImmutableList;
.registers 6
iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->c:I
invoke-static {p1, p2, v0}, Lcom/google/common/base/i;->a(III)V
iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;
iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->a:I
add-int/2addr v1, p1
iget v2, p0, Lcom/google/common/collect/ImmutableList$SubList;->a:I
add-int/2addr v2, p2
invoke-virtual {v0, v1, v2}, Lcom/google/common/collect/ImmutableList;->a(II)Lcom/google/common/collect/ImmutableList;
move-result-object v0
return-object v0
.end method
.method final a()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public get(I)Ljava/lang/Object;
.registers 4
iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->c:I
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(II)I
iget-object v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->this$0:Lcom/google/common/collect/ImmutableList;
iget v1, p0, Lcom/google/common/collect/ImmutableList$SubList;->a:I
add-int/2addr v1, p1
invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public synthetic iterator()Ljava/util/Iterator;
.registers 2
invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->b()Lcom/google/common/collect/aq;
move-result-object v0
return-object v0
.end method
.method public synthetic listIterator()Ljava/util/ListIterator;
.registers 2
invoke-super {p0}, Lcom/google/common/collect/ImmutableList;->c()Lcom/google/common/collect/ar;
move-result-object v0
return-object v0
.end method
.method public synthetic listIterator(I)Ljava/util/ListIterator;
.registers 3
invoke-super {p0, p1}, Lcom/google/common/collect/ImmutableList;->a(I)Lcom/google/common/collect/ar;
move-result-object v0
return-object v0
.end method
.method public size()I
.registers 2
iget v0, p0, Lcom/google/common/collect/ImmutableList$SubList;->c:I
return v0
.end method
.method public synthetic subList(II)Ljava/util/List;
.registers 4
invoke-virtual {p0, p1, p2}, Lcom/google/common/collect/ImmutableList$SubList;->a(II)Lcom/google/common/collect/ImmutableList;
move-result-object v0
return-object v0
.end method