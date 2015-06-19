.class final Lcom/squareup/picasso/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final a:Lcom/squareup/picasso/ad;

.field final b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field c:Lcom/squareup/picasso/f;


# direct methods
.method constructor <init>(Lcom/squareup/picasso/ad;Landroid/widget/ImageView;Lcom/squareup/picasso/f;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/ad;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/squareup/picasso/i;->b:Ljava/lang/ref/WeakReference;

    iput-object p3, p0, Lcom/squareup/picasso/i;->c:Lcom/squareup/picasso/f;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    return-void
.end method


# virtual methods
.method public final onPreDraw()Z
    .registers 6

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/squareup/picasso/i;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-nez v0, :cond_c

    :cond_b
    :goto_b
    return v4

    :cond_c
    invoke-virtual {v0}, Landroid/widget/ImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v3

    if-lez v2, :cond_b

    if-lez v3, :cond_b

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    iget-object v1, p0, Lcom/squareup/picasso/i;->a:Lcom/squareup/picasso/ad;

    invoke-virtual {v1}, Lcom/squareup/picasso/ad;->a()Lcom/squareup/picasso/ad;

    move-result-object v1

    invoke-virtual {v1, v2, v3}, Lcom/squareup/picasso/ad;->b(II)Lcom/squareup/picasso/ad;

    move-result-object v1

    iget-object v2, p0, Lcom/squareup/picasso/i;->c:Lcom/squareup/picasso/f;

    invoke-virtual {v1, v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/f;)V

    goto :goto_b
.end method
