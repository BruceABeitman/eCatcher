.class final Lcom/instagram/android/maps/w;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Lcom/instagram/android/maps/ui/a/b;
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
invoke-static {}, Lcom/instagram/android/maps/ui/ah;->h()V
iget-object v0, p0, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Z)V
return-void
.end method
.method public final b()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/maps/w;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/x;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/x;-><init>(Lcom/instagram/android/maps/w;)V
const-wide/16 v2, 0x15e
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method