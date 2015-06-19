.class public Lco/vine/android/api/VineRepost;
.super Ljava/lang/Object;
.source "VineRepost.java"
.implements Ljava/io/Externalizable;
.field private static final serialVersionUID:J = -0x5734b3fcc28d8ad9L
.field public avatarUrl:Ljava/lang/String;
.field public description:Ljava/lang/String;
.field public location:Ljava/lang/String;
.field public postId:J
.field public priv:I
.field public repostId:J
.field public unflaggable:I
.field public userId:J
.field public username:Ljava/lang/String;
.field public verified:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJIII)V
.registers 14
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
iput-object p3, p0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
iput-object p4, p0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
iput-wide p5, p0, Lco/vine/android/api/VineRepost;->userId:J
iput-wide p7, p0, Lco/vine/android/api/VineRepost;->postId:J
iput-wide p9, p0, Lco/vine/android/api/VineRepost;->repostId:J
iput p11, p0, Lco/vine/android/api/VineRepost;->verified:I
iput p12, p0, Lco/vine/android/api/VineRepost;->priv:I
iput p13, p0, Lco/vine/android/api/VineRepost;->unflaggable:I
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v1
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v4
if-eq v3, v4, :cond_13
:cond_11
move v1, v2
goto :goto_4
:cond_13
move-object v0, p1
check-cast v0, Lco/vine/android/api/VineRepost;
iget-wide v3, p0, Lco/vine/android/api/VineRepost;->postId:J
iget-wide v5, v0, Lco/vine/android/api/VineRepost;->postId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_20
move v1, v2
goto :goto_4
:cond_20
iget v3, p0, Lco/vine/android/api/VineRepost;->priv:I
iget v4, v0, Lco/vine/android/api/VineRepost;->priv:I
if-eq v3, v4, :cond_28
move v1, v2
goto :goto_4
:cond_28
iget-wide v3, p0, Lco/vine/android/api/VineRepost;->repostId:J
iget-wide v5, v0, Lco/vine/android/api/VineRepost;->repostId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_32
move v1, v2
goto :goto_4
:cond_32
iget v3, p0, Lco/vine/android/api/VineRepost;->unflaggable:I
iget v4, v0, Lco/vine/android/api/VineRepost;->unflaggable:I
if-eq v3, v4, :cond_3a
move v1, v2
goto :goto_4
:cond_3a
iget-wide v3, p0, Lco/vine/android/api/VineRepost;->userId:J
iget-wide v5, v0, Lco/vine/android/api/VineRepost;->userId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_44
move v1, v2
goto :goto_4
:cond_44
iget v3, p0, Lco/vine/android/api/VineRepost;->verified:I
iget v4, v0, Lco/vine/android/api/VineRepost;->verified:I
if-eq v3, v4, :cond_4c
move v1, v2
goto :goto_4
:cond_4c
iget-object v3, p0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
if-eqz v3, :cond_5c
iget-object v3, p0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_60
:cond_5a
move v1, v2
goto :goto_4
:cond_5c
iget-object v3, v0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
if-nez v3, :cond_5a
:cond_60
iget-object v3, p0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
if-eqz v3, :cond_70
iget-object v3, p0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_74
:cond_6e
move v1, v2
goto :goto_4
:cond_70
iget-object v3, v0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
if-nez v3, :cond_6e
:cond_74
iget-object v3, p0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
if-eqz v3, :cond_84
iget-object v3, p0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_88
:cond_82
move v1, v2
goto :goto_4
:cond_84
iget-object v3, v0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
if-nez v3, :cond_82
:cond_88
iget-object v3, p0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
if-eqz v3, :cond_99
iget-object v3, p0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_96
move v1, v2
goto/16 :goto_4
:cond_99
iget-object v3, v0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
if-eqz v3, :cond_4
goto :goto_96
.end method
.method public hashCode()I
.registers 8
const/16 v6, 0x20
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
if-eqz v2, :cond_6b
iget-object v2, p0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_d
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
if-eqz v2, :cond_6d
iget-object v2, p0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_19
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
if-eqz v2, :cond_6f
iget-object v2, p0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_27
add-int v0, v3, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v3, p0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
if-eqz v3, :cond_35
iget-object v1, p0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:cond_35
add-int v0, v2, v1
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lco/vine/android/api/VineRepost;->userId:J
iget-wide v4, p0, Lco/vine/android/api/VineRepost;->userId:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lco/vine/android/api/VineRepost;->postId:J
iget-wide v4, p0, Lco/vine/android/api/VineRepost;->postId:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lco/vine/android/api/VineRepost;->repostId:J
iget-wide v4, p0, Lco/vine/android/api/VineRepost;->repostId:J
ushr-long/2addr v4, v6
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lco/vine/android/api/VineRepost;->verified:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lco/vine/android/api/VineRepost;->priv:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lco/vine/android/api/VineRepost;->unflaggable:I
add-int v0, v1, v2
return v0
:cond_6b
move v0, v1
goto :goto_d
:cond_6d
move v2, v1
goto :goto_19
:cond_6f
move v2, v1
goto :goto_27
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 4
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineRepost;->userId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineRepost;->postId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineRepost;->repostId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineRepost;->verified:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineRepost;->priv:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineRepost;->unflaggable:I
return-void
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 4
iget-object v0, p0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VineRepost;->avatarUrl:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VineRepost;->location:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VineRepost;->description:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-wide v0, p0, Lco/vine/android/api/VineRepost;->userId:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineRepost;->postId:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineRepost;->repostId:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget v0, p0, Lco/vine/android/api/VineRepost;->verified:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VineRepost;->priv:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VineRepost;->unflaggable:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
return-void
.end method