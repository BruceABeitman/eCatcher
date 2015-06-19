.class final Lcom/instagram/creation/photo/crop/s;
.super Ljava/lang/Object;
.source "ImageViewTouchBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:F

.field final synthetic b:J

.field final synthetic c:F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:F

.field final synthetic g:Lcom/instagram/creation/photo/crop/q;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/q;FJFFFF)V
    .registers 10

    iput-object p1, p0, Lcom/instagram/creation/photo/crop/s;->g:Lcom/instagram/creation/photo/crop/q;

    const/high16 v0, 0x4396

    iput v0, p0, Lcom/instagram/creation/photo/crop/s;->a:F

    iput-wide p3, p0, Lcom/instagram/creation/photo/crop/s;->b:J

    iput p5, p0, Lcom/instagram/creation/photo/crop/s;->c:F

    iput p6, p0, Lcom/instagram/creation/photo/crop/s;->d:F

    iput p7, p0, Lcom/instagram/creation/photo/crop/s;->e:F

    iput p8, p0, Lcom/instagram/creation/photo/crop/s;->f:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/instagram/creation/photo/crop/s;->a:F

    iget-wide v3, p0, Lcom/instagram/creation/photo/crop/s;->b:J

    sub-long/2addr v0, v3

    long-to-float v0, v0

    invoke-static {v2, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget v1, p0, Lcom/instagram/creation/photo/crop/s;->c:F

    iget v2, p0, Lcom/instagram/creation/photo/crop/s;->d:F

    mul-float/2addr v2, v0

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/s;->g:Lcom/instagram/creation/photo/crop/q;

    iget v3, p0, Lcom/instagram/creation/photo/crop/s;->e:F

    iget v4, p0, Lcom/instagram/creation/photo/crop/s;->f:F

    invoke-virtual {v2, v1, v3, v4}, Lcom/instagram/creation/photo/crop/q;->a(FFF)V

    iget v1, p0, Lcom/instagram/creation/photo/crop/s;->a:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2a

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/s;->g:Lcom/instagram/creation/photo/crop/q;

    iget-object v0, v0, Lcom/instagram/creation/photo/crop/q;->l:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    return-void
.end method
