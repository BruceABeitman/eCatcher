.class final Lcom/instagram/android/maps/l;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Lcom/instagram/android/maps/ui/d;
.field final synthetic a:Lcom/instagram/android/maps/k;
.method constructor <init>(Lcom/instagram/android/maps/k;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/l;->a:Lcom/instagram/android/maps/k;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 5
iget-object v0, p0, Lcom/instagram/android/maps/l;->a:Lcom/instagram/android/maps/k;
iget-object v0, v0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v0, v0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/m;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/m;-><init>(Lcom/instagram/android/maps/l;)V
const-wide/16 v2, 0x32
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method