.class Lcom/google/android/gms/internal/jd$2$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/jd$2;->a(Lcom/google/android/gms/internal/jh;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic VD:Lcom/google/android/gms/internal/jd$2;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/jd$2;)V
    .registers 2

    iput-object p1, p0, Lcom/google/android/gms/internal/jd$2$1;->VD:Lcom/google/android/gms/internal/jd$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/internal/jd$2$1;->VD:Lcom/google/android/gms/internal/jd$2;

    invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->cK(I)Lcom/google/android/gms/common/api/Status;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jd$2;->b(Lcom/google/android/gms/common/api/Result;)V

    return-void
.end method

.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
    .registers 5

    const-string v0, "GeofencingImpl"

    const-string v1, "Request ID callback shouldn\'t have been called"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
