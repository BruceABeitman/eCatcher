.class Lcom/google/android/gms/maps/GoogleMap$6$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/LocationSource$OnLocationChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/GoogleMap$6;->activate(Lcom/google/android/gms/maps/internal/h;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic Zf:Lcom/google/android/gms/maps/internal/h;

.field final synthetic Zg:Lcom/google/android/gms/maps/GoogleMap$6;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/GoogleMap$6;Lcom/google/android/gms/maps/internal/h;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/GoogleMap$6$1;->Zg:Lcom/google/android/gms/maps/GoogleMap$6;

    iput-object p2, p0, Lcom/google/android/gms/maps/GoogleMap$6$1;->Zf:Lcom/google/android/gms/maps/internal/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLocationChanged(Landroid/location/Location;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/GoogleMap$6$1;->Zf:Lcom/google/android/gms/maps/internal/h;

    invoke-static {p1}, Lcom/google/android/gms/dynamic/e;->h(Ljava/lang/Object;)Lcom/google/android/gms/dynamic/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/internal/h;->k(Lcom/google/android/gms/dynamic/d;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/RuntimeRemoteException;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/RuntimeRemoteException;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
