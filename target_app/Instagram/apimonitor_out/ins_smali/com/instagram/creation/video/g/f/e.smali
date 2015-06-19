.class public final Lcom/instagram/creation/video/g/f/e;
.super Ljava/lang/Object;
.source "VideoResizerParams.java"
.field public final a:Ljava/io/File;
.field public final b:Ljava/io/File;
.field public final c:Landroid/graphics/RectF;
.field public final d:I
.field public final e:I
.field public final f:Lcom/instagram/creation/b/a/b;
.field public final g:Lcom/instagram/creation/video/e/c;
.field public final h:Lcom/instagram/creation/video/g/a/e;
.method constructor <init>(Lcom/instagram/creation/video/g/f/f;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->a()Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/File;
iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->a:Ljava/io/File;
invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->b()Ljava/io/File;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/io/File;
iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->b:Ljava/io/File;
invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->c()Landroid/graphics/RectF;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->c:Landroid/graphics/RectF;
invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->d()I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/g/f/e;->d:I
invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->e()I
move-result v0
iput v0, p0, Lcom/instagram/creation/video/g/f/e;->e:I
invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->f()Lcom/instagram/creation/video/g/a/e;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->h:Lcom/instagram/creation/video/g/a/e;
invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->g()Lcom/instagram/creation/b/a/b;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/a/b;
iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->f:Lcom/instagram/creation/b/a/b;
invoke-virtual {p1}, Lcom/instagram/creation/video/g/f/f;->h()Lcom/instagram/creation/video/e/c;
move-result-object v0
invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/video/e/c;
iput-object v0, p0, Lcom/instagram/creation/video/g/f/e;->g:Lcom/instagram/creation/video/e/c;
return-void
.end method
.method public static a()Lcom/instagram/creation/video/g/f/f;
.registers 1
new-instance v0, Lcom/instagram/creation/video/g/f/f;
invoke-direct {v0}, Lcom/instagram/creation/video/g/f/f;-><init>()V
return-object v0
.end method