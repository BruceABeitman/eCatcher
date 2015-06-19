.class final Lcom/bbm/ui/c/be;
.super Lcom/bbm/j/k;
.source "ChatsFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/at;
.method constructor <init>(Lcom/bbm/ui/c/at;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/be;->a:Lcom/bbm/ui/c/at;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 9
const/4 v7, 0x1
const/4 v6, 0x0
iget-object v0, p0, Lcom/bbm/ui/c/be;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->c(Lcom/bbm/ui/c/at;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-lez v0, :cond_46
iget-object v1, p0, Lcom/bbm/ui/c/be;->a:Lcom/bbm/ui/c/at;
invoke-static {v1}, Lcom/bbm/ui/c/at;->d(Lcom/bbm/ui/c/at;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/c/be;->a:Lcom/bbm/ui/c/at;
invoke-virtual {v2}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0d0007
new-array v4, v7, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/c/be;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->e(Lcom/bbm/ui/c/at;)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/be;->a:Lcom/bbm/ui/c/at;
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
iput v7, v0, Lcom/bbm/ui/activities/MainActivity;->c:I
:goto_45
return-void
:cond_46
iget-object v0, p0, Lcom/bbm/ui/c/be;->a:Lcom/bbm/ui/c/at;
invoke-static {v0}, Lcom/bbm/ui/c/at;->e(Lcom/bbm/ui/c/at;)Landroid/view/View;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/c/be;->a:Lcom/bbm/ui/c/at;
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
iput v6, v0, Lcom/bbm/ui/activities/MainActivity;->c:I
goto :goto_45
.end method