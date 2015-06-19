.class public final Lcom/google/android/gms/internal/gl;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/Notifications;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fx;->aU(I)V
return-void
.end method
.method public final clearAll(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.registers 3
const/4 v0, 0x7
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/gl;->clear(Lcom/google/android/gms/common/api/GoogleApiClient;I)V
return-void
.end method