.class  Lcom/b/a/a/a/a/e$8;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/e;
.method constructor <init>(Lcom/b/a/a/a/a/e;I)V
.registers 3
iput-object p1, p0, Lcom/b/a/a/a/a/e$8;->a:Lcom/b/a/a/a/a/e;
invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(I)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 11
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/e$8;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v2, p2
iget-wide v4, p0, Lcom/b/a/a/a/a/e$8;->b:D
add-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/e$8;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v2, p3
iget-wide v4, p0, Lcom/b/a/a/a/a/e$8;->b:D
add-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/e$8;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v2, p4
iget-wide v4, p0, Lcom/b/a/a/a/a/e$8;->b:D
add-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method