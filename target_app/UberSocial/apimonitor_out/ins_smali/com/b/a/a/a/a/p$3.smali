.class  Lcom/b/a/a/a/a/p$3;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/p;
.method constructor <init>(Lcom/b/a/a/a/a/p;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/b/a/a/a/a/p$3;->a:Lcom/b/a/a/a/a/p;
invoke-direct {p0, p2, p3}, Lcom/b/a/a/a/a/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 14
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
const/high16 v5, 0x437f
invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;
move-result-object v1
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->a:Lcom/b/a/a/a/a/p;
iget-object v2, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-float v3, p1
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->e:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v0, v0, v6
sub-float/2addr v3, v0
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->f:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v4, v0, v6
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->e:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v0, v0, v6
sub-float v0, v4, v0
div-float v0, v5, v0
mul-float/2addr v0, v3
float-to-double v3, v0
invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v0
iput v0, v1, Lcom/b/a/a/a/a/m;->a:I
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->a:Lcom/b/a/a/a/a/p;
iget-object v2, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-float v3, p2
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->e:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v0, v0, v7
sub-float/2addr v3, v0
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->f:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v4, v0, v7
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->e:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v0, v0, v7
sub-float v0, v4, v0
div-float v0, v5, v0
mul-float/2addr v0, v3
float-to-double v3, v0
invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v0
iput v0, v1, Lcom/b/a/a/a/a/m;->b:I
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->a:Lcom/b/a/a/a/a/p;
iget-object v2, v0, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;
int-to-float v3, p3
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->e:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v0, v0, v8
sub-float/2addr v3, v0
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->f:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v4, v0, v8
iget-object v0, p0, Lcom/b/a/a/a/a/p$3;->e:Ljava/lang/Object;
check-cast v0, [F
check-cast v0, [F
aget v0, v0, v8
sub-float v0, v4, v0
div-float v0, v5, v0
mul-float/2addr v0, v3
float-to-double v3, v0
invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v0
iput v0, v1, Lcom/b/a/a/a/a/m;->c:I
iput p4, v1, Lcom/b/a/a/a/a/m;->d:I
return-object v1
.end method