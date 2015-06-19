.class public Lcom/google/android/gms/internal/jb;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/location/ActivityRecognitionApi;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public removeActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/jb$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/jb$2;-><init>(Lcom/google/android/gms/internal/jb;Landroid/app/PendingIntent;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public requestActivityUpdates(Lcom/google/android/gms/common/api/GoogleApiClient;JLandroid/app/PendingIntent;)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
new-instance v0, Lcom/google/android/gms/internal/jb$1;
invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/jb$1;-><init>(Lcom/google/android/gms/internal/jb;JLandroid/app/PendingIntent;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method