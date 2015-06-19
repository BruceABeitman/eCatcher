.class public Lco/vine/android/api/VineConversation;
.super Ljava/lang/Object;
.source "VineConversation.java"
.implements Ljava/io/Externalizable;
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public conversationId:J
.field public conversationObjectId:J
.field public createdBy:J
.field public lastMessage:J
.field public messages:Ljava/util/ArrayList;
.field public networkType:I
.field public unreadMessageCount:J
.field public users:Ljava/util/ArrayList;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineConversation$1;
invoke-direct {v0}, Lco/vine/android/api/VineConversation$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineConversation;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(JJJLjava/util/ArrayList;Ljava/util/ArrayList;IJ)V
.registers 12
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lco/vine/android/api/VineConversation;->conversationId:J
iput-wide p3, p0, Lco/vine/android/api/VineConversation;->lastMessage:J
iput-wide p5, p0, Lco/vine/android/api/VineConversation;->createdBy:J
iput-wide p10, p0, Lco/vine/android/api/VineConversation;->unreadMessageCount:J
iput-object p7, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
iput-object p8, p0, Lco/vine/android/api/VineConversation;->users:Ljava/util/ArrayList;
iput p9, p0, Lco/vine/android/api/VineConversation;->networkType:I
return-void
.end method
.method public constructor <init>(JJLjava/util/ArrayList;J)V
.registers 8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide p1, p0, Lco/vine/android/api/VineConversation;->conversationId:J
iput-wide p3, p0, Lco/vine/android/api/VineConversation;->lastMessage:J
iput-object p5, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
iput-wide p6, p0, Lco/vine/android/api/VineConversation;->unreadMessageCount:J
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->conversationId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->lastMessage:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->createdBy:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->unreadMessageCount:J
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lco/vine/android/api/VineConversation;->users:Ljava/util/ArrayList;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineConversation;->networkType:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->conversationObjectId:J
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public lastMessage()Lco/vine/android/api/VinePrivateMessage;
.registers 7
iget-object v2, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z
move-result v2
if-eqz v2, :cond_a
const/4 v1, 0x0
:goto_9
return-object v1
:cond_a
iget-object v2, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v0
:cond_10
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v2
if-eqz v2, :cond_25
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VinePrivateMessage;
iget-wide v2, v1, Lco/vine/android/api/VinePrivateMessage;->messageId:J
iget-wide v4, p0, Lco/vine/android/api/VineConversation;->lastMessage:J
cmp-long v2, v2, v4
if-nez v2, :cond_10
goto :goto_9
:cond_25
iget-object v2, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/api/VinePrivateMessage;
move-object v1, v2
goto :goto_9
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 4
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->conversationId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->lastMessage:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->createdBy:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->unreadMessageCount:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, p0, Lco/vine/android/api/VineConversation;->users:Ljava/util/ArrayList;
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineConversation;->networkType:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineConversation;->conversationObjectId:J
return-void
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 4
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->conversationId:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->lastMessage:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->createdBy:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->unreadMessageCount:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VineConversation;->users:Ljava/util/ArrayList;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget v0, p0, Lco/vine/android/api/VineConversation;->networkType:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->conversationId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->lastMessage:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->createdBy:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->unreadMessageCount:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineConversation;->messages:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget-object v0, p0, Lco/vine/android/api/VineConversation;->users:Ljava/util/ArrayList;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V
iget v0, p0, Lco/vine/android/api/VineConversation;->networkType:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/api/VineConversation;->conversationObjectId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
.end method