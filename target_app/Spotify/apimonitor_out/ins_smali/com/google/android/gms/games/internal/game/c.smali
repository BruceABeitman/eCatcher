.class final Lcom/google/android/gms/games/internal/game/c;
.super Lcom/google/android/gms/games/internal/game/d;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/internal/game/d;-><init>()V
return-void
.end method
.method public final a(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
.registers 8
invoke-static {}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->g()Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Ljava/lang/Integer;)Z
move-result v0
if-nez v0, :cond_16
const-class v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
:cond_16
invoke-super {p0, p1}, Lcom/google/android/gms/games/internal/game/d;->a(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_35
const/4 v5, 0x0
:goto_2e
new-instance v0, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
const/4 v1, 0x1
invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/games/internal/game/GameBadgeEntity;-><init>(IILjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)V
goto :goto_1a
:cond_35
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v5
goto :goto_2e
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/internal/game/c;->a(Landroid/os/Parcel;)Lcom/google/android/gms/games/internal/game/GameBadgeEntity;
move-result-object v0
return-object v0
.end method