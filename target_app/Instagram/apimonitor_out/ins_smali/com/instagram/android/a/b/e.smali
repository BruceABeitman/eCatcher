.class public final Lcom/instagram/android/a/b/e;
.super Ljava/lang/Object;
.source "FindPeopleButtonsRowViewBinder.java"
.method public static a(Landroid/content/Context;Lcom/instagram/android/a/b/f;)Landroid/view/View;
.registers 7
invoke-interface {p1}, Lcom/instagram/android/a/b/f;->b()Lcom/instagram/android/widget/e;
move-result-object v1
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v2, Lcom/facebook/aw;->row_find_people_buttons:I
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
new-instance v3, Lcom/instagram/android/a/b/g;
invoke-direct {v3}, Lcom/instagram/android/a/b/g;-><init>()V
sget v0, Lcom/facebook/av;->facebook_button:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/FindPeopleButton;
iput-object v0, v3, Lcom/instagram/android/a/b/g;->a:Lcom/instagram/android/widget/FindPeopleButton;
iget-object v0, v3, Lcom/instagram/android/a/b/g;->a:Lcom/instagram/android/widget/FindPeopleButton;
invoke-virtual {v1}, Lcom/instagram/android/widget/e;->c()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/instagram/android/widget/FindPeopleButton;->setConnectedSubtitle(Ljava/lang/String;)V
sget v0, Lcom/facebook/av;->contacts_button:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/android/widget/FindPeopleButton;
iput-object v0, v3, Lcom/instagram/android/a/b/g;->b:Lcom/instagram/android/widget/FindPeopleButton;
iget-object v0, v3, Lcom/instagram/android/a/b/g;->b:Lcom/instagram/android/widget/FindPeopleButton;
invoke-virtual {v1}, Lcom/instagram/android/widget/e;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/FindPeopleButton;->setConnectedSubtitle(Ljava/lang/String;)V
invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
return-object v2
.end method
.method public static a(Lcom/instagram/android/a/b/g;Lcom/instagram/android/a/b/f;)V
.registers 5
invoke-interface {p1}, Lcom/instagram/android/a/b/f;->b()Lcom/instagram/android/widget/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/a/b/g;->a:Lcom/instagram/android/widget/FindPeopleButton;
invoke-virtual {v0}, Lcom/instagram/android/widget/e;->a()Landroid/view/View$OnClickListener;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/android/widget/FindPeopleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/instagram/android/a/b/g;->a:Lcom/instagram/android/widget/FindPeopleButton;
invoke-static {}, Lcom/instagram/android/widget/e;->b()Z
move-result v2
invoke-virtual {v1, v2}, Lcom/instagram/android/widget/FindPeopleButton;->setChecked(Z)V
iget-object v1, p0, Lcom/instagram/android/a/b/g;->b:Lcom/instagram/android/widget/FindPeopleButton;
invoke-virtual {v0}, Lcom/instagram/android/widget/e;->e()Landroid/view/View$OnClickListener;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/instagram/android/widget/FindPeopleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/android/a/b/g;->b:Lcom/instagram/android/widget/FindPeopleButton;
invoke-static {}, Lcom/instagram/android/widget/e;->f()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/FindPeopleButton;->setChecked(Z)V
return-void
.end method