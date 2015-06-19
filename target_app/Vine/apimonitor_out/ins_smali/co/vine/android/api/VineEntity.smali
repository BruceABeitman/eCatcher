.class public Lco/vine/android/api/VineEntity;
.super Ljava/lang/Object;
.source "VineEntity.java"
.implements Ljava/io/Externalizable;
.implements Ljava/lang/Comparable;
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final TYPE_COMMENT_LIST:Ljava/lang/String; = "commentList"
.field public static final TYPE_MENTION:Ljava/lang/String; = "mention"
.field public static final TYPE_POST:Ljava/lang/String; = "post"
.field public static final TYPE_TAG:Ljava/lang/String; = "tag"
.field public static final TYPE_USER:Ljava/lang/String; = "user"
.field public static final TYPE_USER_LIST:Ljava/lang/String; = "userList"
.field private static final serialVersionUID:J = -0x37c0049c1cf0f8cbL
.field public adjusted:Z
.field public end:I
.field public id:J
.field public link:Ljava/lang/String;
.field public start:I
.field public title:Ljava/lang/String;
.field public type:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineEntity$1;
invoke-direct {v0}, Lco/vine/android/api/VineEntity$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineEntity;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v2
iput-object v2, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lco/vine/android/api/VineEntity;->start:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
iput v2, p0, Lco/vine/android/api/VineEntity;->end:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v2
iput-wide v2, p0, Lco/vine/android/api/VineEntity;->id:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v2
if-ne v2, v0, :cond_34
:goto_31
iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
return-void
:cond_34
move v0, v1
goto :goto_31
.end method
.method public constructor <init>(Lco/vine/android/api/VineEntity;)V
.registers 10
iget-object v1, p1, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
iget-object v2, p1, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
iget-object v3, p1, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
iget v4, p1, Lco/vine/android/api/VineEntity;->start:I
iget v5, p1, Lco/vine/android/api/VineEntity;->end:I
iget-wide v6, p1, Lco/vine/android/api/VineEntity;->id:J
move-object v0, p0
invoke-direct/range {v0 .. v7}, Lco/vine/android/api/VineEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
.registers 9
const/4 v0, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
iput-object p1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
iput-object p3, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
iput p4, p0, Lco/vine/android/api/VineEntity;->start:I
iput p5, p0, Lco/vine/android/api/VineEntity;->end:I
iput-wide p6, p0, Lco/vine/android/api/VineEntity;->id:J
iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
return-void
.end method
.method public compareTo(Lco/vine/android/api/VineEntity;)I
.registers 4
iget v0, p0, Lco/vine/android/api/VineEntity;->end:I
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
iget v1, p1, Lco/vine/android/api/VineEntity;->end:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I
move-result v0
return v0
.end method
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
.registers 3
check-cast p1, Lco/vine/android/api/VineEntity;
invoke-virtual {p0, p1}, Lco/vine/android/api/VineEntity;->compareTo(Lco/vine/android/api/VineEntity;)I
move-result v0
return v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public duplicate()Lco/vine/android/api/VineEntity;
.registers 9
new-instance v0, Lco/vine/android/api/VineEntity;
iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
iget-object v2, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
iget-object v3, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
iget v4, p0, Lco/vine/android/api/VineEntity;->start:I
iget v5, p0, Lco/vine/android/api/VineEntity;->end:I
iget-wide v6, p0, Lco/vine/android/api/VineEntity;->id:J
invoke-direct/range {v0 .. v7}, Lco/vine/android/api/VineEntity;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIJ)V
return-object v0
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
check-cast v0, Lco/vine/android/api/VineEntity;
iget-boolean v3, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
iget-boolean v4, v0, Lco/vine/android/api/VineEntity;->adjusted:Z
if-eq v3, v4, :cond_1e
move v1, v2
goto :goto_4
:cond_1e
iget v3, p0, Lco/vine/android/api/VineEntity;->end:I
iget v4, v0, Lco/vine/android/api/VineEntity;->end:I
if-eq v3, v4, :cond_26
move v1, v2
goto :goto_4
:cond_26
iget-wide v3, p0, Lco/vine/android/api/VineEntity;->id:J
iget-wide v5, v0, Lco/vine/android/api/VineEntity;->id:J
cmp-long v3, v3, v5
if-eqz v3, :cond_30
move v1, v2
goto :goto_4
:cond_30
iget v3, p0, Lco/vine/android/api/VineEntity;->start:I
iget v4, v0, Lco/vine/android/api/VineEntity;->start:I
if-eq v3, v4, :cond_38
move v1, v2
goto :goto_4
:cond_38
iget-object v3, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
if-eqz v3, :cond_48
iget-object v3, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4c
:cond_46
move v1, v2
goto :goto_4
:cond_48
iget-object v3, v0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
if-nez v3, :cond_46
:cond_4c
iget-object v3, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
if-eqz v3, :cond_5c
iget-object v3, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_60
:cond_5a
move v1, v2
goto :goto_4
:cond_5c
iget-object v3, v0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
if-nez v3, :cond_5a
:cond_60
iget-object v3, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
if-eqz v3, :cond_70
iget-object v3, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_6e
move v1, v2
goto :goto_4
:cond_70
iget-object v3, v0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
if-eqz v3, :cond_4
goto :goto_6e
.end method
.method public getPostId()J
.registers 5
iget-object v2, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v2
const/4 v3, 0x0
invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
return-wide v2
.end method
.method public hashCode()I
.registers 9
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
if-eqz v2, :cond_4a
iget-object v2, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
if-eqz v2, :cond_4c
iget-object v2, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_17
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
if-eqz v2, :cond_4e
iget-object v2, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_25
add-int v0, v3, v2
mul-int/lit8 v2, v0, 0x1f
iget v3, p0, Lco/vine/android/api/VineEntity;->start:I
add-int v0, v2, v3
mul-int/lit8 v2, v0, 0x1f
iget v3, p0, Lco/vine/android/api/VineEntity;->end:I
add-int v0, v2, v3
mul-int/lit8 v2, v0, 0x1f
iget-wide v3, p0, Lco/vine/android/api/VineEntity;->id:J
iget-wide v5, p0, Lco/vine/android/api/VineEntity;->id:J
const/16 v7, 0x20
ushr-long/2addr v5, v7
xor-long/2addr v3, v5
long-to-int v3, v3
add-int v0, v2, v3
mul-int/lit8 v2, v0, 0x1f
iget-boolean v3, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
if-eqz v3, :cond_47
const/4 v1, 0x1
:cond_47
add-int v0, v2, v1
return v0
:cond_4a
move v0, v1
goto :goto_b
:cond_4c
move v2, v1
goto :goto_17
:cond_4e
move v2, v1
goto :goto_25
.end method
.method public isCommentListType()Z
.registers 3
const-string v0, "commentList"
iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isTagType()Z
.registers 3
const-string v0, "tag"
iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isUserListType()Z
.registers 3
const-string v0, "userList"
iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public isUserType()Z
.registers 3
const-string v0, "user"
iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
const-string v0, "mention"
iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_1e
const-string v0, "post"
iget-object v1, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_20
:cond_1e
const/4 v0, 0x1
:goto_1f
return v0
:cond_20
const/4 v0, 0x0
goto :goto_1f
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 4
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineEntity;->start:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineEntity;->end:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineEntity;->id:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readBoolean()Z
move-result v0
iput-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
return-void
.end method
.method public toMap()Ljava/util/HashMap;
.registers 6
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
const-string v2, "id"
iget-wide v3, p0, Lco/vine/android/api/VineEntity;->id:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "type"
iget-object v3, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "text"
iget-object v3, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget v2, p0, Lco/vine/android/api/VineEntity;->start:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget v2, p0, Lco/vine/android/api/VineEntity;->end:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const-string v2, "range"
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object v0
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 4
iget-object v0, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget v0, p0, Lco/vine/android/api/VineEntity;->start:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VineEntity;->end:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/api/VineEntity;->id:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeBoolean(Z)V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineEntity;->link:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lco/vine/android/api/VineEntity;->start:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VineEntity;->end:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/api/VineEntity;->id:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-boolean v0, p0, Lco/vine/android/api/VineEntity;->adjusted:Z
if-eqz v0, :cond_27
const/4 v0, 0x1
:goto_23
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
:cond_27
const/4 v0, 0x0
goto :goto_23
.end method