.class public Lit/sephiroth/android/library/a/c;
.super Lit/sephiroth/android/library/a/b;
.source "SourceFile"
.method public constructor <init>(Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lit/sephiroth/android/library/a/b;-><init>(Landroid/view/View;)V
return-void
.end method
.method public a(I)V
.registers 5
const-string v0, "ViewHelper"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "setScrollX: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
iget-object v0, p0, Lit/sephiroth/android/library/a/c;->a:Landroid/view/View;
iget-object v1, p0, Lit/sephiroth/android/library/a/c;->a:Landroid/view/View;
invoke-virtual {v1}, Landroid/view/View;->getScrollY()I
move-result v1
invoke-virtual {v0, p1, v1}, Landroid/view/View;->scrollTo(II)V
return-void
.end method
.method public a(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lit/sephiroth/android/library/a/c;->a:Landroid/view/View;
invoke-virtual {v0, p1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public a()Z
.registers 2
const/4 v0, 0x0
return v0
.end method