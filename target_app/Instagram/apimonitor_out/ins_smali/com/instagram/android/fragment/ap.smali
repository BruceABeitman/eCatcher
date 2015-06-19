.class public final Lcom/instagram/android/fragment/ap;
.super Lcom/instagram/android/fragment/ew;
.source "ExploreFragment.java"
.field private ae:Ljava/util/Map;
.field private af:I
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/fragment/ew;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/android/fragment/ap;->ae:Ljava/util/Map;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/fragment/ap;)Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/ap;->ae:Ljava/util/Map;
return-object v0
.end method
.method private ao()I
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v0
if-nez v0, :cond_c
const/4 v0, 0x0
:goto_b
return v0
:cond_c
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I
move-result v0
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->W()Lcom/instagram/android/feed/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/feed/a/a;->f()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I
move-result v1
sub-int/2addr v0, v1
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->W()Lcom/instagram/android/feed/a/a;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/feed/a/a;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
mul-int/lit8 v0, v0, 0x3
add-int/lit8 v0, v0, 0x3
goto :goto_b
.end method
.method public final F()V
.registers 5
invoke-super {p0}, Lcom/instagram/android/fragment/ew;->F()V
invoke-static {}, Lcom/instagram/common/u/c/a;->a()Ljava/util/concurrent/Executor;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/au;
iget-object v2, p0, Lcom/instagram/android/fragment/ap;->ae:Ljava/util/Map;
invoke-direct {p0}, Lcom/instagram/android/fragment/ap;->ao()I
move-result v3
invoke-direct {v1, p0, v2, v3}, Lcom/instagram/android/fragment/au;-><init>(Lcom/instagram/android/fragment/ap;Ljava/util/Map;I)V
invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/android/fragment/ap;->ae:Ljava/util/Map;
return-void
.end method
.method protected final Y()I
.registers 2
sget v0, Lcom/instagram/android/feed/a/h;->b:I
return v0
.end method
.method protected final a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
.registers 9
new-instance v0, Lcom/instagram/android/fragment/aq;
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->ad()Lcom/instagram/feed/f/a;
move-result-object v4
sget v5, Lcom/facebook/av;->request_id_explore:I
move-object v1, p0
move-object v2, p0
move-object v3, p0
move-object v6, p1
invoke-direct/range {v0 .. v6}, Lcom/instagram/android/fragment/aq;-><init>(Lcom/instagram/android/fragment/ap;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;ILcom/instagram/api/j/f;)V
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Lcom/instagram/android/fragment/ew;->a(Landroid/os/Bundle;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/instagram/android/fragment/ap;->c(Z)V
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->W()Lcom/instagram/android/feed/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/feed/a/a;->e()Lcom/instagram/android/feed/a/a/b;
move-result-object v0
new-instance v1, Lcom/instagram/android/fragment/as;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/instagram/android/fragment/as;-><init>(Lcom/instagram/android/fragment/ap;B)V
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/b;->a(Lcom/instagram/android/feed/a/a/d;)V
return-void
.end method
.method public final a(Lcom/instagram/a/a;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/android/fragment/ew;->a(Lcom/instagram/a/a;)V
sget v0, Lcom/facebook/az;->explore:I
invoke-interface {p1, v0}, Lcom/instagram/a/a;->a(I)V
sget-object v0, Lcom/instagram/a/j;->a:Lcom/instagram/a/j;
new-instance v1, Lcom/instagram/android/fragment/ar;
invoke-direct {v1, p0}, Lcom/instagram/android/fragment/ar;-><init>(Lcom/instagram/android/fragment/ap;)V
invoke-interface {p1, v0, v1}, Lcom/instagram/a/a;->a(Lcom/instagram/a/j;Landroid/view/View$OnClickListener;)Landroid/view/View;
return-void
.end method
.method public final a(Lcom/instagram/feed/d/z;I)V
.registers 5
const-string v0, "explore_item_clicked"
invoke-direct {p0}, Lcom/instagram/android/fragment/ap;->ao()I
move-result v1
invoke-static {p0, v0, p1, p2, v1}, Lcom/instagram/android/feed/e/f;->a(Lcom/instagram/common/analytics/e;Ljava/lang/String;Lcom/instagram/feed/d/z;II)V
invoke-super {p0, p1, p2}, Lcom/instagram/android/fragment/ew;->a(Lcom/instagram/feed/d/z;I)V
return-void
.end method
.method public final a(Ljava/util/Map;)V
.registers 4
const-string v0, "src"
const-string v1, "explore"
invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public final af()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final ak()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final al()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public final d()Z
.registers 2
iget-object v0, p0, Lcom/instagram/android/fragment/ap;->ad:Lcom/instagram/feed/f/a;
invoke-virtual {v0}, Lcom/instagram/feed/f/a;->d()Z
move-result v0
return v0
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "explore_popular"
return-object v0
.end method
.method public final j_()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getRequestedOrientation()I
move-result v0
iput v0, p0, Lcom/instagram/android/fragment/ap;->af:I
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->l()Landroid/support/v4/app/k;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-super {p0}, Lcom/instagram/android/fragment/ew;->j_()V
return-void
.end method
.method public final k_()V
.registers 3
invoke-virtual {p0}, Lcom/instagram/android/fragment/ap;->l()Landroid/support/v4/app/k;
move-result-object v0
iget v1, p0, Lcom/instagram/android/fragment/ap;->af:I
invoke-virtual {v0, v1}, Landroid/support/v4/app/k;->setRequestedOrientation(I)V
invoke-super {p0}, Lcom/instagram/android/fragment/ew;->k_()V
return-void
.end method