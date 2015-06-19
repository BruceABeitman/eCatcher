.class  Lcom/b/a/a/a/a/e$9;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/e;
.method constructor <init>(Lcom/b/a/a/a/a/e;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/e$9;->a:Lcom/b/a/a/a/a/e;
invoke-direct {p0}, Lcom/b/a/a/a/a/g;-><init>()V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 7
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/e$9;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
invoke-virtual {v1, p2}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/e$9;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
invoke-virtual {v1, p3}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/e$9;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
invoke-virtual {v1, p4}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method