.class final Lcom/instagram/android/maps/ui/t;
.super Ljava/lang/Object;
.source "MapMediaPopup.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/instagram/android/maps/ui/m;
.method constructor <init>(Lcom/instagram/android/maps/ui/m;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/maps/ui/t;->a:Lcom/instagram/android/maps/ui/m;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/maps/ui/t;->a:Lcom/instagram/android/maps/ui/m;
iget-object v1, p0, Lcom/instagram/android/maps/ui/t;->a:Lcom/instagram/android/maps/ui/m;
invoke-static {v1}, Lcom/instagram/android/maps/ui/m;->d(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/ah;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;
move-result-object v1
iget v1, v1, Landroid/graphics/Point;->x:I
iget-object v2, p0, Lcom/instagram/android/maps/ui/t;->a:Lcom/instagram/android/maps/ui/m;
invoke-static {v2}, Lcom/instagram/android/maps/ui/m;->d(Lcom/instagram/android/maps/ui/m;)Lcom/instagram/android/maps/ui/ah;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/maps/ui/ah;->g()Landroid/graphics/Point;
move-result-object v2
iget v2, v2, Landroid/graphics/Point;->y:I
invoke-static {v0, v1, v2}, Lcom/instagram/android/maps/ui/m;->a(Lcom/instagram/android/maps/ui/m;II)V
return-void
.end method