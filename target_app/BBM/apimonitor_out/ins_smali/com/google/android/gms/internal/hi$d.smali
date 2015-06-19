.class final Lcom/google/android/gms/internal/hi$d;
.super Lcom/google/android/gms/internal/eh$b;
.field private final Lt:[Ljava/lang/String;
.field final synthetic Lu:Lcom/google/android/gms/internal/hi;
.field private final Ly:I
.field private final mPendingIntent:Landroid/app/PendingIntent;
.field private final yJ:I
.method public constructor <init>(Lcom/google/android/gms/internal/hi;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;ILandroid/app/PendingIntent;)V
.registers 7
const/4 v0, 0x1
iput-object p1, p0, Lcom/google/android/gms/internal/hi$d;->Lu:Lcom/google/android/gms/internal/hi;
invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
if-ne p2, v0, :cond_19
:goto_8
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
iput p2, p0, Lcom/google/android/gms/internal/hi$d;->Ly:I
invoke-static {p4}, Lcom/google/android/gms/location/LocationStatusCodes;->bl(I)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/hi$d;->yJ:I
iput-object p5, p0, Lcom/google/android/gms/internal/hi$d;->mPendingIntent:Landroid/app/PendingIntent;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/hi$d;->Lt:[Ljava/lang/String;
return-void
:cond_19
const/4 v0, 0x0
goto :goto_8
.end method
.method public constructor <init>(Lcom/google/android/gms/internal/hi;ILcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;I[Ljava/lang/String;)V
.registers 7
iput-object p1, p0, Lcom/google/android/gms/internal/hi$d;->Lu:Lcom/google/android/gms/internal/hi;
invoke-direct {p0, p1, p3}, Lcom/google/android/gms/internal/eh$b;-><init>(Lcom/google/android/gms/internal/eh;Ljava/lang/Object;)V
const/4 v0, 0x2
if-ne p2, v0, :cond_1a
const/4 v0, 0x1
:goto_9
invoke-static {v0}, Lcom/google/android/gms/internal/ed;->v(Z)V
iput p2, p0, Lcom/google/android/gms/internal/hi$d;->Ly:I
invoke-static {p4}, Lcom/google/android/gms/location/LocationStatusCodes;->bl(I)I
move-result v0
iput v0, p0, Lcom/google/android/gms/internal/hi$d;->yJ:I
iput-object p5, p0, Lcom/google/android/gms/internal/hi$d;->Lt:[Ljava/lang/String;
const/4 v0, 0x0
iput-object v0, p0, Lcom/google/android/gms/internal/hi$d;->mPendingIntent:Landroid/app/PendingIntent;
return-void
:cond_1a
const/4 v0, 0x0
goto :goto_9
.end method
.method protected final a(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
.registers 5
if-eqz p1, :cond_1d
iget v0, p0, Lcom/google/android/gms/internal/hi$d;->Ly:I
packed-switch v0, :pswitch_data_2e
const-string v0, "LocationClientImpl"
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unsupported action: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/google/android/gms/internal/hi$d;->Ly:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I
:cond_1d
:goto_1d
return-void
:pswitch_1e
iget v0, p0, Lcom/google/android/gms/internal/hi$d;->yJ:I
iget-object v1, p0, Lcom/google/android/gms/internal/hi$d;->mPendingIntent:Landroid/app/PendingIntent;
invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;->onRemoveGeofencesByPendingIntentResult(ILandroid/app/PendingIntent;)V
goto :goto_1d
:pswitch_26
iget v0, p0, Lcom/google/android/gms/internal/hi$d;->yJ:I
iget-object v1, p0, Lcom/google/android/gms/internal/hi$d;->Lt:[Ljava/lang/String;
invoke-interface {p1, v0, v1}, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;->onRemoveGeofencesByRequestIdsResult(I[Ljava/lang/String;)V
goto :goto_1d
:pswitch_data_2e
.packed-switch 0x1
:pswitch_1e
:pswitch_26
.end packed-switch
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;
invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/hi$d;->a(Lcom/google/android/gms/location/LocationClient$OnRemoveGeofencesResultListener;)V
return-void
.end method
.method protected final cP()V
.registers 1
return-void
.end method