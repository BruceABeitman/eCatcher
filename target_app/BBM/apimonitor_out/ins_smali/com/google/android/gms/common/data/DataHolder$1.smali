.class final Lcom/google/android/gms/common/data/DataHolder$1;
.super Lcom/google/android/gms/common/data/DataHolder$Builder;
.method constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/common/data/DataHolder$Builder;-><init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V
return-void
.end method
.method public final withRow(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/DataHolder$Builder;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Cannot add data to empty builder"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final withRow(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/DataHolder$Builder;
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Cannot add data to empty builder"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method