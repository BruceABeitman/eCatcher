.class  Lcom/b/a/a/a/a/e$13;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/e;
.method constructor <init>(Lcom/b/a/a/a/a/e;F)V
.registers 3
iput-object p1, p0, Lcom/b/a/a/a/a/e$13;->a:Lcom/b/a/a/a/a/e;
invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(F)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 11
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
const-wide v1, 0x406fe00000000000L
iget-wide v3, p0, Lcom/b/a/a/a/a/e$13;->b:D
div-double/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D
move-result-wide v1
iget-object v3, p0, Lcom/b/a/a/a/a/e$13;->a:Lcom/b/a/a/a/a/e;
iget-object v3, v3, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v4, p2
div-double/2addr v4, v1
invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D
move-result-wide v4
mul-double/2addr v4, v1
double-to-int v4, v4
invoke-virtual {v3, v4}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v3
iput v3, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v3, p0, Lcom/b/a/a/a/a/e$13;->a:Lcom/b/a/a/a/a/e;
iget-object v3, v3, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v4, p3
div-double/2addr v4, v1
invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D
move-result-wide v4
mul-double/2addr v4, v1
double-to-int v4, v4
invoke-virtual {v3, v4}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v3
iput v3, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v3, p0, Lcom/b/a/a/a/a/e$13;->a:Lcom/b/a/a/a/a/e;
iget-object v3, v3, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v4, p4
div-double/2addr v4, v1
invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D
move-result-wide v4
mul-double/2addr v1, v4
double-to-int v1, v1
invoke-virtual {v3, v1}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method