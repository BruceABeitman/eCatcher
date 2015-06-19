.class public final Lcom/google/android/gms/internal/go;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/games/request/Requests;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final acceptRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/go;->acceptRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public final acceptRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
if-nez p2, :cond_d
const/4 v0, 0x0
:goto_3
new-instance v1, Lcom/google/android/gms/internal/go$1;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/go$1;-><init>(Lcom/google/android/gms/internal/go;[Ljava/lang/String;)V
invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
:cond_d
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
goto :goto_3
.end method
.method public final dismissRequest(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/lang/String;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-virtual {p0, p1, v0}, Lcom/google/android/gms/internal/go;->dismissRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public final dismissRequests(Lcom/google/android/gms/common/api/GoogleApiClient;Ljava/util/List;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
if-nez p2, :cond_d
const/4 v0, 0x0
:goto_3
new-instance v1, Lcom/google/android/gms/internal/go$2;
invoke-direct {v1, p0, v0}, Lcom/google/android/gms/internal/go$2;-><init>(Lcom/google/android/gms/internal/go;[Ljava/lang/String;)V
invoke-interface {p1, v1}, Lcom/google/android/gms/common/api/GoogleApiClient;->b(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
:cond_d
invoke-interface {p2}, Ljava/util/List;->size()I
move-result v0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {p2, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
goto :goto_3
.end method
.method public final getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;
.registers 7
if-eqz p1, :cond_a
const-string v0, "requests"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
:cond_a
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_f
return-object v0
:cond_10
const-string v0, "requests"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v4
move v3, v1
:goto_23
if-ge v3, v4, :cond_32
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/games/request/GameRequest;
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v1, v3, 0x1
move v3, v1
goto :goto_23
:cond_32
move-object v0, v2
goto :goto_f
.end method
.method public final getGameRequestsFromInboxResponse(Landroid/content/Intent;)Ljava/util/ArrayList;
.registers 3
if-nez p1, :cond_8
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
:goto_7
return-object v0
:cond_8
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/go;->getGameRequestsFromBundle(Landroid/os/Bundle;)Ljava/util/ArrayList;
move-result-object v0
goto :goto_7
.end method
.method public final getInboxIntent(Lcom/google/android/gms/common/api/GoogleApiClient;)Landroid/content/Intent;
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fD()Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final getMaxLifetimeDays(Lcom/google/android/gms/common/api/GoogleApiClient;)I
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fF()I
move-result v0
return v0
.end method
.method public final getMaxPayloadSize(Lcom/google/android/gms/common/api/GoogleApiClient;)I
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fE()I
move-result v0
return v0
.end method
.method public final getSendIntent(Lcom/google/android/gms/common/api/GoogleApiClient;I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
.registers 13
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
move v1, p2
move-object v2, p3
move v3, p4
move-object v4, p5
move-object v5, p6
invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/fx;->a(I[BILandroid/graphics/Bitmap;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
return-object v0
.end method
.method public final loadRequests(Lcom/google/android/gms/common/api/GoogleApiClient;III)Lcom/google/android/gms/common/api/PendingResult;
.registers 6
new-instance v0, Lcom/google/android/gms/internal/go$3;
invoke-direct {v0, p0, p2, p3, p4}, Lcom/google/android/gms/internal/go$3;-><init>(Lcom/google/android/gms/internal/go;III)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$a;)Lcom/google/android/gms/common/api/a$a;
move-result-object v0
return-object v0
.end method
.method public final registerRequestListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
.registers 4
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0, p2}, Lcom/google/android/gms/internal/fx;->a(Lcom/google/android/gms/games/request/OnRequestReceivedListener;)V
return-void
.end method
.method public final unregisterRequestListener(Lcom/google/android/gms/common/api/GoogleApiClient;)V
.registers 3
invoke-static {p1}, Lcom/google/android/gms/games/Games;->c(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/internal/fx;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/fx;->fx()V
return-void
.end method