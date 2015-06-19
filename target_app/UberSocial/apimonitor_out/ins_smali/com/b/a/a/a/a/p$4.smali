.class  Lcom/b/a/a/a/a/p$4;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/p;
.method constructor <init>(Lcom/b/a/a/a/a/p;III)V
.registers 5
iput-object p1, p0, Lcom/b/a/a/a/a/p$4;->a:Lcom/b/a/a/a/a/p;
invoke-direct {p0, p2, p3, p4}, Lcom/b/a/a/a/a/g;-><init>(III)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 9
invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/p$4;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
iget-wide v2, p0, Lcom/b/a/a/a/a/p$4;->b:D
double-to-int v2, v2
and-int/2addr v2, p1
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/p$4;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
iget-wide v2, p0, Lcom/b/a/a/a/a/p$4;->c:D
double-to-int v2, v2
and-int/2addr v2, p2
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/p$4;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
iget-wide v2, p0, Lcom/b/a/a/a/a/p$4;->d:D
double-to-int v2, v2
and-int/2addr v2, p3
invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/n;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p4, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method