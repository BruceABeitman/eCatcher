.class public Lcom/google/android/gms/drive/query/Filters;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static varargs and(Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lc:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V
return-object v0
.end method
.method public static and(Ljava/lang/Iterable;)Lcom/google/android/gms/drive/query/Filter;
.registers 3
new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lc:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V
return-object v0
.end method
.method public static contains(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/String;)Lcom/google/android/gms/drive/query/Filter;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lf:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
return-object v0
.end method
.method public static eq(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->KX:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
return-object v0
.end method
.method public static greaterThan(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->La:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
return-object v0
.end method
.method public static greaterThanEquals(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Lb:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
return-object v0
.end method
.method public static in(Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;Ljava/lang/Object;)Lcom/google/android/gms/drive/query/Filter;
.registers 3
new-instance v0, Lcom/google/android/gms/drive/query/internal/InFilter;
invoke-direct {v0, p0, p1}, Lcom/google/android/gms/drive/query/internal/InFilter;-><init>(Lcom/google/android/gms/drive/metadata/SearchableCollectionMetadataField;Ljava/lang/Object;)V
return-object v0
.end method
.method public static lessThan(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->KY:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
return-object v0
.end method
.method public static lessThanEquals(Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;Ljava/lang/Comparable;)Lcom/google/android/gms/drive/query/Filter;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->KZ:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/ComparisonFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/metadata/SearchableMetadataField;Ljava/lang/Object;)V
return-object v0
.end method
.method public static not(Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
.registers 2
new-instance v0, Lcom/google/android/gms/drive/query/internal/NotFilter;
invoke-direct {v0, p0}, Lcom/google/android/gms/drive/query/internal/NotFilter;-><init>(Lcom/google/android/gms/drive/query/Filter;)V
return-object v0
.end method
.method public static varargs or(Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)Lcom/google/android/gms/drive/query/Filter;
.registers 4
new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Ld:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0, p1}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Lcom/google/android/gms/drive/query/Filter;[Lcom/google/android/gms/drive/query/Filter;)V
return-object v0
.end method
.method public static or(Ljava/lang/Iterable;)Lcom/google/android/gms/drive/query/Filter;
.registers 3
new-instance v0, Lcom/google/android/gms/drive/query/internal/LogicalFilter;
sget-object v1, Lcom/google/android/gms/drive/query/internal/Operator;->Ld:Lcom/google/android/gms/drive/query/internal/Operator;
invoke-direct {v0, v1, p0}, Lcom/google/android/gms/drive/query/internal/LogicalFilter;-><init>(Lcom/google/android/gms/drive/query/internal/Operator;Ljava/lang/Iterable;)V
return-object v0
.end method
.method public static sharedWithMe()Lcom/google/android/gms/drive/query/Filter;
.registers 2
new-instance v0, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;
sget-object v1, Lcom/google/android/gms/drive/query/SearchableField;->KF:Lcom/google/android/gms/drive/metadata/SearchableOrderedMetadataField;
invoke-direct {v0, v1}, Lcom/google/android/gms/drive/query/internal/FieldOnlyFilter;-><init>(Lcom/google/android/gms/drive/metadata/SearchableMetadataField;)V
return-object v0
.end method