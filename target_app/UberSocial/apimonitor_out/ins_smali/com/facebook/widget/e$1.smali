.class  Lcom/facebook/widget/e$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Comparator;
.field final synthetic a:Ljava/text/Collator;
.field final synthetic b:Lcom/facebook/widget/e;
.method constructor <init>(Lcom/facebook/widget/e;Ljava/text/Collator;)V
.registers 3
iput-object p1, p0, Lcom/facebook/widget/e$1;->b:Lcom/facebook/widget/e;
iput-object p2, p0, Lcom/facebook/widget/e$1;->a:Ljava/text/Collator;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Lcom/facebook/c/c;Lcom/facebook/c/c;)I
.registers 5
iget-object v0, p0, Lcom/facebook/widget/e$1;->b:Lcom/facebook/widget/e;
invoke-static {v0}, Lcom/facebook/widget/e;->a(Lcom/facebook/widget/e;)Ljava/util/List;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/e$1;->a:Ljava/text/Collator;
invoke-static {p1, p2, v0, v1}, Lcom/facebook/widget/e;->a(Lcom/facebook/c/c;Lcom/facebook/c/c;Ljava/util/Collection;Ljava/text/Collator;)I
move-result v0
return v0
.end method
.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
.registers 4
check-cast p1, Lcom/facebook/c/c;
check-cast p2, Lcom/facebook/c/c;
invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/e$1;->a(Lcom/facebook/c/c;Lcom/facebook/c/c;)I
move-result v0
return v0
.end method