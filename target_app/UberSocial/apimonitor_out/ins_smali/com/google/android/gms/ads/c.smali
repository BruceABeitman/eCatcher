.class public final Lcom/google/android/gms/ads/c;
.super Ljava/lang/Object;
.field private final a:Lcom/google/android/gms/internal/r;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/google/android/gms/internal/r;
invoke-direct {v0}, Lcom/google/android/gms/internal/r;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
return-void
.end method
.method static synthetic a(Lcom/google/android/gms/ads/c;)Lcom/google/android/gms/internal/r;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
return-object v0
.end method
.method public a()Lcom/google/android/gms/ads/b;
.registers 3
new-instance v0, Lcom/google/android/gms/ads/b;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/google/android/gms/ads/b;-><init>(Lcom/google/android/gms/ads/c;Lcom/google/android/gms/ads/b$1;)V
return-object v0
.end method
.method public a(I)Lcom/google/android/gms/ads/c;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->a(I)V
return-object p0
.end method
.method public a(Landroid/location/Location;)Lcom/google/android/gms/ads/c;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->a(Landroid/location/Location;)V
return-object p0
.end method
.method public a(Lcom/google/android/gms/ads/b/a;)Lcom/google/android/gms/ads/c;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->a(Lcom/google/android/gms/ads/b/a;)V
return-object p0
.end method
.method public a(Ljava/lang/String;)Lcom/google/android/gms/ads/c;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->a(Ljava/lang/String;)V
return-object p0
.end method
.method public a(Ljava/util/Date;)Lcom/google/android/gms/ads/c;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->a(Ljava/util/Date;)V
return-object p0
.end method
.method public a(Z)Lcom/google/android/gms/ads/c;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->b(Z)V
return-object p0
.end method
.method public b(Ljava/lang/String;)Lcom/google/android/gms/ads/c;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/ads/c;->a:Lcom/google/android/gms/internal/r;
invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/r;->b(Ljava/lang/String;)V
return-object p0
.end method