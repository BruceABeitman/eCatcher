.class  Lcom/b/a/a/a/a/e$5;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"
.field final synthetic a:Lcom/b/a/a/a/a/e;
.method constructor <init>(Lcom/b/a/a/a/a/e;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/e$5;->a:Lcom/b/a/a/a/a/e;
invoke-direct {p0}, Lcom/b/a/a/a/a/g;-><init>()V
return-void
.end method
.method public a(IIII)Lcom/b/a/a/a/a/m;
.registers 13
invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/e$5;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v2, p2
const-wide v4, 0x3fd926e978d4fdf4L
mul-double/2addr v2, v4
int-to-double v4, p3
const-wide v6, 0x3fe89ba5e353f7cfL
mul-double/2addr v4, v6
add-double/2addr v2, v4
int-to-double v4, p4
const-wide v6, 0x3fc83126e978d4feL
mul-double/2addr v4, v6
add-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/e$5;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v2, p2
const-wide v4, 0x3fd65604189374bcL
mul-double/2addr v2, v4
int-to-double v4, p3
const-wide v6, 0x3fe5f3b645a1cac1L
mul-double/2addr v4, v6
add-double/2addr v2, v4
int-to-double v4, p4
const-wide v6, 0x3fc5810624dd2f1bL
mul-double/2addr v4, v6
add-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/e$5;->a:Lcom/b/a/a/a/a/e;
iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;
int-to-double v2, p2
const-wide v4, 0x3fd16872b020c49cL
mul-double/2addr v2, v4
int-to-double v4, p3
const-wide v6, 0x3fe116872b020c4aL
mul-double/2addr v4, v6
add-double/2addr v2, v4
int-to-double v4, p4
const-wide v6, 0x3fc0c49ba5e353f8L
mul-double/2addr v4, v6
add-double/2addr v2, v4
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iput p1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method