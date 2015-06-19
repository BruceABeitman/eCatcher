.class final Lcom/instagram/android/maps/d/b;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"
.implements Lcom/instagram/android/maps/e/d;
.field final synthetic a:Lcom/instagram/android/maps/d/a;
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;
invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->D()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_16
iget-object v0, p0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;
invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->D()Landroid/view/View;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/d/c;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/d/c;-><init>(Lcom/instagram/android/maps/d/b;)V
invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
:cond_16
return-void
.end method