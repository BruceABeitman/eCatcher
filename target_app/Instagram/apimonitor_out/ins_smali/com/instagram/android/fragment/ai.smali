.class final Lcom/instagram/android/fragment/ai;
.super Lcom/instagram/api/j/a;
.source "EditProfileFragment.java"
.field final synthetic a:Lcom/instagram/android/fragment/ab;
.method constructor <init>(Lcom/instagram/android/fragment/ab;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method private a(Lcom/instagram/android/h/b/c;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0, p1}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;Lcom/instagram/android/h/b/c;)Lcom/instagram/android/h/b/c;
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->u()Z
move-result v0
if-eqz v0, :cond_14
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
:cond_14
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->h(Lcom/instagram/android/fragment/ab;)V
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->i(Lcom/instagram/android/fragment/ab;)V
return-void
.end method
.method public final a()V
.registers 3
const/4 v1, 0x1
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0, v1}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;Z)Z
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->loading_spinner:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 5
const/4 v1, 0x0
invoke-super {p0, p1}, Lcom/instagram/api/j/a;->a(Lcom/instagram/api/j/j;)V
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->u()Z
move-result v0
if-eqz v0, :cond_1c
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-static {v0}, Lcom/instagram/android/fragment/ab;->d(Lcom/instagram/android/fragment/ab;)Lcom/instagram/ui/widget/refresh/RefreshButton;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/instagram/ui/widget/refresh/RefreshButton;->setVisibility(I)V
:cond_1c
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/az;->request_error:I
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/instagram/android/h/b/c;
invoke-direct {p0, p1}, Lcom/instagram/android/fragment/ai;->a(Lcom/instagram/android/h/b/c;)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/fragment/ab;->a(Lcom/instagram/android/fragment/ab;Z)Z
iget-object v0, p0, Lcom/instagram/android/fragment/ai;->a:Lcom/instagram/android/fragment/ab;
invoke-virtual {v0}, Lcom/instagram/android/fragment/ab;->D()Landroid/view/View;
move-result-object v0
sget v1, Lcom/facebook/av;->loading_spinner:I
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method