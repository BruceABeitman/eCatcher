.class public final Lcom/google/android/gms/internal/km;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/plus/Moments;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/internal/km$1;
invoke-direct {v0, p0}, Lcom/google/android/gms/internal/km$1;-><init>(Lcom/google/android/gms/internal/km;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public load(Lcom/google/android/gms/common/api/GoogleApiClient;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 14
new-instance v0, Lcom/google/android/gms/internal/km$2;
move-object v1, p0
move v2, p2
move-object v3, p3
move-object v4, p4
move-object v5, p5
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lcom/google/android/gms/internal/km$2;-><init>(Lcom/google/android/gms/internal/km;ILjava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public remove(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/km$4;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/km$4;-><init>(Lcom/google/android/gms/internal/km;Ljava/lang/String;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public write(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/plus/model/moments/Moment;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/internal/km$3;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/internal/km$3;-><init>(Lcom/google/android/gms/internal/km;Lcom/google/android/gms/plus/model/moments/Moment;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method