.class  Lcom/google/android/gms/maps/c$2;
.super Lcom/google/android/gms/maps/a/aj;
.field final synthetic a:Lcom/google/android/gms/maps/g;
.field final synthetic b:Lcom/google/android/gms/maps/c;
.method constructor <init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/g;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/maps/c$2;->b:Lcom/google/android/gms/maps/c;
iput-object p2, p0, Lcom/google/android/gms/maps/c$2;->a:Lcom/google/android/gms/maps/g;
invoke-direct {p0}, Lcom/google/android/gms/maps/a/aj;-><init>()V
return-void
.end method
.method public a(Lcom/google/android/gms/maps/model/a/m;)V
.registers 4
iget-object v0, p0, Lcom/google/android/gms/maps/c$2;->a:Lcom/google/android/gms/maps/g;
new-instance v1, Lcom/google/android/gms/maps/model/l;
invoke-direct {v1, p1}, Lcom/google/android/gms/maps/model/l;-><init>(Lcom/google/android/gms/maps/model/a/m;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/g;->a(Lcom/google/android/gms/maps/model/l;)V
return-void
.end method