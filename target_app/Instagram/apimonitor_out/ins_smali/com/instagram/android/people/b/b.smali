.class final Lcom/instagram/android/people/b/b;
.super Ljava/lang/Object;
.source "PeopleTagFragment.java"
.implements Lcom/instagram/android/people/widget/f;
.field final synthetic a:Lcom/instagram/android/people/b/a;
.method constructor <init>(Lcom/instagram/android/people/b/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->p()Landroid/support/v4/app/s;
move-result-object v0
invoke-static {v0}, Lcom/instagram/android/people/b/h;->a(Landroid/support/v4/app/s;)V
return-void
.end method
.method public final a(Landroid/graphics/PointF;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-static {v0}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-static {v0}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;
move-result-object v0
iget v1, p1, Landroid/graphics/PointF;->y:F
invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->setScrollTarget(F)V
:cond_13
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;Z)Z
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-static {v0}, Lcom/instagram/android/people/b/a;->b(Lcom/instagram/android/people/b/a;)V
return-void
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->p()Landroid/support/v4/app/s;
move-result-object v0
const-string v1, "PeopleTagSearch"
invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->c(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;Z)Z
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-static {v0}, Lcom/instagram/android/people/b/a;->b(Lcom/instagram/android/people/b/a;)V
return-void
.end method
.method public final b(Landroid/graphics/PointF;)V
.registers 4
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-static {v0}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;
move-result-object v0
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/instagram/android/people/b/b;->a:Lcom/instagram/android/people/b/a;
invoke-static {v0}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/android/people/b/a;)Lcom/instagram/android/people/widget/PhotoScrollView;
move-result-object v0
iget v1, p1, Landroid/graphics/PointF;->y:F
invoke-virtual {v0, v1}, Lcom/instagram/android/people/widget/PhotoScrollView;->setScrollTarget(F)V
:cond_13
return-void
.end method