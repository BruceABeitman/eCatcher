.class public final Lcom/instagram/creation/video/ui/b;
.super Landroid/view/View;
.source "ClipView.java"

# interfaces
.implements Lcom/instagram/creation/video/i/b;


# instance fields
.field private final a:Lcom/instagram/creation/video/i/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/i/a;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, p2}, Lcom/instagram/creation/video/ui/b;->setTag(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/instagram/creation/video/ui/b;->a:Lcom/instagram/creation/video/i/a;

    iget-object v0, p0, Lcom/instagram/creation/video/ui/b;->a:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0, p0}, Lcom/instagram/creation/video/i/a;->a(Lcom/instagram/creation/video/i/b;)V

    invoke-virtual {p2}, Lcom/instagram/creation/video/i/a;->b()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/instagram/creation/video/ui/b;->b(I)V

    return-void
.end method

.method private b(I)V
    .registers 3

    sget v0, Lcom/instagram/creation/video/i/c;->a:I

    if-eq p1, v0, :cond_8

    sget v0, Lcom/instagram/creation/video/i/c;->b:I

    if-ne p1, v0, :cond_e

    :cond_8
    sget v0, Lcom/facebook/au;->camcorder_progress_blue:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/b;->setBackgroundResource(I)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    sget v0, Lcom/instagram/creation/video/i/c;->c:I

    if-ne p1, v0, :cond_d

    sget v0, Lcom/facebook/au;->camcorder_progress_red:I

    invoke-virtual {p0, v0}, Lcom/instagram/creation/video/ui/b;->setBackgroundResource(I)V

    goto :goto_d
.end method


# virtual methods
.method public final a(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/instagram/creation/video/ui/b;->b(I)V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/i/a;)V
    .registers 2

    invoke-virtual {p0}, Lcom/instagram/creation/video/ui/b;->requestLayout()V

    return-void
.end method

.method protected final onMeasure(II)V
    .registers 9

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    int-to-long v2, v0

    iget-object v0, p0, Lcom/instagram/creation/video/ui/b;->a:Lcom/instagram/creation/video/i/a;

    invoke-virtual {v0}, Lcom/instagram/creation/video/i/a;->a()J

    move-result-wide v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0x3a98

    div-long/2addr v2, v4

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    long-to-int v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/instagram/creation/video/ui/b;->setMeasuredDimension(II)V

    return-void
.end method
