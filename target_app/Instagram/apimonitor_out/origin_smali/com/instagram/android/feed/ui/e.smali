.class public final Lcom/instagram/android/feed/ui/e;
.super Lcom/instagram/android/feed/ui/a;
.source "TranslateDrawable.java"


# instance fields
.field private b:I


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;I)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/instagram/android/feed/ui/a;-><init>(Landroid/graphics/drawable/Drawable;)V

    iput p2, p0, Lcom/instagram/android/feed/ui/e;->b:I

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 6

    invoke-virtual {p0}, Lcom/instagram/android/feed/ui/e;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/feed/ui/e;->a:Lcom/instagram/android/feed/ui/b;

    iget-object v1, v1, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getLevel()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    iget v3, p0, Lcom/instagram/android/feed/ui/e;->b:I

    add-int/2addr v2, v3

    rem-int/lit16 v1, v1, 0x1388

    mul-int/2addr v1, v2

    int-to-double v1, v1

    const-wide v3, 0x40b3880000000000L

    div-double/2addr v1, v3

    double-to-int v1, v1

    iget-object v2, p0, Lcom/instagram/android/feed/ui/e;->a:Lcom/instagram/android/feed/ui/b;

    iget-object v2, v2, Lcom/instagram/android/feed/ui/b;->a:Landroid/graphics/drawable/Drawable;

    iget v3, p0, Lcom/instagram/android/feed/ui/e;->b:I

    neg-int v3, v3

    add-int/2addr v3, v1

    iget v4, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v3, v4, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method
