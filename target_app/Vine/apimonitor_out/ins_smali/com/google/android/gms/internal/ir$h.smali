.class public Lcom/google/android/gms/internal/ir$h;
.super Lcom/google/android/gms/drive/metadata/internal/b;
.implements Lcom/google/android/gms/drive/metadata/SearchableMetadataField;
.method public constructor <init>(Ljava/lang/String;I)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/drive/metadata/internal/b;-><init>(Ljava/lang/String;I)V
return-void
.end method
.method protected synthetic b(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Object;
.registers 5
invoke-virtual {p0, p1, p2, p3}, Lcom/google/android/gms/internal/ir$h;->d(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected d(Lcom/google/android/gms/common/data/DataHolder;II)Ljava/lang/Boolean;
.registers 5
invoke-virtual {p0}, Lcom/google/android/gms/internal/ir$h;->getName()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0, p2, p3}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_b
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
:cond_10
const/4 v0, 0x0
goto :goto_b
.end method