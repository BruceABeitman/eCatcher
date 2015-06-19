.class public abstract Lcom/instagram/creation/video/j/a;
.super Lcom/instagram/creation/video/gl/z;
.source "AbstractFinalRenderController.java"

# interfaces
.implements Lcom/instagram/creation/video/j/b;


# instance fields
.field protected a:Z

.field private b:Z


# direct methods
.method protected constructor <init>(Lcom/instagram/creation/video/gl/j;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/gl/z;-><init>(Lcom/instagram/creation/video/gl/j;)V

    return-void
.end method


# virtual methods
.method public final B_()V
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/a;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->g()V

    return-void
.end method

.method protected a()V
    .registers 1

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/a;->b:Z

    return v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/a;->b:Z

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/a;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->e()V

    invoke-virtual {p0}, Lcom/instagram/creation/video/j/a;->a()V

    return-void
.end method

.method protected final h()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/creation/video/j/a;->a:Z

    return-void
.end method

.method public final i()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/a;->a:Z

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/instagram/creation/video/j/a;->b:Z

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
