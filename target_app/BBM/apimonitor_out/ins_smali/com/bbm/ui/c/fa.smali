.class final Lcom/bbm/ui/c/fa;
.super Lcom/bbm/j/k;
.source "PeopleYouKnowFragment.java"
.field final synthetic a:Lcom/bbm/ui/c/ey;
.method constructor <init>(Lcom/bbm/ui/c/ey;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/c/fa;->a:Lcom/bbm/ui/c/ey;
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V
return-void
.end method
.method protected final a()V
.registers 8
const/4 v6, 0x0
invoke-static {}, Lcom/bbm/Alaska;->y()Z
move-result v1
iget-object v0, p0, Lcom/bbm/ui/c/fa;->a:Lcom/bbm/ui/c/ey;
invoke-static {v0}, Lcom/bbm/ui/c/ey;->b(Lcom/bbm/ui/c/ey;)Z
move-result v2
iget-object v0, p0, Lcom/bbm/ui/c/fa;->a:Lcom/bbm/ui/c/ey;
invoke-static {v0}, Lcom/bbm/ui/c/ey;->c(Lcom/bbm/ui/c/ey;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
const-string v3, "people you know progress monitor finished loading %s has found friend %s"
const/4 v4, 0x2
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
aput-object v5, v4, v6
const/4 v5, 0x1
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v4, v5
invoke-static {v3, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
if-eqz v1, :cond_40
if-nez v0, :cond_40
iget-object v0, p0, Lcom/bbm/ui/c/fa;->a:Lcom/bbm/ui/c/ey;
invoke-static {v0}, Lcom/bbm/ui/c/ey;->d(Lcom/bbm/ui/c/ey;)Landroid/widget/ProgressBar;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
:goto_3f
return-void
:cond_40
iget-object v0, p0, Lcom/bbm/ui/c/fa;->a:Lcom/bbm/ui/c/ey;
invoke-static {v0}, Lcom/bbm/ui/c/ey;->d(Lcom/bbm/ui/c/ey;)Landroid/widget/ProgressBar;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V
goto :goto_3f
.end method