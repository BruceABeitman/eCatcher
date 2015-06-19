.class  Lcom/google/android/gms/maps/c$7;
.super Lcom/google/android/gms/maps/a/bk;
.field final synthetic a:Lcom/google/android/gms/maps/o;
.field final synthetic b:Lcom/google/android/gms/maps/c;
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/o;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/c$7;->b:Lcom/google/android/gms/maps/c;
iput-object p2, p0, Lcom/google/android/gms/maps/c$7;->a:Lcom/google/android/gms/maps/o;
invoke-direct {p0}, Lcom/google/android/gms/maps/a/bk;-><init>()V
return-void
.end method
.method public a(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/c$7;->a:Lcom/google/android/gms/maps/o;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/o;->a(Landroid/graphics/Bitmap;)V
return-void
.end method
.method public a(Lcom/google/android/gms/c/d;)V
.registers 4
iget-object v1, p0, Lcom/google/android/gms/maps/c$7;->a:Lcom/google/android/gms/maps/o;
invoke-static {p1}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
invoke-interface {v1, v0}, Lcom/google/android/gms/maps/o;->a(Landroid/graphics/Bitmap;)V
return-void
.end method