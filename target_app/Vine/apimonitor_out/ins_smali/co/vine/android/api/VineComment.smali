.class public Lco/vine/android/api/VineComment;
.super Ljava/lang/Object;
.source "VineComment.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public avatarUrl:Ljava/lang/String;
.field public comment:Ljava/lang/String;
.field public commentId:J
.field public commentSb:Landroid/text/SpannableStringBuilder;
.field public entities:Ljava/util/ArrayList;
.field public isLast:Z
.field public location:Ljava/lang/String;
.field public postId:J
.field public timestamp:J
.field public transientEntities:Ljava/util/ArrayList;
.field public user:Lco/vine/android/api/VineUser;
.field public userId:J
.field public username:Ljava/lang/String;
.field public verified:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineComment$1;
invoke-direct {v0}, Lco/vine/android/api/VineComment$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineComment;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJLjava/util/ArrayList;Z)V
.registers 18
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lco/vine/android/api/VineComment;->commentId:J
iput-object p4, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
iput-object p3, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
iput-object p5, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
iput-wide p6, p0, Lco/vine/android/api/VineComment;->timestamp:J
iput-object p8, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
iput-wide p9, p0, Lco/vine/android/api/VineComment;->userId:J
iput-object p11, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
iput-boolean p12, p0, Lco/vine/android/api/VineComment;->verified:Z
iput-wide p13, p0, Lco/vine/android/api/VineComment;->postId:J
move-object/from16 v0, p15
iput-object v0, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
move/from16 v0, p16
iput-boolean v0, p0, Lco/vine/android/api/VineComment;->isLast:Z
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VineComment;->commentId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lco/vine/android/api/VineUser;
iput-object v0, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VineComment;->timestamp:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VineComment;->userId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-ne v0, v1, :cond_5b
move v0, v1
:goto_42
iput-boolean v0, p0, Lco/vine/android/api/VineComment;->verified:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VineComment;->postId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-ne v0, v1, :cond_5d
:goto_58
iput-boolean v1, p0, Lco/vine/android/api/VineComment;->isLast:Z
return-void
:cond_5b
move v0, v2
goto :goto_42
:cond_5d
move v1, v2
goto :goto_58
.end method
.method public static from(Landroid/database/Cursor;)Lco/vine/android/api/VineComment;
.registers 21
new-instance v2, Lco/vine/android/api/VineComment;
const/16 v3, 0x22
move-object/from16 v0, p0
invoke-interface {v0, v3}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
const/16 v5, 0x23
move-object/from16 v0, p0
invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/16 v6, 0x24
move-object/from16 v0, p0
invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
const/16 v8, 0x26
move-object/from16 v0, p0
invoke-interface {v0, v8}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v8
const/16 v10, 0x27
move-object/from16 v0, p0
invoke-interface {v0, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v10
const/16 v11, 0x25
move-object/from16 v0, p0
invoke-interface {v0, v11}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v11
const/16 v13, 0x28
move-object/from16 v0, p0
invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v13
const/16 v14, 0x29
move-object/from16 v0, p0
invoke-interface {v0, v14}, Landroid/database/Cursor;->getInt(I)I
move-result v14
const/4 v15, 0x1
if-ne v14, v15, :cond_76
const/4 v14, 0x1
:goto_47
const/4 v15, 0x1
move-object/from16 v0, p0
invoke-interface {v0, v15}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v15
const/16 v17, 0x2b
move-object/from16 v0, p0
move/from16 v1, v17
invoke-interface {v0, v1}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v17
invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;
move-result-object v17
check-cast v17, Ljava/util/ArrayList;
const/16 v18, 0x2a
move-object/from16 v0, p0
move/from16 v1, v18
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v18
const/16 v19, 0x1
move/from16 v0, v18
move/from16 v1, v19
if-ne v0, v1, :cond_78
const/16 v18, 0x1
:goto_72
invoke-direct/range {v2 .. v18}, Lco/vine/android/api/VineComment;-><init>(JLjava/lang/String;Ljava/lang/String;Lco/vine/android/api/VineUser;JLjava/lang/String;JLjava/lang/String;ZJLjava/util/ArrayList;Z)V
return-object v2
:cond_76
const/4 v14, 0x0
goto :goto_47
:cond_78
const/16 v18, 0x0
goto :goto_72
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
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
check-cast v0, Lco/vine/android/api/VineComment;
iget-wide v3, p0, Lco/vine/android/api/VineComment;->commentId:J
iget-wide v5, v0, Lco/vine/android/api/VineComment;->commentId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_20
move v1, v2
goto :goto_4
:cond_20
iget-wide v3, p0, Lco/vine/android/api/VineComment;->postId:J
iget-wide v5, v0, Lco/vine/android/api/VineComment;->postId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_2a
move v1, v2
goto :goto_4
:cond_2a
iget-wide v3, p0, Lco/vine/android/api/VineComment;->timestamp:J
iget-wide v5, v0, Lco/vine/android/api/VineComment;->timestamp:J
cmp-long v3, v3, v5
if-eqz v3, :cond_34
move v1, v2
goto :goto_4
:cond_34
iget-wide v3, p0, Lco/vine/android/api/VineComment;->userId:J
iget-wide v5, v0, Lco/vine/android/api/VineComment;->userId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_3e
move v1, v2
goto :goto_4
:cond_3e
iget-boolean v3, p0, Lco/vine/android/api/VineComment;->verified:Z
iget-boolean v4, v0, Lco/vine/android/api/VineComment;->verified:Z
if-eq v3, v4, :cond_46
move v1, v2
goto :goto_4
:cond_46
iget-object v3, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
if-eqz v3, :cond_56
iget-object v3, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_5a
:cond_54
move v1, v2
goto :goto_4
:cond_56
iget-object v3, v0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
if-nez v3, :cond_54
:cond_5a
iget-object v3, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
if-eqz v3, :cond_6a
iget-object v3, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_6e
:cond_68
move v1, v2
goto :goto_4
:cond_6a
iget-object v3, v0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
if-nez v3, :cond_68
:cond_6e
iget-object v3, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
if-eqz v3, :cond_7e
iget-object v3, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
iget-object v4, v0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_82
:cond_7c
move v1, v2
goto :goto_4
:cond_7e
iget-object v3, v0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
if-nez v3, :cond_7c
:cond_82
iget-object v3, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
if-eqz v3, :cond_93
iget-object v3, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_97
:cond_90
move v1, v2
goto/16 :goto_4
:cond_93
iget-object v3, v0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
if-nez v3, :cond_90
:cond_97
iget-object v3, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
if-eqz v3, :cond_a8
iget-object v3, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
iget-object v4, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
invoke-virtual {v3, v4}, Lco/vine/android/api/VineUser;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_ac
:cond_a5
move v1, v2
goto/16 :goto_4
:cond_a8
iget-object v3, v0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
if-nez v3, :cond_a5
:cond_ac
iget-object v3, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
if-eqz v3, :cond_bd
iget-object v3, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_c1
:cond_ba
move v1, v2
goto/16 :goto_4
:cond_bd
iget-object v3, v0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
if-nez v3, :cond_ba
:cond_c1
iget-boolean v3, p0, Lco/vine/android/api/VineComment;->isLast:Z
iget-boolean v4, v0, Lco/vine/android/api/VineComment;->isLast:Z
if-eq v3, v4, :cond_4
move v1, v2
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 10
const/4 v3, 0x1
const/16 v8, 0x20
const/4 v2, 0x0
iget-wide v4, p0, Lco/vine/android/api/VineComment;->commentId:J
iget-wide v6, p0, Lco/vine/android/api/VineComment;->commentId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v0, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
if-eqz v1, :cond_92
iget-object v1, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_17
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
if-eqz v1, :cond_94
iget-object v1, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_25
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
if-eqz v1, :cond_96
iget-object v1, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
invoke-virtual {v1}, Lco/vine/android/api/VineUser;->hashCode()I
move-result v1
:goto_33
add-int v0, v4, v1
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VineComment;->timestamp:J
iget-wide v6, p0, Lco/vine/android/api/VineComment;->timestamp:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
if-eqz v1, :cond_98
iget-object v1, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_4c
add-int v0, v4, v1
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VineComment;->userId:J
iget-wide v6, p0, Lco/vine/android/api/VineComment;->userId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
if-eqz v1, :cond_9a
iget-object v1, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_65
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-boolean v1, p0, Lco/vine/android/api/VineComment;->verified:Z
if-eqz v1, :cond_9c
move v1, v3
:goto_6e
add-int v0, v4, v1
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VineComment;->postId:J
iget-wide v6, p0, Lco/vine/android/api/VineComment;->postId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
if-eqz v1, :cond_9e
iget-object v1, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I
move-result v1
:goto_87
add-int v0, v4, v1
mul-int/lit8 v1, v0, 0x1f
iget-boolean v4, p0, Lco/vine/android/api/VineComment;->verified:Z
if-eqz v4, :cond_a0
:goto_8f
add-int v0, v1, v3
return v0
:cond_92
move v1, v2
goto :goto_17
:cond_94
move v1, v2
goto :goto_25
:cond_96
move v1, v2
goto :goto_33
:cond_98
move v1, v2
goto :goto_4c
:cond_9a
move v1, v2
goto :goto_65
:cond_9c
move v1, v2
goto :goto_6e
:cond_9e
move v1, v2
goto :goto_87
:cond_a0
move v3, v2
goto :goto_8f
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-wide v0, p0, Lco/vine/android/api/VineComment;->commentId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineComment;->user:Lco/vine/android/api/VineUser;
invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-wide v0, p0, Lco/vine/android/api/VineComment;->timestamp:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineComment;->location:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lco/vine/android/api/VineComment;->userId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lco/vine/android/api/VineComment;->verified:Z
if-eqz v0, :cond_44
const/4 v0, 0x1
:goto_2d
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/api/VineComment;->postId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget-boolean v0, p0, Lco/vine/android/api/VineComment;->isLast:Z
if-eqz v0, :cond_46
const-wide/16 v0, 0x1
:goto_40
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
:cond_44
const/4 v0, 0x0
goto :goto_2d
:cond_46
const-wide/16 v0, 0x0
goto :goto_40
.end method