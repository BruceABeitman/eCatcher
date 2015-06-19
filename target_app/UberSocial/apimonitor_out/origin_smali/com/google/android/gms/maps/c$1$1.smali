.class Lcom/google/android/gms/maps/c$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/maps/s;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/maps/c$1;->a(Lcom/google/android/gms/maps/a/al;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/maps/a/al;

.field final synthetic b:Lcom/google/android/gms/maps/c$1;


# direct methods
.method constructor <init>(Lcom/google/android/gms/maps/c$1;Lcom/google/android/gms/maps/a/al;)V
    .registers 3

    iput-object p1, p0, Lcom/google/android/gms/maps/c$1$1;->b:Lcom/google/android/gms/maps/c$1;

    iput-object p2, p0, Lcom/google/android/gms/maps/c$1$1;->a:Lcom/google/android/gms/maps/a/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/location/Location;)V
    .registers 4

    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/maps/c$1$1;->a:Lcom/google/android/gms/maps/a/al;

    invoke-static {p1}, Lcom/google/android/gms/c/g;->a(Ljava/lang/Object;)Lcom/google/android/gms/c/d;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/maps/a/al;->a(Lcom/google/android/gms/c/d;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    return-void

    :catch_a
    move-exception v0

    new-instance v1, Lcom/google/android/gms/maps/model/r;

    invoke-direct {v1, v0}, Lcom/google/android/gms/maps/model/r;-><init>(Landroid/os/RemoteException;)V

    throw v1
.end method
