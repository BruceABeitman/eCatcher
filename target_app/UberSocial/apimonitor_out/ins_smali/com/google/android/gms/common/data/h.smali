.class public final Lcom/google/android/gms/common/data/h;
.super Ljava/lang/Object;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/util/ArrayList;)Ljava/util/ArrayList;
.registers 5
new-instance v2, Ljava/util/ArrayList;
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/util/ArrayList;->size()I
move-result v3
move v1, v0
:goto_f
if-ge v1, v3, :cond_22
invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/common/data/g;
invoke-interface {v0}, Lcom/google/android/gms/common/data/g;->i()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_f
:cond_22
return-object v2
.end method
.method public static a([Lcom/google/android/gms/common/data/g;)Ljava/util/ArrayList;
.registers 4
new-instance v1, Ljava/util/ArrayList;
array-length v0, p0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_7
array-length v2, p0
if-ge v0, v2, :cond_16
aget-object v2, p0, v0
invoke-interface {v2}, Lcom/google/android/gms/common/data/g;->i()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_16
return-object v1
.end method