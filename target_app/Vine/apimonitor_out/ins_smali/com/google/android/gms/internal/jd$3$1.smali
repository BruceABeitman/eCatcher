.class  Lcom/google/android/gms/internal/jd$3$1;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;
.field final synthetic VF:Lcom/google/android/gms/internal/jd$3;
.method constructor <init>(Lcom/google/android/gms/internal/jd$3;)V
.registers 2
iput-object p1, p0, Lcom/google/android/gms/internal/jd$3$1;->VF:Lcom/google/android/gms/internal/jd$3;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
.registers 5
const-string v0, "GeofencingImpl"
const-string v1, "PendingIntent callback shouldn\'t have been called"
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/google/android/gms/internal/jd$3$1;->VF:Lcom/google/android/gms/internal/jd$3;
invoke-static {p1}, Lcom/google/android/gms/location/LocationStatusCodes;->cK(I)Lcom/google/android/gms/common/api/Status;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/jd$3;->b(Lcom/google/android/gms/common/api/Result;)V
return-void
.end method