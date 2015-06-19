.class public final Lcom/instagram/ui/widget/loadmore/d;
.super Ljava/lang/Object;
.source "LoadMoreRowViewBinder.java"
.method public static a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->row_load_more:I
const/4 v2, 0x0
invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
new-instance v2, Lcom/instagram/ui/widget/loadmore/e;
invoke-direct {v2}, Lcom/instagram/ui/widget/loadmore/e;-><init>()V
sget v0, Lcom/facebook/av;->row_load_more_button:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
invoke-static {v2, v0}, Lcom/instagram/ui/widget/loadmore/e;->a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/LoadMoreButton;)Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v1
.end method
.method public static a(Lcom/instagram/ui/widget/loadmore/e;Lcom/instagram/ui/widget/loadmore/c;)V
.registers 3
invoke-static {p0}, Lcom/instagram/ui/widget/loadmore/e;->a(Lcom/instagram/ui/widget/loadmore/e;)Lcom/instagram/ui/widget/loadmore/LoadMoreButton;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/ui/widget/loadmore/LoadMoreButton;->a(Lcom/instagram/ui/widget/loadmore/c;)V
return-void
.end method