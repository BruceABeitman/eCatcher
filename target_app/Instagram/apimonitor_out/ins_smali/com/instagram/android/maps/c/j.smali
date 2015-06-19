.class final Lcom/instagram/android/maps/c/j;
.super Lcom/instagram/api/j/a;
.source "PhotoMapsEditHelper.java"
.field final synthetic a:Lcom/instagram/android/maps/c/c;
.method constructor <init>(Lcom/instagram/android/maps/c/c;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;
invoke-static {v0}, Lcom/instagram/android/maps/c/c;->b(Lcom/instagram/android/maps/c/c;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x0
const-wide/16 v2, 0x3e8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
return-void
.end method
.method protected final a(Ljava/lang/Object;)V
.registers 6
const/4 v3, 0x1
iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;
invoke-static {v0}, Lcom/instagram/android/maps/c/c;->b(Lcom/instagram/android/maps/c/c;)Landroid/os/Handler;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->k()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_17
:goto_17
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_35
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/android/h/b;
invoke-static {}, Lcom/instagram/feed/d/y;->a()Lcom/instagram/feed/d/y;
move-result-object v2
invoke-virtual {v0}, Lcom/instagram/android/h/b;->f()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/instagram/feed/d/y;->b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
move-result-object v0
if-eqz v0, :cond_17
invoke-virtual {v0}, Lcom/instagram/feed/d/l;->T()V
goto :goto_17
:cond_35
invoke-static {}, Lcom/instagram/android/maps/e/a;->a()Lcom/instagram/android/maps/e/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/e/a;->i()V
const-string v0, "com.instagram.android.maps.manager.MapReviewed"
invoke-static {v0}, Lcom/instagram/common/u/d;->a(Ljava/lang/String;)Z
iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;
invoke-static {v0, v3}, Lcom/instagram/android/maps/c/c;->a(Lcom/instagram/android/maps/c/c;Z)V
iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;
invoke-static {v0}, Lcom/instagram/android/maps/c/c;->c(Lcom/instagram/android/maps/c/c;)I
move-result v0
sget v1, Lcom/instagram/android/maps/e/f;->b:I
if-ne v0, v1, :cond_60
iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;
invoke-static {v0}, Lcom/instagram/android/maps/c/c;->d(Lcom/instagram/android/maps/c/c;)Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->your_map_is_now_ready:I
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_5f
return-void
:cond_60
iget-object v0, p0, Lcom/instagram/android/maps/c/j;->a:Lcom/instagram/android/maps/c/c;
invoke-static {v0}, Lcom/instagram/android/maps/c/c;->d(Lcom/instagram/android/maps/c/c;)Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->changes_saved:I
invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
goto :goto_5f
.end method