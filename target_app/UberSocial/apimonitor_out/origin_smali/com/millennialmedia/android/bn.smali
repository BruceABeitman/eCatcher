.class Lcom/millennialmedia/android/bn;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "SourceFile"


# instance fields
.field a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/millennialmedia/android/MMActivity;)V
    .registers 3

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/millennialmedia/android/bn;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .registers 4

    iget-object v0, p0, Lcom/millennialmedia/android/bn;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/millennialmedia/android/MMActivity;

    if-eqz v0, :cond_13

    iget-wide v0, v0, Lcom/millennialmedia/android/MMActivity;->a:J

    invoke-static {v0, v1}, Lcom/millennialmedia/android/bs;->a(J)Lcom/millennialmedia/android/bp;

    move-result-object v0

    invoke-static {v0}, Lcom/millennialmedia/android/cp;->a(Lcom/millennialmedia/android/bp;)V

    :cond_13
    const/4 v0, 0x0

    return v0
.end method
