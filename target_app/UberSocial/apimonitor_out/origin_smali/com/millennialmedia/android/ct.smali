.class Lcom/millennialmedia/android/ct;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method constructor <init>(Lcom/millennialmedia/android/cq;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/ct;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/millennialmedia/android/ct;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cq;

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1e

    move v3, v1

    :goto_12
    if-eqz v0, :cond_22

    if-eqz v3, :cond_20

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->g()Z

    move-result v0

    if-eqz v0, :cond_20

    move v0, v1

    :goto_1d
    return v0

    :cond_1e
    move v3, v2

    goto :goto_12

    :cond_20
    move v0, v2

    goto :goto_1d

    :cond_22
    move v0, v3

    goto :goto_1d
.end method
