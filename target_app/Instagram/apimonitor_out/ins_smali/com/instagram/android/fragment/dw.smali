.class final Lcom/instagram/android/fragment/dw;
.super Lcom/instagram/api/j/f;
.source "RecommendedUserFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/dr;
.method constructor <init>(Lcom/instagram/android/fragment/dr;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-direct {p0}, Lcom/instagram/api/j/f;-><init>()V
return-void
.end method
.method private a(Ljava/util/ArrayList;)V
.registers 4
if-nez p1, :cond_7
new-instance p1, Ljava/util/ArrayList;
invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V
:cond_7
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->a(Lcom/instagram/android/fragment/dr;)Lcom/instagram/android/a/m;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/android/a/m;->a(Ljava/util/ArrayList;)V
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-virtual {v0, p1}, Lcom/instagram/android/fragment/dr;->a(Ljava/util/ArrayList;)V
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->g(Lcom/instagram/android/fragment/dr;)Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-virtual {v0}, Lcom/instagram/android/fragment/dr;->q_()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V
:cond_27
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0, v1}, Lcom/instagram/android/fragment/dr;->a(Lcom/instagram/android/fragment/dr;Z)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 5
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->h(Lcom/instagram/android/fragment/dr;)Z
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-virtual {v0}, Lcom/instagram/android/fragment/dr;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->could_not_refresh_feed:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
invoke-super {p0, p1}, Lcom/instagram/api/j/f;->a(Lcom/instagram/api/j/j;)V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/ArrayList;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/dw;->a(Ljava/util/ArrayList;)V
return-void
.end method
.method public final b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0, v1}, Lcom/instagram/android/fragment/dr;->a(Lcom/instagram/android/fragment/dr;Z)Z
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->h(Lcom/instagram/android/fragment/dr;)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
iget-object v0, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-static {v0}, Lcom/instagram/android/fragment/dr;->d(Lcom/instagram/android/fragment/dr;)Z
move-result v0
iget-object v1, p0, Lcom/instagram/android/fragment/dw;->a:Lcom/instagram/android/fragment/dr;
invoke-virtual {v1}, Lcom/instagram/android/fragment/dr;->D()Landroid/view/View;
move-result-object v1
invoke-static {v0, v1}, Lcom/instagram/ui/d/b;->a(ZLandroid/view/View;)V
return-void
.end method