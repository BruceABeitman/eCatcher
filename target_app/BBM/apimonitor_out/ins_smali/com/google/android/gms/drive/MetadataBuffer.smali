.class public final Lcom/google/android/gms/drive/MetadataBuffer;
.super Lcom/google/android/gms/common/data/DataBuffer;
.field private static final Dg:[Ljava/lang/String;
.field private final Dh:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
invoke-static {}, Lcom/google/android/gms/drive/metadata/internal/c;->fg()Ljava/util/Collection;
move-result-object v0
invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_d
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/drive/metadata/MetadataField;
invoke-virtual {v0}, Lcom/google/android/gms/drive/metadata/MetadataField;->ff()Ljava/util/Collection;
move-result-object v0
invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
goto :goto_d
:cond_21
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/String;
invoke-interface {v1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/String;
sput-object v0, Lcom/google/android/gms/drive/MetadataBuffer;->Dg:[Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/DataBuffer;-><init>(Lcom/google/android/gms/common/data/DataHolder;)V
iput-object p2, p0, Lcom/google/android/gms/drive/MetadataBuffer;->Dh:Ljava/lang/String;
return-void
.end method
.method public final get(I)Lcom/google/android/gms/drive/Metadata;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/MetadataBuffer$a;
iget-object v1, p0, Lcom/google/android/gms/drive/MetadataBuffer;->zU:Lcom/google/android/gms/common/data/DataHolder;
invoke-direct {v0, v1, p1}, Lcom/google/android/gms/drive/MetadataBuffer$a;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public final bridge synthetic get(I)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/drive/MetadataBuffer;->get(I)Lcom/google/android/gms/drive/Metadata;
move-result-object v0
return-object v0
.end method
.method public final getNextPageToken()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/drive/MetadataBuffer;->Dh:Ljava/lang/String;
return-object v0
.end method