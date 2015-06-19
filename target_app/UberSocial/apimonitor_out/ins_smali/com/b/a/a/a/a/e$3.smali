.class  Lcom/b/a/a/a/a/e$3;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/e;
.method constructor <init>(Lcom/b/a/a/a/a/e;Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/b/a/a/a/a/e$3;->a:Lcom/b/a/a/a/a/e;
invoke-direct {p0, p2, p3}, Lcom/b/a/a/a/a/g;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 14
const/16 v8, 0xff
const/4 v7, 0x2
const/4 v6, 0x1
const/4 v5, 0x0
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v1
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v0, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->e:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v0, v0, v5
sub-int v3, p2, v0
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->f:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v4, v0, v5
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->e:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v0, v0, v5
sub-int v0, v4, v0
div-int v0, v8, v0
mul-int/2addr v0, v3
invoke-virtual {v2, v0}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v0
iput v0, v1, Lcom/b/a/a/a/a/m;->a:I
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v0, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->e:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v0, v0, v6
sub-int v3, p3, v0
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->f:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v4, v0, v6
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->e:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v0, v0, v6
sub-int v0, v4, v0
div-int v0, v8, v0
mul-int/2addr v0, v3
invoke-virtual {v2, v0}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v0
iput v0, v1, Lcom/b/a/a/a/a/m;->b:I
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->a:Lcom/b/a/a/a/a/e;
iget-object v2, v0, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->e:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v0, v0, v7
sub-int v3, p4, v0
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->f:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v4, v0, v7
iget-object v0, p0, Lcom/b/a/a/a/a/e$3;->e:Ljava/lang/Object;
check-cast v0, [I
check-cast v0, [I
aget v0, v0, v7
sub-int v0, v4, v0
div-int v0, v8, v0
mul-int/2addr v0, v3
invoke-virtual {v2, v0}, Lcom/b/a/a/a/a/c;->a(I)I
move-result v0
iput v0, v1, Lcom/b/a/a/a/a/m;->c:I
iput p1, v1, Lcom/b/a/a/a/a/m;->d:I
return-object v1
.end method