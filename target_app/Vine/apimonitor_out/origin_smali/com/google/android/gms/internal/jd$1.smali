.class Lcom/google/android/gms/internal/jd$1;
.super Lcom/google/android/gms/internal/jd$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jd;->addGeofences(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VA:Landroid/app/PendingIntent;

.field final synthetic VB:Lcom/google/android/gms/internal/jd;

.field final synthetic Vz:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jd;Ljava/util/List;Landroid/app/PendingIntent;)V
    .registers 5

    iput-object p1, p0, Lcom/google/android/gms/internal/jd$1;->VB:Lcom/google/android/gms/internal/jd;

    iput-object p2, p0, Lcom/google/android/gms/internal/jd$1;->Vz:Ljava/util/List;

    iput-object p3, p0, Lcom/google/android/gms/internal/jd$1;->VA:Landroid/app/PendingIntent;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/android/gms/internal/jd$a;-><init>(Lcom/google/android/gms/internal/jd$1;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/jh;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/jd$1;->a(Lcom/google/android/gms/internal/jh;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/jh;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/google/android/gms/internal/jd$1$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/jd$1$1;-><init>(Lcom/google/android/gms/internal/jd$1;)V

    iget-object v1, p0, Lcom/google/android/gms/internal/jd$1;->Vz:Ljava/util/List;

    iget-object v2, p0, Lcom/google/android/gms/internal/jd$1;->VA:Landroid/app/PendingIntent;

    invoke-virtual {p1, v1, v2, v0}, Lcom/google/android/gms/internal/jh;->addGeofences(Ljava/util/List;Landroid/app/PendingIntent;Lcom/google/android/gms/location/LocationClient$OnAddGeofencesResultListener;)V

    return-void
.end method
