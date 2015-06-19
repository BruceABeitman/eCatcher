.class  Lcom/b/a/a/a/a/o$6;
.super Lcom/b/a/a/a/a/a;
.source "SourceFile"
.field final synthetic g:Lcom/b/a/a/a/a/o;
.method constructor <init>(Lcom/b/a/a/a/a/o;)V
.registers 2
iput-object p1, p0, Lcom/b/a/a/a/a/o$6;->g:Lcom/b/a/a/a/a/o;
invoke-direct {p0}, Lcom/b/a/a/a/a/a;-><init>()V
return-void
.end method
.method public a(Lcom/b/a/a/a/a/m;Lcom/b/a/a/a/a/m;)Lcom/b/a/a/a/a/m;
.registers 9
const/high16 v5, 0x437f
const/high16 v4, 0x4300
invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;
move-result-object v0
iget-object v1, p0, Lcom/b/a/a/a/a/o$6;->g:Lcom/b/a/a/a/a/o;
iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;
iget v2, p2, Lcom/b/a/a/a/a/m;->a:I
add-int/lit8 v2, v2, -0x80
mul-int/lit8 v2, v2, 0x2
int-to-float v2, v2
iget v3, p1, Lcom/b/a/a/a/a/m;->a:I
add-int/lit8 v3, v3, -0x80
int-to-float v3, v3
mul-float/2addr v2, v3
div-float/2addr v2, v5
sub-float v2, v4, v2
float-to-double v2, v2
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->a:I
iget-object v1, p0, Lcom/b/a/a/a/a/o$6;->g:Lcom/b/a/a/a/a/o;
iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;
iget v2, p2, Lcom/b/a/a/a/a/m;->b:I
add-int/lit8 v2, v2, -0x80
mul-int/lit8 v2, v2, 0x2
int-to-float v2, v2
iget v3, p1, Lcom/b/a/a/a/a/m;->b:I
add-int/lit8 v3, v3, -0x80
int-to-float v3, v3
mul-float/2addr v2, v3
div-float/2addr v2, v5
sub-float v2, v4, v2
float-to-double v2, v2
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->b:I
iget-object v1, p0, Lcom/b/a/a/a/a/o$6;->g:Lcom/b/a/a/a/a/o;
iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;
iget v2, p2, Lcom/b/a/a/a/a/m;->c:I
add-int/lit8 v2, v2, -0x80
mul-int/lit8 v2, v2, 0x2
int-to-float v2, v2
iget v3, p1, Lcom/b/a/a/a/a/m;->c:I
add-int/lit8 v3, v3, -0x80
int-to-float v3, v3
mul-float/2addr v2, v3
div-float/2addr v2, v5
sub-float v2, v4, v2
float-to-double v2, v2
invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I
move-result v1
iput v1, v0, Lcom/b/a/a/a/a/m;->c:I
iget v1, p2, Lcom/b/a/a/a/a/m;->d:I
iput v1, v0, Lcom/b/a/a/a/a/m;->d:I
return-object v0
.end method