.class public final Lcom/instagram/creation/video/j/h;
.super Ljava/lang/Object;
.source "OESParamsHelper.java"
.field private a:F
.field private final b:Lcom/instagram/creation/video/j/l;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/high16 v0, 0x3f00
iput v0, p0, Lcom/instagram/creation/video/j/h;->a:F
invoke-static {}, Lcom/instagram/creation/video/e/e;->c()Lcom/instagram/creation/video/j/l;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/video/j/h;->b:Lcom/instagram/creation/video/j/l;
const/high16 v0, 0x3f80
invoke-direct {p0, v0, v1, v1}, Lcom/instagram/creation/video/j/h;->a(FIZ)V
return-void
.end method
.method private a(FF)V
.registers 5
const/4 v0, 0x0
const/high16 v1, 0x3f80
invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F
move-result v0
iput v0, p0, Lcom/instagram/creation/video/j/h;->a:F
iget-object v0, p0, Lcom/instagram/creation/video/j/h;->b:Lcom/instagram/creation/video/j/l;
iget-object v0, v0, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;
iget v1, p0, Lcom/instagram/creation/video/j/h;->a:F
invoke-static {p2, v1}, Lcom/instagram/creation/video/e/e;->a(FF)[F
move-result-object v1
invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
iget-object v0, p0, Lcom/instagram/creation/video/j/h;->b:Lcom/instagram/creation/video/j/l;
iget-object v0, v0, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
return-void
.end method
.method private a(FIZ)V
.registers 7
const/4 v0, 0x0
iget-object v1, p0, Lcom/instagram/creation/video/j/h;->b:Lcom/instagram/creation/video/j/l;
iget-object v1, v1, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;
iget v2, p0, Lcom/instagram/creation/video/j/h;->a:F
invoke-static {p1, v2}, Lcom/instagram/creation/video/e/e;->a(FF)[F
move-result-object v2
invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
iget-object v1, p0, Lcom/instagram/creation/video/j/h;->b:Lcom/instagram/creation/video/j/l;
iget-object v1, v1, Lcom/instagram/creation/video/j/l;->a:Ljava/nio/FloatBuffer;
invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
iget-object v1, p0, Lcom/instagram/creation/video/j/h;->b:Lcom/instagram/creation/video/j/l;
iget-object v1, v1, Lcom/instagram/creation/video/j/l;->b:Ljava/nio/FloatBuffer;
if-eqz p3, :cond_1c
move p2, v0
:cond_1c
invoke-static {p2}, Lcom/instagram/creation/video/e/e;->a(I)[F
move-result-object v2
invoke-virtual {v1, v2}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;
iget-object v1, p0, Lcom/instagram/creation/video/j/h;->b:Lcom/instagram/creation/video/j/l;
iget-object v1, v1, Lcom/instagram/creation/video/j/l;->b:Ljava/nio/FloatBuffer;
invoke-virtual {v1, v0}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;
return-void
.end method
.method public final a()Lcom/instagram/creation/video/j/l;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/j/h;->b:Lcom/instagram/creation/video/j/l;
return-object v0
.end method
.method public final a(Lcom/instagram/creation/b/a/a;)V
.registers 5
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->j()F
move-result v0
invoke-static {p1}, Lcom/instagram/creation/video/l/c;->a(Lcom/instagram/creation/b/a/a;)I
move-result v1
invoke-static {p1}, Lcom/instagram/creation/video/l/c;->b(Lcom/instagram/creation/b/a/a;)Z
move-result v2
invoke-direct {p0, v0, v1, v2}, Lcom/instagram/creation/video/j/h;->a(FIZ)V
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->e()F
move-result v0
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->j()F
move-result v1
invoke-direct {p0, v0, v1}, Lcom/instagram/creation/video/j/h;->a(FF)V
return-void
.end method
.method public final b(Lcom/instagram/creation/b/a/a;)V
.registers 5
invoke-virtual {p1}, Lcom/instagram/creation/b/a/a;->j()F
move-result v0
invoke-static {p1}, Lcom/instagram/creation/video/l/c;->a(Lcom/instagram/creation/b/a/a;)I
move-result v1
const/4 v2, 0x0
invoke-direct {p0, v0, v1, v2}, Lcom/instagram/creation/video/j/h;->a(FIZ)V
return-void
.end method