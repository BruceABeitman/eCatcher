.class final Lcom/instagram/android/maps/ui/y;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"
.implements Lcom/instagram/android/maps/ui/e;
.field final synthetic a:Lcom/instagram/android/maps/ui/m;
.method constructor <init>(Lcom/instagram/android/maps/ui/m;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/y;->a:Lcom/instagram/android/maps/ui/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/ui/y;->a:Lcom/instagram/android/maps/ui/m;
invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->e(Lcom/instagram/android/maps/ui/m;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/ui/z;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/z;-><init>(Lcom/instagram/android/maps/ui/y;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
iget-object v0, p0, Lcom/instagram/android/maps/ui/y;->a:Lcom/instagram/android/maps/ui/m;
invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->f(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/b;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/b;->setReverseAnimationPreFinishListener(Lcom/instagram/android/maps/ui/e;)V
return-void
.end method