.class final Lcom/instagram/android/maps/m;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/maps/l;
.method constructor <init>(Lcom/instagram/android/maps/l;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/m;->a:Lcom/instagram/android/maps/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/m;->a:Lcom/instagram/android/maps/l;
iget-object v0, v0, Lcom/instagram/android/maps/l;->a:Lcom/instagram/android/maps/k;
iget-object v0, v0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v0, v0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/ui/m;->dismiss()V
return-void
.end method