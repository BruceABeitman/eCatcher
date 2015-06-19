.class public final Lcom/google/android/gms/internal/eh$e;
.super Lcom/google/android/gms/internal/em$a;


# instance fields
.field private BF:Lcom/google/android/gms/internal/eh;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/eh;)V
    .registers 2

    invoke-direct {p0}, Lcom/google/android/gms/internal/em$a;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/eh$e;->BF:Lcom/google/android/gms/internal/eh;

    return-void
.end method


# virtual methods
.method public final b(ILandroid/os/IBinder;Landroid/os/Bundle;)V
    .registers 6

    const-string v0, "onPostInitComplete can be called only once per call to getServiceFromBroker"

    iget-object v1, p0, Lcom/google/android/gms/internal/eh$e;->BF:Lcom/google/android/gms/internal/eh;

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/er;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/google/android/gms/internal/eh$e;->BF:Lcom/google/android/gms/internal/eh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/eh;->a(ILandroid/os/IBinder;Landroid/os/Bundle;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/eh$e;->BF:Lcom/google/android/gms/internal/eh;

    return-void
.end method
