.class final Lcom/instagram/android/maps/d/f;
.super Ljava/lang/Object;
.source "GeoGridFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/maps/d/a;
.method constructor <init>(Lcom/instagram/android/maps/d/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/d/f;->a:Lcom/instagram/android/maps/d/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/d/f;->a:Lcom/instagram/android/maps/d/a;
invoke-static {v0}, Lcom/instagram/android/maps/d/a;->d(Lcom/instagram/android/maps/d/a;)Z
iget-object v0, p0, Lcom/instagram/android/maps/d/f;->a:Lcom/instagram/android/maps/d/a;
invoke-static {v0}, Lcom/instagram/android/maps/d/a;->b(Lcom/instagram/android/maps/d/a;)V
return-void
.end method