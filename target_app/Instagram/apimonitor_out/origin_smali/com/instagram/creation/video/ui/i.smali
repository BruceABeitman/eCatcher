.class final Lcom/instagram/creation/video/ui/i;
.super Ljava/lang/Object;
.source "PhotoView.java"

# interfaces
.implements Lcom/instagram/creation/video/ui/h;


# instance fields
.field final synthetic a:Lcom/instagram/creation/video/ui/f;

.field private b:I

.field private c:Lcom/instagram/creation/video/ui/k;

.field private d:Lcom/instagram/creation/video/ui/j;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/ui/f;)V
    .registers 3

    iput-object p1, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/instagram/creation/video/ui/j;

    invoke-direct {v0}, Lcom/instagram/creation/video/ui/j;-><init>()V

    iput-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    return-void
.end method

.method private c()V
    .registers 5

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-static {v0}, Lcom/instagram/creation/video/ui/f;->a(Lcom/instagram/creation/video/ui/f;)I

    move-result v0

    iput v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    if-eqz v0, :cond_3c

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget-object v1, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    invoke-interface {v1}, Lcom/instagram/creation/video/ui/k;->a()I

    move-result v1

    iput v1, v0, Lcom/instagram/creation/video/ui/j;->a:I

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget-object v1, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    invoke-interface {v1}, Lcom/instagram/creation/video/ui/k;->b()I

    move-result v1

    iput v1, v0, Lcom/instagram/creation/video/ui/j;->b:I

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget v0, v0, Lcom/instagram/creation/video/ui/j;->a:I

    iget-object v1, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget v1, v1, Lcom/instagram/creation/video/ui/j;->b:I

    iget-object v2, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget v3, p0, Lcom/instagram/creation/video/ui/i;->b:I

    invoke-static {v3, v0, v1}, Lcom/instagram/creation/video/ui/f;->a(III)I

    move-result v3

    iput v3, v2, Lcom/instagram/creation/video/ui/j;->a:I

    iget-object v2, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    iget v3, p0, Lcom/instagram/creation/video/ui/i;->b:I

    invoke-static {v3, v1, v0}, Lcom/instagram/creation/video/ui/f;->a(III)I

    move-result v0

    iput v0, v2, Lcom/instagram/creation/video/ui/j;->b:I

    :cond_3c
    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/creation/video/ui/i;->c()V

    return-void
.end method

.method public final a(Lcom/instagram/creation/video/gl/c;Landroid/graphics/Rect;)V
    .registers 9

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-static {p1, p2}, Lcom/instagram/creation/video/ui/f;->a(Lcom/instagram/creation/video/gl/c;Landroid/graphics/Rect;)V

    :goto_9
    return-void

    :cond_a
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-virtual {v0}, Lcom/instagram/creation/video/ui/f;->b()I

    move-result v0

    iget-object v1, p0, Lcom/instagram/creation/video/ui/i;->a:Lcom/instagram/creation/video/ui/f;

    invoke-virtual {v1}, Lcom/instagram/creation/video/ui/f;->c()I

    move-result v1

    iget v2, p2, Landroid/graphics/Rect;->left:I

    if-ge v2, v0, :cond_26

    iget v0, p2, Landroid/graphics/Rect;->right:I

    if-lez v0, :cond_26

    iget v0, p2, Landroid/graphics/Rect;->top:I

    if-ge v0, v1, :cond_26

    iget v0, p2, Landroid/graphics/Rect;->bottom:I

    if-gtz v0, :cond_2c

    :cond_26
    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    invoke-interface {v0}, Lcom/instagram/creation/video/ui/k;->f()V

    goto :goto_9

    :cond_2c
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    const/4 v2, 0x3

    invoke-interface {p1, v2}, Lcom/instagram/creation/video/gl/c;->a(I)V

    int-to-float v0, v0

    int-to-float v1, v1

    invoke-interface {p1, v0, v1}, Lcom/instagram/creation/video/gl/c;->a(FF)V

    iget v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    if-eqz v0, :cond_47

    iget v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    int-to-float v0, v0

    invoke-interface {p1, v0}, Lcom/instagram/creation/video/gl/c;->b(F)V

    :cond_47
    iget v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/instagram/creation/video/ui/f;->a(III)I

    move-result v4

    iget v0, p0, Lcom/instagram/creation/video/ui/i;->b:I

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/instagram/creation/video/ui/f;->a(III)I

    move-result v5

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    neg-int v1, v4

    div-int/lit8 v2, v1, 0x2

    neg-int v1, v5

    div-int/lit8 v3, v1, 0x2

    move-object v1, p1

    invoke-interface/range {v0 .. v5}, Lcom/instagram/creation/video/ui/k;->b(Lcom/instagram/creation/video/gl/c;IIII)V

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    invoke-interface {p1}, Lcom/instagram/creation/video/gl/c;->c()V

    goto :goto_9
.end method

.method public final a(Lcom/instagram/creation/video/ui/k;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/creation/video/ui/i;->c:Lcom/instagram/creation/video/ui/k;

    return-void
.end method

.method public final b()Lcom/instagram/creation/video/ui/j;
    .registers 2

    iget-object v0, p0, Lcom/instagram/creation/video/ui/i;->d:Lcom/instagram/creation/video/ui/j;

    return-object v0
.end method
