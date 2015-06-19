.class  Lcom/b/a/a/a/a/e$2;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/e;
.method constructor <init>(Lcom/b/a/a/a/a/e;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/e$2;->a:Lcom/b/a/a/a/a/e;
invoke-direct {p0}, Lcom/b/a/a/a/a/g;-><init>()V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 8
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
add-int v1, p2, p3
add-int/2addr v1, p4
div-int/lit8 v1, v1, 0x3
iget-object v2, p0, Lcom/b/a/a/a/a/e$2;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v2, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
invoke-virtual {v2, v1}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v2
iput v2, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v2, p0, Lcom/b/a/a/a/a/e$2;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v2, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
invoke-virtual {v2, v1}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v2
iput v2, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v2, p0, Lcom/b/a/a/a/a/e$2;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v2, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
invoke-virtual {v2, v1}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method