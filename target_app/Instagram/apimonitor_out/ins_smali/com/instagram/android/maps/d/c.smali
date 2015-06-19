.class final Lcom/instagram/android/maps/d/c;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/maps/d/b;
.method constructor <init>(Lcom/instagram/android/maps/d/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/d/c;->a:Lcom/instagram/android/maps/d/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/d/c;->a:Lcom/instagram/android/maps/d/b;
iget-object v0, v0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;
invoke-virtual {v0}, Lcom/instagram/android/maps/d/a;->d()Lcom/instagram/android/maps/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/maps/a/a;->notifyDataSetChanged()V
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/a/e;->c()V
iget-object v0, p0, Lcom/instagram/android/maps/d/c;->a:Lcom/instagram/android/maps/d/b;
iget-object v0, v0, Lcom/instagram/android/maps/d/b;->a:Lcom/instagram/android/maps/d/a;
invoke-static {v0}, Lcom/instagram/android/maps/d/a;->a(Lcom/instagram/android/maps/d/a;)V
return-void
.end method