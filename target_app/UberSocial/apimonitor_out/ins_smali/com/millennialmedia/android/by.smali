.class  Lcom/millennialmedia/android/by;
.super Landroid/view/View;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/android/MMAdView;
.method public constructor <init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/by;->a:Lcom/millennialmedia/android/MMAdView;
invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V
return-void
.end method
.method declared-synchronized a(Landroid/view/View;)V
.registers 3
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/by;->a:Lcom/millennialmedia/android/MMAdView;
invoke-static {v0, p1}, Lcom/millennialmedia/android/MMAdView;->b(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/by;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lcom/millennialmedia/android/by;->getParent()Landroid/view/ViewParent;
move-result-object v0
instance-of v0, v0, Landroid/view/ViewGroup;
if-eqz v0, :cond_1d
invoke-virtual {p0}, Lcom/millennialmedia/android/by;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:try_end_1d
.catchall {:try_start_1 .. :try_end_1d} :catchall_1f
:cond_1d
monitor-exit p0
return-void
:catchall_1f
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lcom/millennialmedia/android/by; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "MMAdView"
const-string v1, "onRestoreInstanceState"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/by;->a:Lcom/millennialmedia/android/MMAdView;
iget-object v1, p0, Lcom/millennialmedia/android/by;->a:Lcom/millennialmedia/android/MMAdView;
invoke-static {v0, v1}, Lcom/millennialmedia/android/MMAdView;->a(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V
const-string v1, " - Lcom/millennialmedia/android/by; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lcom/millennialmedia/android/by; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "MMAdView"
const-string v1, "onSaveInstanceState"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/by;->a:Lcom/millennialmedia/android/MMAdView;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/by;->a(Landroid/view/View;)V
invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
move-object v2, v0
const-string v1, " - Lcom/millennialmedia/android/by; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v0, v2
return-object v0
.end method