.class final Lcom/instagram/android/maps/d/m;
.super Ljava/lang/Object;
.source "ReviewPhotoMapFragment.java"
.implements Lcom/instagram/android/maps/e/d;
.field final synthetic a:Lcom/instagram/android/maps/d/l;
.method constructor <init>(Lcom/instagram/android/maps/d/l;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/d/m;->a:Lcom/instagram/android/maps/d/l;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/android/maps/d/m;->a:Lcom/instagram/android/maps/d/l;
invoke-static {v0}, Lcom/instagram/android/maps/d/l;->a(Lcom/instagram/android/maps/d/l;)Lcom/instagram/android/a/n;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/a/n;->notifyDataSetChanged()V
return-void
.end method