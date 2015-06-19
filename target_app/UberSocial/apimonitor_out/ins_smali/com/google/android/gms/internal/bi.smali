.class final Lcom/google/android/gms/internal/bi;
.super Ljava/lang/Object;
.field public final a:I
.field public final b:Landroid/view/ViewGroup$LayoutParams;
.field public final c:Landroid/view/ViewGroup;
.method public constructor <init>(Lcom/google/android/gms/internal/ec;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Lcom/google/android/gms/internal/ec;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/bi;->b:Landroid/view/ViewGroup$LayoutParams;
invoke-virtual {p1}, Lcom/google/android/gms/internal/ec;->getParent()Landroid/view/ViewParent;
move-result-object v0
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_27
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/google/android/gms/internal/bi;->c:Landroid/view/ViewGroup;
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->c:Landroid/view/ViewGroup;
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/bi;->a:I
iget-object v0, p0, Lcom/google/android/gms/internal/bi;->c:Landroid/view/ViewGroup;
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
const/4 v0, 0x1
invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ec;->a(Z)V
return-void
:cond_27
new-instance v0, Lcom/google/android/gms/internal/bh;
const-string v1, "Could not get the parent of the WebView for an overlay."
invoke-direct {v0, v1}, Lcom/google/android/gms/internal/bh;-><init>(Ljava/lang/String;)V
throw v0
.end method