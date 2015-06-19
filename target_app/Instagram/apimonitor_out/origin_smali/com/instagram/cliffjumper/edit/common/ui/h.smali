.class abstract Lcom/instagram/cliffjumper/edit/common/ui/h;
.super Ljava/lang/Object;
.source "TileButton.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private b:F

.field private c:F

.field private d:J


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x3f80

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method protected abstract a()V
.end method

.method public final a(F)V
    .registers 4

    iput p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->a()V

    :cond_d
    return-void
.end method

.method protected final a(J)V
    .registers 7

    const-wide/16 v2, -0x1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_12

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    cmpl-float v0, v0, v1

    if-nez v0, :cond_18

    :cond_12
    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->b()V

    iput-wide v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    :goto_17
    return-void

    :cond_18
    iget-wide v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_20

    iput-wide p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    :cond_20
    iget-wide v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    sub-long v0, p1, v0

    long-to-float v0, v0

    invoke-static {}, Lcom/instagram/cliffjumper/edit/common/ui/g;->c()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget v1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4f

    const/high16 v1, 0x3f80

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    add-float/2addr v0, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_3c
    iput v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iput-wide p1, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->d:J

    invoke-virtual {p0}, Lcom/instagram/cliffjumper/edit/common/ui/h;->a()V

    goto :goto_17

    :cond_4f
    const/4 v1, 0x0

    iget v2, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    sub-float v0, v2, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_3c
.end method

.method protected abstract b()V
.end method

.method public final c()F
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->c:F

    return v0
.end method

.method public final d()F
    .registers 2

    iget v0, p0, Lcom/instagram/cliffjumper/edit/common/ui/h;->b:F

    return v0
.end method
