.class public Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$a;
.super Ljava/lang/Object;
.field private final JM:Ljava/util/Map;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$a;->JM:Ljava/util/Map;
return-void
.end method
.method public gy()Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;
iget-object v1, p0, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$a;->JM:Ljava/util/Map;
invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v1
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties;-><init>(Ljava/util/Collection;Lcom/google/android/gms/drive/metadata/internal/AppVisibleCustomProperties$1;)V
return-object v0
.end method