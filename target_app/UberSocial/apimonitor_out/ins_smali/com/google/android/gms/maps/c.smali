.class public final Lcom/google/android/gms/maps/c;
.super Ljava/lang/Object;
.field public static final a:I = 0x0
.field public static final b:I = 0x1
.field public static final c:I = 0x2
.field public static final d:I = 0x3
.field public static final e:I = 0x4
.field private final f:Lcom/google/android/gms/maps/a/d;
.field private g:Lcom/google/android/gms/maps/ad;
.method protected constructor <init>(Lcom/google/android/gms/maps/a/d;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/a/d;
iput-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
return-void
.end method
.method  a()Lcom/google/android/gms/maps/a/d;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
return-object v0
.end method
.method public final a(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/e;
.registers 4
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/model/e;
iget-object v1, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v1, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/a/g;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/e;-><init>(Lcom/google/android/gms/maps/model/a/g;)V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/g;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/GroundOverlayOptions;)Lcom/google/android/gms/maps/model/a/j;
move-result-object v1
if-eqz v1, :cond_e
new-instance v0, Lcom/google/android/gms/maps/model/g;
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/g;-><init>(Lcom/google/android/gms/maps/model/a/j;)V
:goto_d
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_10
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
:catch_10
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/l;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/MarkerOptions;)Lcom/google/android/gms/maps/model/a/m;
move-result-object v1
if-eqz v1, :cond_e
new-instance v0, Lcom/google/android/gms/maps/model/l;
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/l;-><init>(Lcom/google/android/gms/maps/model/a/m;)V
:goto_d
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_10
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
:catch_10
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/n;
.registers 4
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/model/n;
iget-object v1, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v1, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/a/p;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/n;-><init>(Lcom/google/android/gms/maps/model/a/p;)V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/p;
.registers 4
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/model/p;
iget-object v1, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v1, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/a/a;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/p;-><init>(Lcom/google/android/gms/maps/model/a/a;)V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/t;
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/model/TileOverlayOptions;)Lcom/google/android/gms/maps/model/a/s;
move-result-object v1
if-eqz v1, :cond_e
new-instance v0, Lcom/google/android/gms/maps/model/t;
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/model/t;-><init>(Lcom/google/android/gms/maps/model/a/s;)V
:goto_d
:try_end_d
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_10
return-object v0
:cond_e
const/4 v0, 0x0
goto :goto_d
:catch_10
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(I)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->a(I)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(IIII)V
.registers 7
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/a/d;->a(IIII)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/a;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/c/d;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/c/d;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/a;ILcom/google/android/gms/maps/d;)V
.registers 7
:try_start_0
iget-object v1, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/c/d;
move-result-object v2
if-nez p3, :cond_d
const/4 v0, 0x0
:goto_9
invoke-interface {v1, v2, p2, v0}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/c/d;ILcom/google/android/gms/maps/a/w;)V
return-void
:cond_d
new-instance v0, Lcom/google/android/gms/maps/p;
invoke-direct {v0, p3}, Lcom/google/android/gms/maps/p;-><init>(Lcom/google/android/gms/maps/d;)V
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
goto :goto_9
:catch_13
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/a;Lcom/google/android/gms/maps/d;)V
.registers 6
:try_start_0
iget-object v1, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/c/d;
move-result-object v2
if-nez p2, :cond_d
const/4 v0, 0x0
:goto_9
invoke-interface {v1, v2, v0}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/maps/a/w;)V
return-void
:cond_d
new-instance v0, Lcom/google/android/gms/maps/p;
invoke-direct {v0, p2}, Lcom/google/android/gms/maps/p;-><init>(Lcom/google/android/gms/maps/d;)V
:try_end_12
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13
goto :goto_9
:catch_13
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/e;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ac;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$3;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$3;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/e;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ac;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/f;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/af;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$8;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$8;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/f;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/af;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/g;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ai;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$2;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$2;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/g;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ai;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/h;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ao;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$9;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$9;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/h;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ao;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public a(Lcom/google/android/gms/maps/i;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ar;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$6;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$6;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/i;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ar;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/j;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/au;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$10;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$10;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/j;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/au;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/k;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ax;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$11;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$11;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/k;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ax;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/l;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ba;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$12;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$12;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/l;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/ba;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/m;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bd;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$5;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$5;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/m;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bd;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/n;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bg;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$4;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$4;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/n;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bg;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/o;)V
.registers 3
const/4 v0, 0x0
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/maps/c;->a(Lcom/google/android/gms/maps/o;Landroid/graphics/Bitmap;)V
return-void
.end method
.method public final a(Lcom/google/android/gms/maps/o;Landroid/graphics/Bitmap;)V
.registers 6
if-eqz p2, :cond_15
invoke-static {p2}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;
move-result-object v0
:goto_6
check-cast v0, Lcom/google/android/gms/c/g;
check-cast v0, Lcom/google/android/gms/c/g;
:try_start_a
iget-object v1, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v2, Lcom/google/android/gms/maps/c$7;
invoke-direct {v2, p0, p1}, Lcom/google/android/gms/maps/c$7;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/o;)V
invoke-interface {v1, v2, v0}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/bj;Lcom/google/android/gms/c/d;)V
:try_end_14
.catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_17
return-void
:cond_15
const/4 v0, 0x0
goto :goto_6
:catch_17
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Lcom/google/android/gms/maps/r;)V
.registers 4
if-nez p1, :cond_9
:try_start_2
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
const/4 v1, 0x0
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/g;)V
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
new-instance v1, Lcom/google/android/gms/maps/c$1;
invoke-direct {v1, p0, p1}, Lcom/google/android/gms/maps/c$1;-><init>(Lcom/google/android/gms/maps/c;Lcom/google/android/gms/maps/r;)V
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->a(Lcom/google/android/gms/maps/a/g;)V
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_13} :catch_14
goto :goto_8
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final a(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->a(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final b()Lcom/google/android/gms/maps/model/CameraPosition;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->a()Lcom/google/android/gms/maps/model/CameraPosition;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
return-object v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final b(Lcom/google/android/gms/maps/a;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-virtual {p1}, Lcom/google/android/gms/maps/a;->a()Lcom/google/android/gms/c/d;
move-result-object v1
invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/d;->b(Lcom/google/android/gms/c/d;)V
:try_end_9
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final b(Z)Z
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->b(Z)Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final c()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->b()F
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final c(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->d(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final d()F
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->c()F
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final d(Z)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/d;->c(Z)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final e()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->d()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final f()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->e()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final g()I
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->f()I
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final h()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->g()Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final i()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->h()Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final j()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->n()Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final k()Z
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->i()Z
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result v0
return v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final l()Landroid/location/Location;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->j()Landroid/location/Location;
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_7
move-result-object v0
return-object v0
:catch_7
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final m()Lcom/google/android/gms/maps/ad;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/c;->g:Lcom/google/android/gms/maps/ad;
if-nez v0, :cond_11
new-instance v0, Lcom/google/android/gms/maps/ad;
iget-object v1, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v1}, Lcom/google/android/gms/maps/a/d;->k()Lcom/google/android/gms/maps/a/s;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/ad;-><init>(Lcom/google/android/gms/maps/a/s;)V
iput-object v0, p0, Lcom/google/android/gms/maps/c;->g:Lcom/google/android/gms/maps/ad;
:cond_11
iget-object v0, p0, Lcom/google/android/gms/maps/c;->g:Lcom/google/android/gms/maps/ad;
:try_end_13
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_14
return-object v0
:catch_14
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public final n()Lcom/google/android/gms/maps/z;
.registers 3
:try_start_0
new-instance v0, Lcom/google/android/gms/maps/z;
iget-object v1, p0, Lcom/google/android/gms/maps/c;->f:Lcom/google/android/gms/maps/a/d;
invoke-interface {v1}, Lcom/google/android/gms/maps/a/d;->l()Lcom/google/android/gms/maps/a/p;
move-result-object v1
invoke-direct {v0, v1}, Lcom/google/android/gms/maps/z;-><init>(Lcom/google/android/gms/maps/a/p;)V
:try_end_b
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_c
return-object v0
:catch_c
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method