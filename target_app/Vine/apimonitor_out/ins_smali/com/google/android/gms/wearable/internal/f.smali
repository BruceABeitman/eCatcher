.class public final Lcom/google/android/gms/wearable/internal/f;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/wearable/DataApi;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/common/api/PendingResult;
.registers 5
new-instance v0, Lcom/google/android/gms/wearable/internal/f$8;
invoke-direct {v0, p0, p2, p3}, Lcom/google/android/gms/wearable/internal/f$8;-><init>(Lcom/google/android/gms/wearable/internal/f;Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method private a(Lcom/google/android/gms/wearable/Asset;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "asset is null"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
invoke-virtual {p1}, Lcom/google/android/gms/wearable/Asset;->getDigest()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_18
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "invalid asset"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_18
invoke-virtual {p1}, Lcom/google/android/gms/wearable/Asset;->getData()[B
move-result-object v0
if-eqz v0, :cond_26
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "invalid asset"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_26
return-void
.end method
.method public addListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/wearable/internal/f;->a(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;[Landroid/content/IntentFilter;)Lcom/google/android/gms/common/api/PendingResult;
move-result-object v0
return-object v0
.end method
.method public deleteDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/f$5;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/f$5;-><init>(Lcom/google/android/gms/wearable/internal/f;Landroid/net/Uri;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public getDataItem(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/f$2;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/f$2;-><init>(Lcom/google/android/gms/wearable/internal/f;Landroid/net/Uri;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;)Lcom/google/android/gms/common/api/PendingResult;
.registers 3
new-instance v0, Lcom/google/android/gms/wearable/internal/f$3;
invoke-direct {v0, p0}, Lcom/google/android/gms/wearable/internal/f$3;-><init>(Lcom/google/android/gms/wearable/internal/f;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public getDataItems(Lcom/google/android/gms/common/api/GoogleApiClient;Landroid/net/Uri;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/f$4;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/f$4;-><init>(Lcom/google/android/gms/wearable/internal/f;Landroid/net/Uri;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public getFdForAsset(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/Asset;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
invoke-direct {p0, p2}, Lcom/google/android/gms/wearable/internal/f;->a(Lcom/google/android/gms/wearable/Asset;)V
new-instance v0, Lcom/google/android/gms/wearable/internal/f$6;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/f$6;-><init>(Lcom/google/android/gms/wearable/internal/f;Lcom/google/android/gms/wearable/Asset;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public getFdForAsset(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataItemAsset;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/f$7;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/f$7;-><init>(Lcom/google/android/gms/wearable/internal/f;Lcom/google/android/gms/wearable/DataItemAsset;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public putDataItem(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/PutDataRequest;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/f$1;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/f$1;-><init>(Lcom/google/android/gms/wearable/internal/f;Lcom/google/android/gms/wearable/PutDataRequest;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method
.method public removeListener(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/wearable/DataApi$DataListener;)Lcom/google/android/gms/common/api/PendingResult;
.registers 4
new-instance v0, Lcom/google/android/gms/wearable/internal/f$9;
invoke-direct {v0, p0, p2}, Lcom/google/android/gms/wearable/internal/f$9;-><init>(Lcom/google/android/gms/wearable/internal/f;Lcom/google/android/gms/wearable/DataApi$DataListener;)V
invoke-interface {p1, v0}, Lcom/google/android/gms/common/api/GoogleApiClient;->a(Lcom/google/android/gms/common/api/a$b;)Lcom/google/android/gms/common/api/a$b;
move-result-object v0
return-object v0
.end method