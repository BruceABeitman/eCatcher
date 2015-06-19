.class  Lcom/b/a/a/a/a/p$1;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/p;
.method constructor <init>(Lcom/b/a/a/a/a/p;FFF)V
.registers 5
iput-object p1, p0, Lcom/b/a/a/a/a/p$1;->a:Lcom/b/a/a/a/a/p;
invoke-direct {p0, p2, p3, p4}, Lcom/b/a/a/a/a/g;-><init>(FFF)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 13
const-wide/high16 v6, 0x3ff0
invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/p$1;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-double v2, p1
iget-wide v4, p0, Lcom/b/a/a/a/a/p$1;->b:D
add-double/2addr v4, v6
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/p$1;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-double v2, p2
iget-wide v4, p0, Lcom/b/a/a/a/a/p$1;->c:D
add-double/2addr v4, v6
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/p$1;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-double v2, p3
iget-wide v4, p0, Lcom/b/a/a/a/a/p$1;->d:D
add-double/2addr v4, v6
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p4, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method