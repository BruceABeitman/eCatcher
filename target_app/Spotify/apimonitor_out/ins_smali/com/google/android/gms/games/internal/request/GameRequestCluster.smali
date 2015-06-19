.class public final Lcom/google/android/gms/games/internal/request/GameRequestCluster;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/request/GameRequest;
.field public static final CREATOR:Lcom/google/android/gms/games/internal/request/a;
.field private final a:I
.field private final b:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/internal/request/a;
invoke-direct {v0}, Lcom/google/android/gms/games/internal/request/a;-><init>()V
sput-object v0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->CREATOR:Lcom/google/android/gms/games/internal/request/a;
return-void
.end method
.method constructor <init>(ILjava/util/ArrayList;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->a:I
iput-object p2, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-direct {p0}, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->m()V
return-void
.end method
.method private m()V
.registers 9
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_4c
move v0, v2
:goto_b
invoke-static {v0}, Lcom/google/android/gms/internal/fw;->a(Z)V
iget-object v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
iget-object v1, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v6
move v5, v2
:goto_1d
if-ge v5, v6, :cond_50
iget-object v1, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/games/request/GameRequest;
invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->h()I
move-result v4
invoke-interface {v1}, Lcom/google/android/gms/games/request/GameRequest;->h()I
move-result v7
if-ne v4, v7, :cond_4e
move v4, v2
:goto_32
const-string v7, "All the requests must be of the same type"
invoke-static {v4, v7}, Lcom/google/android/gms/internal/fw;->a(ZLjava/lang/Object;)V
invoke-interface {v0}, Lcom/google/android/gms/games/request/GameRequest;->f()Lcom/google/android/gms/games/Player;
move-result-object v4
invoke-interface {v1}, Lcom/google/android/gms/games/request/GameRequest;->f()Lcom/google/android/gms/games/Player;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
const-string v4, "All the requests must be from the same sender"
invoke-static {v1, v4}, Lcom/google/android/gms/internal/fw;->a(ZLjava/lang/Object;)V
add-int/lit8 v1, v5, 0x1
move v5, v1
goto :goto_1d
:cond_4c
move v0, v3
goto :goto_b
:cond_4e
move v4, v3
goto :goto_32
:cond_50
return-void
.end method
.method public final a(Ljava/lang/String;)I
.registers 4
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final bridge synthetic a()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->a:I
return v0
.end method
.method public final c()Ljava/util/ArrayList;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequestEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/request/GameRequestEntity;->d()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Lcom/google/android/gms/games/Game;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 8
const/4 v3, 0x1
const/4 v2, 0x0
instance-of v0, p1, Lcom/google/android/gms/games/internal/request/GameRequestCluster;
if-nez v0, :cond_8
move v0, v2
:goto_7
return v0
:cond_8
if-ne p0, p1, :cond_c
move v0, v3
goto :goto_7
:cond_c
check-cast p1, Lcom/google/android/gms/games/internal/request/GameRequestCluster;
iget-object v0, p1, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v1, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-eq v0, v1, :cond_1e
move v0, v2
goto :goto_7
:cond_1e
iget-object v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v5
move v4, v2
:goto_25
if-ge v4, v5, :cond_43
iget-object v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequest;
iget-object v1, p1, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/google/android/gms/games/request/GameRequest;
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_3f
move v0, v2
goto :goto_7
:cond_3f
add-int/lit8 v0, v4, 0x1
move v4, v0
goto :goto_25
:cond_43
move v0, v3
goto :goto_7
.end method
.method public final f()Lcom/google/android/gms/games/Player;
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequestEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/request/GameRequestEntity;->f()Lcom/google/android/gms/games/Player;
move-result-object v0
return-object v0
.end method
.method public final g()[B
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final h()I
.registers 3
iget-object v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequestEntity;
invoke-virtual {v0}, Lcom/google/android/gms/games/request/GameRequestEntity;->h()I
move-result v0
return v0
.end method
.method public final hashCode()I
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/internal/request/GameRequestCluster;->b:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public final i()J
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final j()J
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final k()I
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final synthetic l()Ljava/util/List;
.registers 3
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Method not supported on a cluster"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/internal/request/a;->a(Lcom/google/android/gms/games/internal/request/GameRequestCluster;Landroid/os/Parcel;)V
return-void
.end method