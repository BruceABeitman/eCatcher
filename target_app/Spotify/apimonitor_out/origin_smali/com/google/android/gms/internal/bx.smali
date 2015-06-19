.class final Lcom/google/android/gms/internal/bx;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Landroid/view/ViewGroup$LayoutParams;

.field public final c:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/er;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/google/android/gms/internal/er;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->b:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/er;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Lcom/google/android/gms/internal/bx;->a:I

    iget-object v0, p0, Lcom/google/android/gms/internal/bx;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/er;->a(Z)V

    return-void

    :cond_27
    new-instance v0, Lcom/google/android/gms/internal/cc$a;

    const-string v1, "Could not get the parent of the WebView for an overlay."

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/cc$a;-><init>(Ljava/lang/String;)V

    throw v0
.end method
