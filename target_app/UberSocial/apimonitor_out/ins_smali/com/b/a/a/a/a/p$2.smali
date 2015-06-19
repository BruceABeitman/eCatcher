.class  Lcom/b/a/a/a/a/p$2;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/p;
.method constructor <init>(Lcom/b/a/a/a/a/p;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/p$2;->a:Lcom/b/a/a/a/a/p;
invoke-direct {p0}, Lcom/b/a/a/a/a/g;-><init>()V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 8
invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
add-int v1, p1, p2
add-int/2addr v1, p3
div-int/lit8 v1, v1, 0x3
iget-object v2, p0, Lcom/b/a/a/a/a/p$2;->a:Lcom/b/a/a/a/a/p;
iget-object v2, v2, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-virtual {v2, v1}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v2
iput v2, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v2, p0, Lcom/b/a/a/a/a/p$2;->a:Lcom/b/a/a/a/a/p;
iget-object v2, v2, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-virtual {v2, v1}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v2
iput v2, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v2, p0, Lcom/b/a/a/a/a/p$2;->a:Lcom/b/a/a/a/a/p;
iget-object v2, v2, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
invoke-virtual {v2, v1}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p4, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method