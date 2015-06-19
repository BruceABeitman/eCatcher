.class public final Lcom/instagram/creation/video/j/c;
.super Ljava/lang/Object;
.source "FilterYUVRenderer.java"

# interfaces
.implements Lcom/instagram/creation/video/gl/p;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xe
.end annotation


# instance fields
.field private a:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Lcom/instagram/creation/video/gl/i;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/instagram/creation/video/e/c;

.field private c:Lcom/instagram/creation/video/e/c;

.field private d:Lcom/instagram/creation/video/gl/i;

.field private e:Lcom/instagram/creation/video/j/l;

.field private f:Lcom/instagram/creation/video/j/l;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/e/c;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/creation/video/j/c;->c:Lcom/instagram/creation/video/e/c;

    invoke-static {}, Lcom/instagram/creation/video/e/e;->b()Lcom/instagram/creation/video/e/c;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/c;->b:Lcom/instagram/creation/video/e/c;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/j/c;->a:Ljava/util/Queue;

    invoke-static {}, Lcom/instagram/creation/video/e/e;->c()Lcom/instagram/creation/video/j/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/c;->e:Lcom/instagram/creation/video/j/l;

    invoke-static {}, Lcom/instagram/creation/video/e/e;->d()Lcom/instagram/creation/video/j/l;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/creation/video/j/c;->f:Lcom/instagram/creation/video/j/l;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->d:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->c()V

    return-void
.end method

.method public final a(I)V
    .registers 3

    new-instance v0, Lcom/instagram/creation/video/gl/i;

    invoke-direct {v0, p1}, Lcom/instagram/creation/video/gl/i;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/creation/video/j/c;->d:Lcom/instagram/creation/video/gl/i;

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->c:Lcom/instagram/creation/video/e/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->e()I

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->b:Lcom/instagram/creation/video/e/c;

    invoke-virtual {v0}, Lcom/instagram/creation/video/e/c;->e()I

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/g;)V
    .registers 6

    const v3, 0x8d40

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->d:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->a()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v1, p0, Lcom/instagram/creation/video/j/c;->c:Lcom/instagram/creation/video/e/c;

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/i;->b()I

    move-result v0

    iget-object v2, p0, Lcom/instagram/creation/video/j/c;->e:Lcom/instagram/creation/video/j/l;

    invoke-virtual {v1, v0, v2}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V

    invoke-static {}, Landroid/opengl/GLES20;->glFlush()V

    invoke-interface {p1}, Lcom/instagram/creation/video/gl/g;->a()I

    move-result v0

    invoke-static {v3, v0}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->b:Lcom/instagram/creation/video/e/c;

    iget-object v1, p0, Lcom/instagram/creation/video/j/c;->d:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v1}, Lcom/instagram/creation/video/gl/i;->b()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/creation/video/j/c;->f:Lcom/instagram/creation/video/j/l;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/video/e/c;->a(ILcom/instagram/creation/video/j/l;)V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/i;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->a:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()Lcom/instagram/creation/video/gl/i;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->a:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/video/gl/i;

    return-object v0
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/creation/video/j/c;->d:Lcom/instagram/creation/video/gl/i;

    invoke-virtual {v0, p1}, Lcom/instagram/creation/video/gl/i;->a(I)V

    return-void
.end method
