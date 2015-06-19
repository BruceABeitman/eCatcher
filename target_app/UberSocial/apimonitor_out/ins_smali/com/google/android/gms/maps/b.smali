.class public final Lcom/google/android/gms/maps/b;
.super Ljava/lang/Object;
.field private static a:Lcom/google/android/gms/maps/a/a;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a()Lcom/google/android/gms/maps/a;
.registers 2
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1}, Lcom/google/android/gms/maps/a/a;->a()Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static a(F)Lcom/google/android/gms/maps/a;
.registers 3
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1, p0}, Lcom/google/android/gms/maps/a/a;->a(F)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static a(FF)Lcom/google/android/gms/maps/a;
.registers 4
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/a/a;->a(FF)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static a(FLandroid/graphics/Point;)Lcom/google/android/gms/maps/a;
.registers 6
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
iget v2, p1, Landroid/graphics/Point;->x:I
iget v3, p1, Landroid/graphics/Point;->y:I
invoke-interface {v1, p0, v2, v3}, Lcom/google/android/gms/maps/a/a;->a(FII)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_11
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_11} :catch_12
return-object v0
:catch_12
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/maps/a;
.registers 3
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1, p0}, Lcom/google/android/gms/maps/a/a;->a(Lcom/google/android/gms/maps/model/CameraPosition;)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/a;
.registers 3
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1, p0}, Lcom/google/android/gms/maps/a/a;->a(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/a;
.registers 4
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/a/a;->a(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/maps/a;
.registers 4
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1, p0, p1}, Lcom/google/android/gms/maps/a/a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;I)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/maps/a;
.registers 6
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1, p0, p1, p2, p3}, Lcom/google/android/gms/maps/a/a;->a(Lcom/google/android/gms/maps/model/LatLngBounds;III)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method static a(Lcom/google/android/gms/maps/a/a;)V
.registers 2
sget-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/a/a;
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
invoke-static {p0}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/a/a;
sput-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/a/a;
goto :goto_4
.end method
.method public static b()Lcom/google/android/gms/maps/a;
.registers 2
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1}, Lcom/google/android/gms/maps/a/a;->b()Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public static b(F)Lcom/google/android/gms/maps/a;
.registers 3
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/a;
invoke-static {}, Lcom/google/android/gms/maps/b;->c()Lcom/google/android/gms/maps/a/a;
move-result-object v1
invoke-interface {v1, p0}, Lcom/google/android/gms/maps/a/a;->b(F)Lcom/google/android/gms/c/d;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/a;-><init>(Lcom/google/android/gms/c/d;)V
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e
return-object v0
:catch_e
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method private static c()Lcom/google/android/gms/maps/a/a;
.registers 2
sget-object v0, Lcom/google/android/gms/maps/b;->a:Lcom/google/android/gms/maps/a/a;
const-string v1, "CameraUpdateFactory is not initialized"
invoke-static {v0, v1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/a/a;
return-object v0
.end method