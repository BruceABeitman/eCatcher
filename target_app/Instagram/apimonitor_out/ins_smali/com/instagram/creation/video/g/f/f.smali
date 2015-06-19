.class public final Lcom/instagram/creation/video/g/f/f;
.super Ljava/lang/Object;
.source "VideoResizerParamsBuilder.java"
.field public a:Ljava/io/File;
.field public b:Ljava/io/File;
.field private c:Landroid/graphics/RectF;
.field private d:I
.field private e:I
.field private f:Lcom/instagram/creation/video/g/a/e;
.field private g:Lcom/instagram/creation/b/a/b;
.field private h:Lcom/instagram/creation/video/e/c;
.method constructor <init>()V
.registers 4
const/high16 v2, 0x3f80
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0, v1, v1, v2, v2}, Landroid/graphics/RectF;-><init>(FFFF)V
iput-object v0, p0, Lcom/instagram/creation/video/g/f/f;->c:Landroid/graphics/RectF;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/creation/video/g/f/f;->d:I
const/4 v0, -0x2
iput v0, p0, Lcom/instagram/creation/video/g/f/f;->e:I
return-void
.end method
.method public final a(I)Lcom/instagram/creation/video/g/f/f;
.registers 2
iput p1, p0, Lcom/instagram/creation/video/g/f/f;->d:I
return-object p0
.end method
.method public final a(Lcom/instagram/creation/b/a/b;)Lcom/instagram/creation/video/g/f/f;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->g:Lcom/instagram/creation/b/a/b;
return-object p0
.end method
.method public final a(Lcom/instagram/creation/video/e/c;)Lcom/instagram/creation/video/g/f/f;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->h:Lcom/instagram/creation/video/e/c;
return-object p0
.end method
.method public final a(Lcom/instagram/creation/video/g/a/e;)Lcom/instagram/creation/video/g/f/f;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->f:Lcom/instagram/creation/video/g/a/e;
return-object p0
.end method
.method public final a(Ljava/io/File;)Lcom/instagram/creation/video/g/f/f;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->a:Ljava/io/File;
return-object p0
.end method
.method public final a()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->a:Ljava/io/File;
return-object v0
.end method
.method public final b(I)Lcom/instagram/creation/video/g/f/f;
.registers 2
iput p1, p0, Lcom/instagram/creation/video/g/f/f;->e:I
return-object p0
.end method
.method public final b(Ljava/io/File;)Lcom/instagram/creation/video/g/f/f;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/video/g/f/f;->b:Ljava/io/File;
return-object p0
.end method
.method public final b()Ljava/io/File;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->b:Ljava/io/File;
return-object v0
.end method
.method public final c()Landroid/graphics/RectF;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->c:Landroid/graphics/RectF;
return-object v0
.end method
.method public final d()I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/g/f/f;->d:I
return v0
.end method
.method public final e()I
.registers 2
iget v0, p0, Lcom/instagram/creation/video/g/f/f;->e:I
return v0
.end method
.method public final f()Lcom/instagram/creation/video/g/a/e;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->f:Lcom/instagram/creation/video/g/a/e;
return-object v0
.end method
.method public final g()Lcom/instagram/creation/b/a/b;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->g:Lcom/instagram/creation/b/a/b;
return-object v0
.end method
.method public final h()Lcom/instagram/creation/video/e/c;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/g/f/f;->h:Lcom/instagram/creation/video/e/c;
return-object v0
.end method
.method public final i()Lcom/instagram/creation/video/g/f/e;
.registers 2
new-instance v0, Lcom/instagram/creation/video/g/f/e;
invoke-direct {v0, p0}, Lcom/instagram/creation/video/g/f/e;-><init>(Lcom/instagram/creation/video/g/f/f;)V
return-object v0
.end method