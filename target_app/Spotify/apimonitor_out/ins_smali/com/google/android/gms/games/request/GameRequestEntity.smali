.class public final Lcom/google/android/gms/games/request/GameRequestEntity;
.super Ljava/lang/Object;
.implements Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable;
.implements Lcom/google/android/gms/games/request/GameRequest;
.field public static final CREATOR:Lcom/google/android/gms/games/request/a;
.field private final a:I
.field private final b:Lcom/google/android/gms/games/GameEntity;
.field private final c:Lcom/google/android/gms/games/PlayerEntity;
.field private final d:[B
.field private final e:Ljava/lang/String;
.field private final f:Ljava/util/ArrayList;
.field private final g:I
.field private final h:J
.field private final i:J
.field private final j:Landroid/os/Bundle;
.field private final k:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/google/android/gms/games/request/a;
invoke-direct {v0}, Lcom/google/android/gms/games/request/a;-><init>()V
sput-object v0, Lcom/google/android/gms/games/request/GameRequestEntity;->CREATOR:Lcom/google/android/gms/games/request/a;
return-void
.end method
.method constructor <init>(ILcom/google/android/gms/games/GameEntity;Lcom/google/android/gms/games/PlayerEntity;[BLjava/lang/String;Ljava/util/ArrayList;IJJLandroid/os/Bundle;I)V
.registers 14
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput p1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->a:I
iput-object p2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->b:Lcom/google/android/gms/games/GameEntity;
iput-object p3, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->c:Lcom/google/android/gms/games/PlayerEntity;
iput-object p4, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->d:[B
iput-object p5, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->e:Ljava/lang/String;
iput-object p6, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->f:Ljava/util/ArrayList;
iput p7, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->g:I
iput-wide p8, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->h:J
iput-wide p10, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->i:J
iput-object p12, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->j:Landroid/os/Bundle;
iput p13, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:I
return-void
.end method
.method public constructor <init>(Lcom/google/android/gms/games/request/GameRequest;)V
.registers 8
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x2
iput v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->a:I
new-instance v1, Lcom/google/android/gms/games/GameEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->e()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/android/gms/games/GameEntity;-><init>(Lcom/google/android/gms/games/Game;)V
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->b:Lcom/google/android/gms/games/GameEntity;
new-instance v1, Lcom/google/android/gms/games/PlayerEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->f()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/android/gms/games/PlayerEntity;-><init>(Lcom/google/android/gms/games/Player;)V
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->c:Lcom/google/android/gms/games/PlayerEntity;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->d()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->e:Ljava/lang/String;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->h()I
move-result v1
iput v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->g:I
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->i()J
move-result-wide v1
iput-wide v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->h:J
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->j()J
move-result-wide v1
iput-wide v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->i:J
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->k()I
move-result v1
iput v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:I
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->g()[B
move-result-object v1
if-nez v1, :cond_81
const/4 v1, 0x0
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->d:[B
:goto_44
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->l()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->f:Ljava/util/ArrayList;
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
iput-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->j:Landroid/os/Bundle;
move v1, v0
:goto_5b
if-ge v1, v3, :cond_8d
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/Player;
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->a()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/Player;
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->b()Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->f:Ljava/util/ArrayList;
check-cast v0, Lcom/google/android/gms/games/PlayerEntity;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->j:Landroid/os/Bundle;
invoke-interface {p1, v4}, Lcom/google/android/gms/games/request/GameRequest;->a(Ljava/lang/String;)I
move-result v5
invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_5b
:cond_81
array-length v2, v1
new-array v2, v2, [B
iput-object v2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->d:[B
iget-object v2, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->d:[B
array-length v3, v1
invoke-static {v1, v0, v2, v0, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
goto :goto_44
:cond_8d
return-void
.end method
.method static a(Lcom/google/android/gms/games/request/GameRequest;)I
.registers 5
const/16 v0, 0x8
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->e()Lcom/google/android/gms/games/Game;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x1
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->l()Ljava/util/List;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->d()Ljava/lang/String;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x3
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->f()Lcom/google/android/gms/games/Player;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x4
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->c(Lcom/google/android/gms/games/request/GameRequest;)[I
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x5
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->h()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x6
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->i()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
const/4 v1, 0x7
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->j()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method static a(Lcom/google/android/gms/games/request/GameRequest;Ljava/lang/Object;)Z
.registers 7
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Lcom/google/android/gms/games/request/GameRequest;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
if-ne p0, p1, :cond_b
move v0, v1
goto :goto_6
:cond_b
check-cast p1, Lcom/google/android/gms/games/request/GameRequest;
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->e()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->e()Lcom/google/android/gms/games/Game;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->l()Ljava/util/List;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->l()Ljava/util/List;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->d()Ljava/lang/String;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->d()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->f()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->f()Lcom/google/android/gms/games/Player;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-static {p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->c(Lcom/google/android/gms/games/request/GameRequest;)[I
move-result-object v2
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->c(Lcom/google/android/gms/games/request/GameRequest;)[I
move-result-object v3
invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->h()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->h()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->i()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->i()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
invoke-interface {p1}, Lcom/google/android/gms/games/request/GameRequest;->j()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->j()J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_6
move v0, v1
goto/16 :goto_6
.end method
.method static b(Lcom/google/android/gms/games/request/GameRequest;)Ljava/lang/String;
.registers 5
invoke-static {p0}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Game"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->e()Lcom/google/android/gms/games/Game;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Sender"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->f()Lcom/google/android/gms/games/Player;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Recipients"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->l()Ljava/util/List;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Data"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->g()[B
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "RequestId"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "Type"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->h()I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "CreationTimestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->i()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
const-string v1, "ExpirationTimestamp"
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->j()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/he;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/internal/he;
move-result-object v0
invoke-virtual {v0}, Lcom/google/android/gms/internal/he;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method private static c(Lcom/google/android/gms/games/request/GameRequest;)[I
.registers 6
invoke-interface {p0}, Lcom/google/android/gms/games/request/GameRequest;->l()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
new-array v4, v3, [I
const/4 v0, 0x0
move v1, v0
:goto_c
if-ge v1, v3, :cond_22
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/google/android/gms/games/Player;
invoke-interface {v0}, Lcom/google/android/gms/games/Player;->b()Ljava/lang/String;
move-result-object v0
invoke-interface {p0, v0}, Lcom/google/android/gms/games/request/GameRequest;->a(Ljava/lang/String;)I
move-result v0
aput v0, v4, v1
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_c
:cond_22
return-object v4
.end method
.method public final a(Ljava/lang/String;)I
.registers 4
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->j:Landroid/os/Bundle;
const/4 v1, 0x0
invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
return v0
.end method
.method public final bridge synthetic a()Ljava/lang/Object;
.registers 1
return-object p0
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->a:I
return v0
.end method
.method public final c()Landroid/os/Bundle;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->j:Landroid/os/Bundle;
return-object v0
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->e:Ljava/lang/String;
return-object v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Lcom/google/android/gms/games/Game;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->b:Lcom/google/android/gms/games/GameEntity;
return-object v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 3
invoke-static {p0, p1}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final f()Lcom/google/android/gms/games/Player;
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->c:Lcom/google/android/gms/games/PlayerEntity;
return-object v0
.end method
.method public final g()[B
.registers 2
iget-object v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->d:[B
return-object v0
.end method
.method public final h()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->g:I
return v0
.end method
.method public final hashCode()I
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->a(Lcom/google/android/gms/games/request/GameRequest;)I
move-result v0
return v0
.end method
.method public final i()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->h:J
return-wide v0
.end method
.method public final j()J
.registers 3
iget-wide v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->i:J
return-wide v0
.end method
.method public final k()I
.registers 2
iget v0, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->k:I
return v0
.end method
.method public final l()Ljava/util/List;
.registers 3
new-instance v0, Ljava/util/ArrayList;
iget-object v1, p0, Lcom/google/android/gms/games/request/GameRequestEntity;->f:Ljava/util/ArrayList;
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
return-object v0
.end method
.method public final toString()Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/google/android/gms/games/request/GameRequestEntity;->b(Lcom/google/android/gms/games/request/GameRequest;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 3
invoke-static {p0, p1, p2}, Lcom/google/android/gms/games/request/a;->a(Lcom/google/android/gms/games/request/GameRequestEntity;Landroid/os/Parcel;I)V
return-void
.end method