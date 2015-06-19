.class public final Lcom/google/android/gms/games/request/a;
.super Lcom/google/android/gms/common/data/j;
.implements Lcom/google/android/gms/games/request/GameRequest;
.field private final f:I
.method public constructor <init>(Lcom/google/android/gms/common/data/DataHolder;II)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/j;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
iput p3, p0, Lcom/google/android/gms/games/request/a;->f:I
return-void
.end method
.method public a(Ljava/lang/String;)I
.registers 6
iget v0, p0, Lcom/google/android/gms/games/request/a;->d_:I
:goto_2
iget v1, p0, Lcom/google/android/gms/games/request/a;->d_:I
iget v2, p0, Lcom/google/android/gms/games/request/a;->f:I
add-int/2addr v1, v2
if-ge v0, v1, :cond_29
iget-object v1, p0, Lcom/google/android/gms/games/request/a;->c_:Lcom/google/android/gms/common/data/DataHolder;
invoke-virtual {v1, v0}, Lcom/google/android/gms/common/data/DataHolder;->a(I)I
move-result v1
iget-object v2, p0, Lcom/google/android/gms/games/request/a;->c_:Lcom/google/android/gms/common/data/DataHolder;
const-string v3, "recipient_external_player_id"
invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->c(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_26
iget-object v2, p0, Lcom/google/android/gms/games/request/a;->c_:Lcom/google/android/gms/common/data/DataHolder;
const-string v3, "recipient_status"
invoke-virtual {v2, v3, v0, v1}, Lcom/google/android/gms/common/data/DataHolder;->b(Ljava/lang/String;II)I
move-result v0
:goto_25
return v0
:cond_26
add-int/lit8 v0, v0, 0x1
goto :goto_2
:cond_29
const/4 v0, -0x1
goto :goto_25
.end method
.method public a()Ljava/lang/String;
.registers 2
const-string v0, "external_request_id"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/a;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public b()Lcom/google/android/gms/games/Game;
.registers 4
new-instance v0, Lcom/google/android/gms/games/b;
iget-object v1, p0, Lcom/google/android/gms/games/request/a;->c_:Lcom/google/android/gms/common/data/DataHolder;
iget v2, p0, Lcom/google/android/gms/games/request/a;->d_:I
invoke-direct {v0, v1, v2}, Lcom/google/android/gms/games/b;-><init>(Lcom/google/android/gms/common/data/DataHolder;I)V
return-object v0
.end method
.method public c()Lcom/google/android/gms/games/Player;
.registers 5
new-instance v0, Lcom/google/android/gms/games/d;
iget-object v1, p0, Lcom/google/android/gms/games/request/a;->c_:Lcom/google/android/gms/common/data/DataHolder;
iget v2, p0, Lcom/google/android/gms/games/request/a;->d_:I
const-string v3, "sender_"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
return-object v0
.end method
.method public d()Lcom/google/android/gms/games/Player;
.registers 5
new-instance v0, Lcom/google/android/gms/games/d;
iget-object v1, p0, Lcom/google/android/gms/games/request/a;->c_:Lcom/google/android/gms/common/data/DataHolder;
iget v2, p0, Lcom/google/android/gms/games/request/a;->d_:I
const-string v3, "recipient_"
invoke-direct {v0, v1, v2, v3}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public e()Z
.registers 3
const/4 v0, 0x1
invoke-virtual {p0}, Lcom/google/android/gms/games/request/a;->m()I
move-result v1
if-ne v1, v0, :cond_8
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public f()Ljava/util/ArrayList;
.registers 7
new-instance v1, Ljava/util/ArrayList;
iget v0, p0, Lcom/google/android/gms/games/request/a;->f:I
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
const/4 v0, 0x0
:goto_8
iget v2, p0, Lcom/google/android/gms/games/request/a;->f:I
if-ge v0, v2, :cond_1e
new-instance v2, Lcom/google/android/gms/games/d;
iget-object v3, p0, Lcom/google/android/gms/games/request/a;->c_:Lcom/google/android/gms/common/data/DataHolder;
iget v4, p0, Lcom/google/android/gms/games/request/a;->d_:I
add-int/2addr v4, v0
const-string v5, "recipient_"
invoke-direct {v2, v3, v4, v5}, Lcom/google/android/gms/games/d;-><init>(Lcom/google/android/gms/common/data/DataHolder;ILjava/lang/String;)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_1e
return-object v1
.end method
.method public g()[B
.registers 2
const-string v0, "data"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/a;->f(Ljava/lang/String;)[B
move-result-object v0
return-object v0
.end method
.method public hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;)I
move-result v0
return v0
.end method
.method public synthetic i()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/google/android/gms/games/request/a;->n()Lcom/google/android/gms/games/request/GameRequest;
move-result-object v0
return-object v0
.end method
.method public j()I
.registers 2
const-string v0, "type"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/a;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public k()J
.registers 3
const-string v0, "creation_timestamp"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/a;->b(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public l()J
.registers 3
const-string v0, "expiration_timestamp"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/a;->b(Ljava/lang/String;)J
move-result-wide v0
return-wide v0
.end method
.method public m()I
.registers 2
const-string v0, "recipient_status"
invoke-virtual {p0, v0}, Lcom/google/android/gms/games/request/a;->c(Ljava/lang/String;)I
move-result v0
return v0
.end method
.method public n()Lcom/google/android/gms/games/request/GameRequest;
.registers 2
new-instance v0, Lcom/google/android/gms/games/request/GameRequestEntity;
invoke-direct {v0, p0}, Lcom/google/android/gms/games/request/GameRequestEntity;-><init>(Lcom/google/android/gms/games/request/GameRequest;)V
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->b(Lcom/google/android/gms/games/request/GameRequest;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
invoke-virtual {p0}, Lcom/google/android/gms/games/request/a;->n()Lcom/google/android/gms/games/request/GameRequest;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/request/GameRequestEntity;
invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/games/request/GameRequestEntity;->writeToParcel(Landroid/os/Parcel;I)V
return-void
.end method