.class final Lcom/instagram/android/maps/f;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:I
.field final synthetic b:Lcom/google/android/maps/GeoPoint;
.field final synthetic c:Lcom/instagram/android/maps/PhotoMapsActivity;
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;ILcom/google/android/maps/GeoPoint;)V
.registers 4
iput-object p1, p0, Lcom/instagram/android/maps/f;->c:Lcom/instagram/android/maps/PhotoMapsActivity;
iput p2, p0, Lcom/instagram/android/maps/f;->a:I
iput-object p3, p0, Lcom/instagram/android/maps/f;->b:Lcom/google/android/maps/GeoPoint;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/f;->c:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->h(Lcom/instagram/android/maps/PhotoMapsActivity;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/g;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/g;-><init>(Lcom/instagram/android/maps/f;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method