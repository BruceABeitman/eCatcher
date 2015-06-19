.class  Lcom/b/a/a/a/a/p$6;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/p;
.method constructor <init>(Lcom/b/a/a/a/a/p;F)V
.registers 3
iput-object p1, p0, Lcom/b/a/a/a/a/p$6;->a:Lcom/b/a/a/a/a/p;
invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(F)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 14
const/high16 v8, 0x437f
invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/p$6;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-double v2, p1
iget-object v4, p0, Lcom/b/a/a/a/a/p$6;->a:Lcom/b/a/a/a/a/p;
int-to-float v5, p1
div-float/2addr v5, v8
iget-wide v6, p0, Lcom/b/a/a/a/a/p$6;->b:D
double-to-float v6, v6
invoke-static {v4, v5, v6}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/p;FF)D
move-result-wide v4
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/p$6;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-double v2, p2
iget-object v4, p0, Lcom/b/a/a/a/a/p$6;->a:Lcom/b/a/a/a/a/p;
int-to-float v5, p2
div-float/2addr v5, v8
iget-wide v6, p0, Lcom/b/a/a/a/a/p$6;->b:D
double-to-float v6, v6
invoke-static {v4, v5, v6}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/p;FF)D
move-result-wide v4
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/p$6;->a:Lcom/b/a/a/a/a/p;
iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-double v2, p3
iget-object v4, p0, Lcom/b/a/a/a/a/p$6;->a:Lcom/b/a/a/a/a/p;
int-to-float v5, p3
div-float/2addr v5, v8
iget-wide v6, p0, Lcom/b/a/a/a/a/p$6;->b:D
double-to-float v6, v6
invoke-static {v4, v5, v6}, Lcom/b/a/a/a/a/p;->a(Lcom/b/a/a/a/a/p;FF)D
move-result-wide v4
mul-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p4, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method