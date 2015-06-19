.class  Lcom/b/a/a/a/a/e$11;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/e;
.method constructor <init>(Lcom/b/a/a/a/a/e;F)V
.registers 3
iput-object p1, p0, Lcom/b/a/a/a/a/e$11;->a:Lcom/b/a/a/a/a/e;
invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(F)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 14
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
add-int v1, p2, p3
add-int/2addr v1, p4
div-int/lit8 v1, v1, 0x3
iget-object v2, p0, Lcom/b/a/a/a/a/e$11;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v2, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v3, v1
iget-wide v5, p0, Lcom/b/a/a/a/a/e$11;->b:D
sub-int v7, p2, v1
int-to-double v7, v7
mul-double/2addr v5, v7
add-double/2addr v3, v5
invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v2
iput v2, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v2, p0, Lcom/b/a/a/a/a/e$11;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v2, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v3, v1
iget-wide v5, p0, Lcom/b/a/a/a/a/e$11;->b:D
sub-int v7, p3, v1
int-to-double v7, v7
mul-double/2addr v5, v7
add-double/2addr v3, v5
invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v2
iput v2, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v2, p0, Lcom/b/a/a/a/a/e$11;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v2, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v3, v1
iget-wide v5, p0, Lcom/b/a/a/a/a/e$11;->b:D
sub-int v1, p4, v1
int-to-double v7, v1
mul-double/2addr v5, v7
add-double/2addr v3, v5
invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method