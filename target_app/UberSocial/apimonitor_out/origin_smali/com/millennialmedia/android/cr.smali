.class Lcom/millennialmedia/android/cr;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/cq;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/cr;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/millennialmedia/android/cr;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/cq;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->h()Lcom/millennialmedia/android/MMAdView;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v0, v0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;)V

    :cond_15
    const/4 v0, 0x0

    return v0
.end method
