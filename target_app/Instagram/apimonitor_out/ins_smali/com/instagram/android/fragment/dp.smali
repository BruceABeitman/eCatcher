.class final Lcom/instagram/android/fragment/dp;
.super Ljava/lang/Object;
.source "PreloadOptionsFragment.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/instagram/k/b/a;
.field final synthetic b:Lcom/instagram/android/fragment/dl;
.method constructor <init>(Lcom/instagram/android/fragment/dl;Lcom/instagram/k/b/a;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/fragment/dp;->b:Lcom/instagram/android/fragment/dl;
iput-object p2, p0, Lcom/instagram/android/fragment/dp;->a:Lcom/instagram/k/b/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/fragment/dp;->a:Lcom/instagram/k/b/a;
invoke-virtual {v0, p2}, Lcom/instagram/k/b/a;->f(Z)Z
new-instance v0, Lcom/instagram/common/analytics/b;
const-string v1, "instagram_setting_save_captured_videos_clicked"
iget-object v2, p0, Lcom/instagram/android/fragment/dp;->b:Lcom/instagram/android/fragment/dl;
invoke-direct {v0, v1, v2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
const-string v1, "enabled"
invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V
return-void
.end method