.class final Lcom/instagram/android/maps/k;
.super Ljava/lang/Object;
.source "PhotoMapsActivity.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/maps/b/f;
.field final synthetic b:Lcom/instagram/android/maps/j;
.method constructor <init>(Lcom/instagram/android/maps/j;Lcom/instagram/android/maps/b/f;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iput-object p2, p0, Lcom/instagram/android/maps/k;->a:Lcom/instagram/android/maps/b/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 9
const/4 v7, 0x0
iget-object v0, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v6, v0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
new-instance v0, Lcom/instagram/android/maps/ui/m;
iget-object v1, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v1, v1, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
iget-object v2, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v2, v2, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-virtual {v2}, Lcom/instagram/android/maps/PhotoMapsActivity;->d()Lcom/instagram/android/maps/ui/af;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v3, v3, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
iget-object v3, p0, Lcom/instagram/android/maps/k;->a:Lcom/instagram/android/maps/b/f;
invoke-static {v3}, Lcom/instagram/android/maps/PhotoMapsActivity;->b(Lcom/instagram/android/maps/b/f;)Ljava/util/List;
move-result-object v3
iget-object v4, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v4, v4, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v4}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
move-result-object v4
iget-object v5, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v5, v5, Lcom/instagram/android/maps/j;->a:Lcom/instagram/android/maps/ui/ah;
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/maps/ui/m;-><init>(Landroid/content/Context;Lcom/instagram/android/maps/ui/af;Ljava/util/List;Landroid/view/View;Lcom/instagram/android/maps/ui/ah;)V
invoke-static {v6, v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->a(Lcom/instagram/android/maps/PhotoMapsActivity;Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/m;
iget-object v0, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v0, v0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v1, v1, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v1}, Lcom/instagram/android/maps/PhotoMapsActivity;->g(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/i;
move-result-object v1
const/16 v2, 0x33
invoke-virtual {v0, v1, v2, v7, v7}, Lcom/instagram/android/maps/ui/m;->showAtLocation(Landroid/view/View;III)V
iget-object v0, p0, Lcom/instagram/android/maps/k;->b:Lcom/instagram/android/maps/j;
iget-object v0, v0, Lcom/instagram/android/maps/j;->b:Lcom/instagram/android/maps/PhotoMapsActivity;
invoke-static {v0}, Lcom/instagram/android/maps/PhotoMapsActivity;->f(Lcom/instagram/android/maps/PhotoMapsActivity;)Lcom/instagram/android/maps/ui/m;
move-result-object v0
new-instance v1, Lcom/instagram/android/maps/l;
invoke-direct {v1, p0}, Lcom/instagram/android/maps/l;-><init>(Lcom/instagram/android/maps/k;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/d;)V
return-void
.end method