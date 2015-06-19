.class public Lcom/google/android/gms/maps/aa;
.super Landroid/support/v4/app/Fragment;


# instance fields
.field private final a:Lcom/google/android/gms/maps/ac;

.field private b:Lcom/google/android/gms/maps/c;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    new-instance v0, Lcom/google/android/gms/maps/ac;

    invoke-direct {v0, p0}, Lcom/google/android/gms/maps/ac;-><init>(Landroid/support/v4/app/Fragment;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    return-void
.end method

.method public static a()Lcom/google/android/gms/maps/aa;
    .registers 1

    new-instance v0, Lcom/google/android/gms/maps/aa;

    invoke-direct {v0}, Lcom/google/android/gms/maps/aa;-><init>()V

    return-object v0
.end method

.method public static a(Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/aa;
    .registers 4

    new-instance v0, Lcom/google/android/gms/maps/aa;

    invoke-direct {v0}, Lcom/google/android/gms/maps/aa;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/aa;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method protected b()Lcom/google/android/gms/maps/a/j;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ac;->g()V

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ac;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ac;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/ab;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ab;->h()Lcom/google/android/gms/maps/a/j;

    move-result-object v0

    goto :goto_e
.end method

.method public final c()Lcom/google/android/gms/maps/c;
    .registers 4

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/google/android/gms/maps/aa;->b()Lcom/google/android/gms/maps/a/j;

    move-result-object v1

    if-nez v1, :cond_8

    :cond_7
    :goto_7
    return-object v0

    :cond_8
    :try_start_8
    invoke-interface {v1}, Lcom/google/android/gms/maps/a/j;->a()Lcom/google/android/gms/maps/a/d;
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_b} :catch_2c

    move-result-object v1

    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->b:Lcom/google/android/gms/maps/c;

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->b:Lcom/google/android/gms/maps/c;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/c;->a()Lcom/google/android/gms/maps/a/d;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/maps/a/d;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v1}, Lcom/google/android/gms/maps/a/d;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-eq v0, v2, :cond_29

    :cond_22
    new-instance v0, Lcom/google/android/gms/maps/c;

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/c;-><init>(Lcom/google/android/gms/maps/a/d;)V

    iput-object v0, p0, Lcom/google/android/gms/maps/aa;->b:Lcom/google/android/gms/maps/c;

    :cond_29
    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->b:Lcom/google/android/gms/maps/c;

    goto :goto_7

    :catch_2c
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_b

    const-class v0, Lcom/google/android/gms/maps/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/ac;->a(Lcom/google/android/gms/maps/ac;Landroid/app/Activity;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/ac;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/maps/ac;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ac;->e()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ac;->d()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-static {v0, p1}, Lcom/google/android/gms/maps/ac;->a(Lcom/google/android/gms/maps/ac;Landroid/app/Activity;)V

    invoke-static {p1, p2}, Lcom/google/android/gms/maps/GoogleMapOptions;->a(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/google/android/gms/maps/GoogleMapOptions;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "MapOptions"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0, p1, v1, p3}, Lcom/google/android/gms/maps/ac;->a(Landroid/app/Activity;Landroid/os/Bundle;Landroid/os/Bundle;)V

    return-void
.end method

.method public onLowMemory()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ac;->f()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    return-void
.end method

.method public onPause()V
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ac;->c()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/ac;->b()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 3

    if-eqz p1, :cond_b

    const-class v0, Lcom/google/android/gms/maps/aa;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    :cond_b
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/google/android/gms/maps/aa;->a:Lcom/google/android/gms/maps/ac;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/ac;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-void
.end method
