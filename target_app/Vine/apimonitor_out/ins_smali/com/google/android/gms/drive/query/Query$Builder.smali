.class public Lcom/google/android/gms/drive/query/Query$Builder;
.super Ljava/lang/Object;
.field private KC:Ljava/lang/String;
.field private KD:Lcom/google/android/gms/drive/query/SortOrder;
.field private final KE:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KE:Ljava/util/List;
return-void
.end method
.method public addFilter(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Query$Builder;
.registers 3
instance-of v0, p1, Lcom/google/android/gms/drive/query/internal/MatchAllFilter;
if-nez v0, :cond_9
iget-object v0, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KE:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_9
return-object p0
.end method
.method public build()Lcom/google/android/gms/drive/query/Query;
.registers 5
new-instance v0, Lcom/google/android/gms/drive/query/Query;
new-instance v1, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
sget-object v2, Lcom/google/android/gms/drive/query/internal/Operator;->Lc:Lcom/google/android/gms/drive/query/internal/Operator;
iget-object v3, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KE:Ljava/util/List;
invoke-direct {v1, v2, v3}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V
iget-object v2, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KC:Ljava/lang/String;
iget-object v3, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KD:Lcom/google/android/gms/drive/query/SortOrder;
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/drive/query/Query;-><init>(Lcom/google/android/gms/drive/query/internal/LogicalFilter;Ljava/lang/String;Lcom/google/android/gms/drive/query/SortOrder;)V
return-object v0
.end method
.method public setPageToken(Ljava/lang/String;)Lcom/google/android/gms/drive/query/Query$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KC:Ljava/lang/String;
return-object p0
.end method
.method public setSortOrder(Lcom/google/android/gms/drive/query/SortOrder;)Lcom/google/android/gms/drive/query/Query$Builder;
.registers 2
iput-object p1, p0, Lcom/google/android/gms/drive/query/Query$Builder;->KD:Lcom/google/android/gms/drive/query/SortOrder;
return-object p0
.end method