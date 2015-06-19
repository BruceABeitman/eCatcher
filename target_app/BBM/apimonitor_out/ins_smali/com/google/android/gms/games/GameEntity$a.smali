.class final Lcom/google/android/gms/games/GameEntity$a;
.super Lcom/google/android/gms/games/a;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/google/android/gms/games/a;-><init>()V
return-void
.end method
.method public final aj(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
.registers 25
invoke-static {}, Lcom/google/android/gms/games/GameEntity;->fk()Ljava/lang/Integer;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/games/GameEntity;->b(Ljava/lang/Integer;)Z
move-result v0
if-nez v0, :cond_16
const-class v0, Lcom/google/android/gms/games/GameEntity;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/games/GameEntity;->at(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1b
:cond_16
invoke-super/range {p0 .. p1}, Lcom/google/android/gms/games/a;->aj(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v4
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v5
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v6
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v7
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_79
const/4 v8, 0x0
:goto_3a
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_7e
const/4 v9, 0x0
:goto_41
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_83
const/4 v10, 0x0
:goto_48
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-lez v0, :cond_88
const/4 v11, 0x1
:goto_4f
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-lez v0, :cond_8a
const/4 v12, 0x1
:goto_56
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v13
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v14
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v15
invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I
move-result v16
new-instance v0, Lcom/google/android/gms/games/GameEntity;
const/4 v1, 0x2
const/16 v17, 0x0
const/16 v18, 0x0
const/16 v19, 0x0
const/16 v20, 0x0
const/16 v21, 0x0
const/16 v22, 0x0
invoke-direct/range {v0 .. v22}, Lcom/google/android/gms/games/GameEntity;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;ZZLjava/lang/String;IIIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
goto :goto_1a
:cond_79
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v8
goto :goto_3a
:cond_7e
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v9
goto :goto_41
:cond_83
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v10
goto :goto_48
:cond_88
const/4 v11, 0x0
goto :goto_4f
:cond_8a
const/4 v12, 0x0
goto :goto_56
.end method
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/google/android/gms/games/GameEntity$a;->aj(Landroid/os/Parcel;)Lcom/google/android/gms/games/GameEntity;
move-result-object v0
return-object v0
.end method