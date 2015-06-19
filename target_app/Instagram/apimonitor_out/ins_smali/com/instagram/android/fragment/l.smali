.class final Lcom/instagram/android/fragment/l;
.super Ljava/lang/Object;
.source "CameraSettingsFragment.java"
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.field final synthetic a:Lcom/instagram/android/fragment/k;
.method constructor <init>(Lcom/instagram/android/fragment/k;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/fragment/l;->a:Lcom/instagram/android/fragment/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
.registers 5
invoke-static {}, Lcom/instagram/k/a/b;->a()Lcom/instagram/k/a/b;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/instagram/k/a/b;->b(Z)Z
if-eqz p2, :cond_10
iget-object v0, p0, Lcom/instagram/android/fragment/l;->a:Lcom/instagram/android/fragment/k;
sget v1, Lcom/facebook/az;->instagram_camera_warning:I
invoke-static {v0, v1, p1}, Lcom/instagram/android/fragment/k;->a(Lcom/instagram/android/fragment/k;ILandroid/widget/CompoundButton;)V
:cond_10
return-void
.end method