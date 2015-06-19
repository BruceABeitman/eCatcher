.class final Lcom/google/android/gms/internal/ir$1;
.super Lcom/google/android/gms/drive/metadata/internal/j;
.method constructor <init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
.registers 5
invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/android/gms/drive/metadata/internal/j;-><init>(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;I)V
return-void
.end method
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ir$1;->i(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/common/data/a;
move-result-object v0
return-object v0
.end method
.method protected i(Lcom/google/android/gms/common/data/DataHolder;II)Lcom/google/android/gms/common/data/a;
.registers 6
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Thumbnail field is write only"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
.end method