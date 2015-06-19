.class final Lcom/instagram/android/directshare/d/ac;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DirectSharePermalinkFragment.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/directshare/d/ab;


# direct methods
.method constructor <init>(Lcom/instagram/android/directshare/d/ab;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/directshare/d/ac;->a:Lcom/instagram/android/directshare/d/ab;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDown(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x1

    return v0
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/directshare/d/ac;->a:Lcom/instagram/android/directshare/d/ab;

    iget-object v0, v0, Lcom/instagram/android/directshare/d/ab;->a:Lcom/instagram/android/directshare/d/c;

    invoke-virtual {v0}, Lcom/instagram/android/directshare/d/c;->c()V

    const/4 v0, 0x0

    return v0
.end method
