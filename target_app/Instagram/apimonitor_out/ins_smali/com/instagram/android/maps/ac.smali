.class final Lcom/instagram/android/maps/ac;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Landroid/content/DialogInterface$OnCancelListener;
.field final synthetic a:Lcom/instagram/android/maps/PhotoMapsActivity;
.method constructor <init>(Lcom/instagram/android/maps/PhotoMapsActivity;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ac;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCancel(Landroid/content/DialogInterface;)V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/ac;->a:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-virtual {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->onBackPressed()V
return-void
.end method