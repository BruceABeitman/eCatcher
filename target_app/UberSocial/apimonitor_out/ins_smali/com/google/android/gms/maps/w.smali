.class  Lcom/google/android/gms/maps/w;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/c/a;
.field private final a:Landroid/view/ViewGroup;
.field private final b:Lcom/google/android/gms/maps/a/m;
.field private c:Landroid/view/View;
.method public constructor <init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/a/m;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p2}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/maps/a/m;
iput-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/google/android/gms/maps/w;->a:Landroid/view/ViewGroup;
return-void
.end method
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "onCreateView not allowed on MapViewDelegate"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a()V
.registers 1
return-void
.end method
.method public a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V
.registers 6
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "onInflate not allowed on MapViewDelegate"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Landroid/os/Bundle;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/m;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/m;->f()Lcom/google/android/gms/c/d;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/c/g;->a(Lcom/google/android/gms/c/d;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
iput-object v0, p0, Lcom/google/android/gms/maps/w;->c:Landroid/view/View;
iget-object v0, p0, Lcom/google/android/gms/maps/w;->a:Landroid/view/ViewGroup;
invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V
iget-object v0, p0, Lcom/google/android/gms/maps/w;->a:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/google/android/gms/maps/w;->c:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:try_end_1f
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_1f} :catch_20
return-void
:catch_20
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public b()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/m;->b()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public b(Landroid/os/Bundle;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
invoke-interface {v0, p1}, Lcom/google/android/gms/maps/a/m;->b(Landroid/os/Bundle;)V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public c()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/m;->c()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public d()V
.registers 1
return-void
.end method
.method public e()V
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "onDestroyView not allowed on MapViewDelegate"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public f()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/m;->d()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public g()V
.registers 3
:try_start_0
iget-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
invoke-interface {v0}, Lcom/google/android/gms/maps/a/m;->e()V
:try_end_5
.catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_5} :catch_6
return-void
:catch_6
move-exception v0
new-instance v1, Lcom/google/android/gms/maps/model/r;
invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V
throw v1
.end method
.method public h()Lcom/google/android/gms/maps/a/m;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/maps/w;->b:Lcom/google/android/gms/maps/a/m;
return-object v0
.end method