.class public Lcom/google/android/gms/maps/MapView;
.super Landroid/widget/FrameLayout;
.field private final a:Lcom/google/android/gms/maps/x;
.field private b:Lcom/google/android/gms/maps/c;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/maps/x;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/x;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/google/android/gms/maps/x;
invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v1
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/x;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 6
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/google/android/gms/maps/x;
invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;
move-result-object v1
invoke-direct {v0, p0, p1, v1}, Lcom/google/android/gms/maps/x;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
.registers 4
invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/google/android/gms/maps/x;
invoke-direct {v0, p0, p1, p2}, Lcom/google/android/gms/maps/x;-><init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
iput-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0}, Lcom/google/android/gms/maps/x;->b()V
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/x;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0}, Lcom/google/android/gms/maps/x;->a()Lcom/google/android/gms/c/a;
move-result-object v0
if-nez v0, :cond_12
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-static {p0}, Lcom/google/android/gms/maps/x;->b(Landroid/widget/FrameLayout;)V
:cond_12
return-void
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0}, Lcom/google/android/gms/maps/x;->c()V
return-void
.end method
.method public final b(Landroid/os/Bundle;)V
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/x;->b(Landroid/os/Bundle;)V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0}, Lcom/google/android/gms/maps/x;->e()V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0}, Lcom/google/android/gms/maps/x;->f()V
return-void
.end method
.method public final getMap()Lcom/google/android/gms/maps/c;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->b:Lcom/google/android/gms/maps/c;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->b:Lcom/google/android/gms/maps/c;
:goto_6
return-object v0
:cond_7
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0}, Lcom/google/android/gms/maps/x;->g()V
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0}, Lcom/google/android/gms/maps/x;->a()Lcom/google/android/gms/c/a;
move-result-object v0
if-nez v0, :cond_16
const/4 v0, 0x0
goto :goto_6
:cond_16
:try_start_16
new-instance v1, Lcom/google/android/gms/maps/c;
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->a:Lcom/google/android/gms/maps/x;
invoke-virtual {v0}, Lcom/google/android/gms/maps/x;->a()Lcom/google/android/gms/c/a;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/w;
invoke-virtual {v0}, Lcom/google/android/gms/maps/w;->h()Lcom/google/android/gms/maps/a/m;
move-result-object v0
invoke-interface {v0}, Lcom/google/android/gms/maps/a/m;->a()Lcom/google/android/gms/maps/a/d;
move-result-object v0
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/c;-><init>(Lcom/google/android/gms/maps/a/d;)V
iput-object v1, p0, Lcom/google/android/gms/maps/MapView;->b:Lcom/google/android/gms/maps/c;
:try_end_2d
.catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_2d} :catch_30
iget-object v0, p0, Lcom/google/android/gms/maps/MapView;->b:Lcom/google/android/gms/maps/c;
goto :goto_6
:catch_30
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method