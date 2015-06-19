.class Lcom/google/android/gms/maps/x;
.super Lcom/google/android/gms/c/b;


# instance fields
.field protected a:Lcom/google/android/gms/c/h;

.field private final b:Landroid/view/ViewGroup;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/maps/GoogleMapOptions;


# direct methods
.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMapOptions;)V
    .registers 4

    invoke-direct {p0}, Lcom/google/android/gms/c/b;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/maps/x;->b:Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/google/android/gms/maps/x;->c:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/gms/maps/x;->d:Lcom/google/android/gms/maps/GoogleMapOptions;

    return-void
.end method


# virtual methods
.method protected a(Lcom/google/android/gms/c/h;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/maps/x;->a:Lcom/google/android/gms/c/h;

    invoke-virtual {p0}, Lcom/google/android/gms/maps/x;->g()V

    return-void
.end method

.method public g()V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/maps/x;->a:Lcom/google/android/gms/c/h;

    if-eqz v0, :cond_28

    invoke-virtual {p0}, Lcom/google/android/gms/maps/x;->a()Lcom/google/android/gms/c/a;

    move-result-object v0

    if-nez v0, :cond_28

    :try_start_a
    iget-object v0, p0, Lcom/google/android/gms/maps/x;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/gms/maps/a/bn;->a(Landroid/content/Context;)Lcom/google/android/gms/maps/a/z;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/x;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/maps/x;->d:Lcom/google/android/gms/maps/GoogleMapOptions;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/maps/a/z;->a(Lcom/google/android/gms/c/d;Lcom/google/android/gms/maps/GoogleMapOptions;)Lcom/google/android/gms/maps/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/maps/x;->a:Lcom/google/android/gms/c/h;

    new-instance v2, Lcom/google/android/gms/maps/w;

    iget-object v3, p0, Lcom/google/android/gms/maps/x;->b:Landroid/view/ViewGroup;

    invoke-direct {v2, v3, v0}, Lcom/google/android/gms/maps/w;-><init>(Landroid/view/ViewGroup;Lcom/google/android/gms/maps/a/m;)V

    invoke-interface {v1, v2}, Lcom/google/android/gms/c/h;->a(Lcom/google/android/gms/c/a;)V
    :try_end_28
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_28} :catch_29
    .catch Lcom/google/android/gms/common/g; {:try_start_a .. :try_end_28} :catch_30

    :cond_28
    :goto_28
    return-void

    :catch_29
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1

    :catch_30
    move-exception v0

    goto :goto_28
.end method
