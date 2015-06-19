.class  Lcom/b/a/a/a/a/p$10;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/p;
.method constructor <init>(Lcom/b/a/a/a/a/p;F)V
.registers 3
iput-object p1, p0, Lcom/b/a/a/a/a/p$10;->a:Lcom/b/a/a/a/a/p;
invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(F)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 11
invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iput p1, v0, Lcom/b/a/a/a/a/m;->a:I
iput p2, v0, Lcom/b/a/a/a/a/m;->b:I
iput p3, v0, Lcom/b/a/a/a/a/m;->c:I
iget-object v1, p0, Lcom/b/a/a/a/a/p$10;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
iget-wide v2, p0, Lcom/b/a/a/a/a/p$10;->b:D
int-to-double v4, p4
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method