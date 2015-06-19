.class public abstract Lcom/instagram/base/activity/d;
.super Landroid/support/v4/app/k;
.source "IgFragmentActivity.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/support/v4/app/k;-><init>()V
return-void
.end method
.method public a_()V
.registers 1
invoke-virtual {p0}, Lcom/instagram/base/activity/d;->onBackPressed()V
return-void
.end method
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-static {}, Lcom/instagram/common/analytics/a;->a()Lcom/instagram/common/analytics/d;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/analytics/d;->e()V
invoke-super {p0, p1}, Landroid/support/v4/app/k;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public onBackPressed()V
.registers 3
invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;
move-result-object v0
const-string v1, "back"
invoke-virtual {v0, p0, v1}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V
invoke-super {p0}, Landroid/support/v4/app/k;->onBackPressed()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/k;->onCreate(Landroid/os/Bundle;)V
invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/l/a/b;->b()V
const/4 v0, 0x3
invoke-virtual {p0, v0}, Lcom/instagram/base/activity/d;->setVolumeControlStream(I)V
return-void
.end method
.method protected onDestroy()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/k;->onDestroy()V
invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/l/a/b;->c()V
return-void
.end method
.method protected onPause()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/k;->onPause()V
invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/common/l/a/b;->b(Landroid/app/Activity;)V
return-void
.end method
.method protected onResume()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/k;->onResume()V
invoke-static {}, Lcom/instagram/common/l/a/b;->a()Lcom/instagram/common/l/a/b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/common/l/a/b;->a(Landroid/app/Activity;)V
return-void
.end method