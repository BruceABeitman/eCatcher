.class  Lcom/b/a/a/a/a/d$5;
.super Lcom/b/a/a/a/a/a;
.source "SourceFile"
.field final synthetic g:Lcom/b/a/a/a/a/d;
.method constructor <init>(Lcom/b/a/a/a/a/d;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/d$5;->g:Lcom/b/a/a/a/a/d;
invoke-direct {p0}, Lcom/b/a/a/a/a/a;-><init>()V
return-void
.end method
.method public a(Lcom/b/a/a/a/a/m;Lcom/b/a/a/a/a/m;)Lcom/b/a/a/a/a/m;
.registers 7
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/d$5;->g:Lcom/b/a/a/a/a/d;
iget-object v1, v1, Lcom/b/a/a/a/a/d;->a:Lcom/b/a/a/a/a/c;
iget v2, p1, Lcom/b/a/a/a/a/m;->a:I
iget v3, p2, Lcom/b/a/a/a/a/m;->a:I
add-int/2addr v2, v3
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/d$5;->g:Lcom/b/a/a/a/a/d;
iget-object v1, v1, Lcom/b/a/a/a/a/d;->a:Lcom/b/a/a/a/a/c;
iget v2, p1, Lcom/b/a/a/a/a/m;->b:I
iget v3, p2, Lcom/b/a/a/a/a/m;->b:I
add-int/2addr v2, v3
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/d$5;->g:Lcom/b/a/a/a/a/d;
iget-object v1, v1, Lcom/b/a/a/a/a/d;->a:Lcom/b/a/a/a/a/c;
iget v2, p1, Lcom/b/a/a/a/a/m;->c:I
iget v3, p2, Lcom/b/a/a/a/a/m;->c:I
add-int/2addr v2, v3
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iget v1, p2, Lcom/b/a/a/a/a/m;->d:I
iput v1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method