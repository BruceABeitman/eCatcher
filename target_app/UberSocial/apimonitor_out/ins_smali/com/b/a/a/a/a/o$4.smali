.class  Lcom/b/a/a/a/a/o$4;
.super Lcom/b/a/a/a/a/a;
.source "SourceFile"
.field final synthetic g:Lcom/b/a/a/a/a/o;
.method constructor <init>(Lcom/b/a/a/a/a/o;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/o$4;->g:Lcom/b/a/a/a/a/o;
invoke-direct {p0}, Lcom/b/a/a/a/a/a;-><init>()V
return-void
.end method
.method public a(Lcom/b/a/a/a/a/m;Lcom/b/a/a/a/a/m;)Lcom/b/a/a/a/a/m;
.registers 7
invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/o$4;->g:Lcom/b/a/a/a/a/o;
iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;
iget v2, p1, Lcom/b/a/a/a/a/m;->a:I
iget v3, p2, Lcom/b/a/a/a/a/m;->a:I
sub-int/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v2
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/o$4;->g:Lcom/b/a/a/a/a/o;
iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;
iget v2, p1, Lcom/b/a/a/a/a/m;->b:I
iget v3, p2, Lcom/b/a/a/a/a/m;->b:I
sub-int/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v2
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/o$4;->g:Lcom/b/a/a/a/a/o;
iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;
iget v2, p1, Lcom/b/a/a/a/a/m;->c:I
iget v3, p2, Lcom/b/a/a/a/a/m;->c:I
sub-int/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->abs(I)I
move-result v2
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iget v1, p2, Lcom/b/a/a/a/a/m;->d:I
iput v1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method