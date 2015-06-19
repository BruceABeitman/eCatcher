.class public final Lcom/instagram/android/a/i;
.super Ljava/lang/Object;
.source "NearbyVenuesAdapter.java"
.method public static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
sget v0, Lcom/facebook/aw;->row_no_results:I
const/4 v1, 0x0
invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/android/a/j;
invoke-direct {v2}, Lcom/instagram/android/a/j;-><init>()V
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
sget v0, Lcom/facebook/av;->row_no_results_textview:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/instagram/android/a/j;->a:Landroid/widget/TextView;
return-object v1
.end method
.method public static a(Lcom/instagram/android/a/j;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/a/j;->a:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->no_locations_found:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
return-void
.end method