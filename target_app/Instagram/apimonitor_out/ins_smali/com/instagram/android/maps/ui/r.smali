.class final Lcom/instagram/android/maps/ui/r;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"
.implements Lcom/instagram/android/maps/ui/d;
.field final synthetic a:Lcom/instagram/android/maps/ui/q;
.method constructor <init>(Lcom/instagram/android/maps/ui/q;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/r;->a:Lcom/instagram/android/maps/ui/q;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/maps/ui/r;->a:Lcom/instagram/android/maps/ui/q;
iget-object v0, v0, Lcom/instagram/android/maps/ui/q;->c:Lcom/instagram/android/maps/ui/m;
invoke-static {v0}, Lcom/instagram/android/maps/ui/m;->e(Lcom/instagram/android/maps/ui/m;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/ui/s;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/ui/s;-><init>(Lcom/instagram/android/maps/ui/r;)V
const-wide/16 v2, 0x32
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method