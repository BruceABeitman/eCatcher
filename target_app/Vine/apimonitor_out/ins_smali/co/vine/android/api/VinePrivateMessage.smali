.class public Lco/vine/android/api/VinePrivateMessage;
.super Ljava/lang/Object;
.source "VinePrivateMessage.java"
.implements Ljava/io/Externalizable;
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
.field public static final NO_LOOP_LIMIT:I = 0x7fffffff
.field public avatarUrl:Ljava/lang/String;
.field public conversationId:J
.field public conversationRowId:J
.field public created:J
.field public ephemeral:Z
.field public errorCode:I
.field public errorReason:Ljava/lang/String;
.field public hasVideo:Z
.field public isInNetwork:Z
.field public isLast:Z
.field public localStartTime:J
.field public maxLoops:I
.field public message:Ljava/lang/String;
.field public messageId:J
.field public messageRowId:J
.field public networkType:I
.field public post:Lco/vine/android/api/VinePost;
.field public postId:J
.field public thumbnailUrl:Ljava/lang/String;
.field public uploadPath:Ljava/lang/String;
.field public userId:J
.field public vanished:Z
.field public vanishedDate:J
.field public vanishedViewedSb:Landroid/text/SpannableStringBuilder;
.field public videoUrl:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VinePrivateMessage$1;
invoke-direct {v0}, Lco/vine/android/api/VinePrivateMessage$1;-><init>()V
sput-object v0, Lco/vine/android/api/VinePrivateMessage;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
return-void
.end method
.method public constructor <init>(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIJZJJILjava/lang/String;)V
.registers 55
const/16 v27, 0x0
move-object/from16 v0, p0
move-wide/from16 v1, p1
move-wide/from16 v3, p3
move-wide/from16 v5, p5
move-wide/from16 v7, p7
move-wide/from16 v9, p9
move-object/from16 v11, p11
move-object/from16 v12, p12
move-object/from16 v13, p13
move/from16 v14, p14
move/from16 v15, p15
move/from16 v16, p16
move/from16 v17, p17
move-wide/from16 v18, p18
move/from16 v20, p20
move-wide/from16 v21, p21
move-wide/from16 v23, p23
move/from16 v25, p25
move-object/from16 v26, p26
invoke-direct/range {v0 .. v27}, Lco/vine/android/api/VinePrivateMessage;-><init>(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIJZJJILjava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIJZJJILjava/lang/String;Ljava/lang/String;)V
.registers 31
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v2, 0x0
iput v2, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
iput-wide p1, p0, Lco/vine/android/api/VinePrivateMessage;->messageRowId:J
iput-wide p3, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
iput-wide p5, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
iput-wide p7, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
iput-wide p9, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
iput-object p11, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
iput-object p12, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
move-object/from16 v0, p13
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
move/from16 v0, p14
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
invoke-static {p12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_56
const/4 v2, 0x1
:goto_23
iput-boolean v2, p0, Lco/vine/android/api/VinePrivateMessage;->hasVideo:Z
const/4 v2, 0x1
move/from16 v0, p14
if-ne v0, v2, :cond_58
const/4 v2, 0x1
:goto_2b
iput-boolean v2, p0, Lco/vine/android/api/VinePrivateMessage;->isInNetwork:Z
move/from16 v0, p15
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
move/from16 v0, p16
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
move/from16 v0, p17
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
move-wide/from16 v0, p18
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
move/from16 v0, p20
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z
move-wide/from16 v0, p21
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
move-wide/from16 v0, p23
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
move/from16 v0, p25
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
move-object/from16 v0, p26
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;
move-object/from16 v0, p27
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->uploadPath:Ljava/lang/String;
return-void
:cond_56
const/4 v2, 0x0
goto :goto_23
:cond_58
const/4 v2, 0x0
goto :goto_2b
.end method
.method public constructor <init>(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIJZJLco/vine/android/api/VinePost;ILjava/lang/String;)V
.registers 55
if-eqz p23, :cond_36
move-object/from16 v0, p23
iget-wide v0, v0, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v25, v0
:goto_8
move-object/from16 v2, p0
move-wide/from16 v3, p1
move-wide/from16 v5, p3
move-wide/from16 v7, p5
move-wide/from16 v9, p7
move-wide/from16 v11, p9
move-object/from16 v13, p11
move-object/from16 v14, p12
move-object/from16 v15, p13
move/from16 v16, p14
move/from16 v17, p15
move/from16 v18, p16
move/from16 v19, p17
move-wide/from16 v20, p18
move/from16 v22, p20
move-wide/from16 v23, p21
move/from16 v27, p24
move-object/from16 v28, p25
invoke-direct/range {v2 .. v28}, Lco/vine/android/api/VinePrivateMessage;-><init>(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIJZJJILjava/lang/String;)V
move-object/from16 v0, p23
move-object/from16 v1, p0
iput-object v0, v1, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
return-void
:cond_36
const-wide/16 v25, 0x0
goto :goto_8
.end method
.method public constructor <init>(Landroid/database/Cursor;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v2, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageRowId:J
const/16 v0, 0x13
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
const/4 v0, 0x5
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
const/4 v0, 0x3
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
const/4 v0, 0x4
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
const/4 v0, 0x6
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
const/4 v0, 0x7
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
const/16 v0, 0x18
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
const/16 v0, 0x14
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_117
move v0, v1
:goto_5e
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->hasVideo:Z
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
if-ne v0, v1, :cond_11a
move v0, v1
:goto_65
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isInNetwork:Z
const/16 v0, 0x8
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-ne v0, v1, :cond_11d
move v0, v1
:goto_70
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
const/16 v0, 0x9
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-ne v0, v1, :cond_120
move v0, v1
:goto_7b
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
const/16 v0, 0xa
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
const/16 v0, 0xb
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
const/16 v0, 0xc
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
if-ne v0, v1, :cond_123
:goto_95
iput-boolean v1, p0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z
const/16 v0, 0xd
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
const/16 v0, 0xf
invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
const/16 v0, 0x11
invoke-interface {p1, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
const/16 v0, 0x12
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;
const/16 v0, 0x10
invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->uploadPath:Ljava/lang/String;
iget-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_116
new-instance v0, Lco/vine/android/api/VinePost;
invoke-direct {v0}, Lco/vine/android/api/VinePost;-><init>()V
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
iget-wide v1, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
iput-wide v1, v0, Lco/vine/android/api/VinePost;->postId:J
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
const/16 v1, 0x1a
invoke-interface {p1, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v1
iput-wide v1, v0, Lco/vine/android/api/VinePost;->userId:J
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
const/16 v1, 0x1b
invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->username:Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
const/16 v1, 0x1c
invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->avatarUrl:Ljava/lang/String;
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
const/16 v0, 0x1d
invoke-interface {p1, v0}, Landroid/database/Cursor;->getBlob(I)[B
move-result-object v0
invoke-static {v0}, Lco/vine/android/util/Util;->fromByteArray([B)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/ArrayList;
iput-object v0, v1, Lco/vine/android/api/VinePost;->entities:Ljava/util/ArrayList;
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
const/16 v1, 0x1e
invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->description:Ljava/lang/String;
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->post:Lco/vine/android/api/VinePost;
const/16 v1, 0x1f
invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v1
iput-object v1, v0, Lco/vine/android/api/VinePost;->shareUrl:Ljava/lang/String;
:cond_116
return-void
:cond_117
move v0, v2
goto/16 :goto_5e
:cond_11a
move v0, v2
goto/16 :goto_65
:cond_11d
move v0, v2
goto/16 :goto_70
:cond_120
move v0, v2
goto/16 :goto_7b
:cond_123
move v1, v2
goto/16 :goto_95
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput v2, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageRowId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_94
move v0, v1
:goto_4c
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->hasVideo:Z
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
if-ne v0, v1, :cond_96
move v0, v1
:goto_53
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isInNetwork:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-ne v0, v1, :cond_98
move v0, v1
:goto_5c
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-ne v0, v1, :cond_9a
move v0, v1
:goto_65
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-ne v0, v1, :cond_9c
:goto_79
iput-boolean v1, p0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;
return-void
:cond_94
move v0, v2
goto :goto_4c
:cond_96
move v0, v2
goto :goto_53
:cond_98
move v0, v2
goto :goto_5c
:cond_9a
move v0, v2
goto :goto_65
:cond_9c
move v1, v2
goto :goto_79
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
check-cast v0, Lco/vine/android/api/VinePrivateMessage;
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_20
move v1, v2
goto :goto_4
:cond_20
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_2a
move v1, v2
goto :goto_4
:cond_2a
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->userId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_34
move v1, v2
goto :goto_4
:cond_34
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->created:J
cmp-long v3, v3, v5
if-eqz v3, :cond_3e
move v1, v2
goto :goto_4
:cond_3e
iget-object v3, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
if-eqz v3, :cond_4e
iget-object v3, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_52
:cond_4c
move v1, v2
goto :goto_4
:cond_4e
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
if-nez v3, :cond_4c
:cond_52
iget-object v3, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
if-eqz v3, :cond_62
iget-object v3, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_66
:cond_60
move v1, v2
goto :goto_4
:cond_62
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
if-nez v3, :cond_60
:cond_66
iget-object v3, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
if-eqz v3, :cond_76
iget-object v3, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_7a
:cond_74
move v1, v2
goto :goto_4
:cond_76
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
if-nez v3, :cond_74
:cond_7a
iget-object v3, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
if-eqz v3, :cond_8b
iget-object v3, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_8f
:cond_88
move v1, v2
goto/16 :goto_4
:cond_8b
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
if-nez v3, :cond_88
:cond_8f
iget v3, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
iget v4, v0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
if-eq v3, v4, :cond_98
move v1, v2
goto/16 :goto_4
:cond_98
iget-boolean v3, p0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z
iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z
if-eq v3, v4, :cond_a1
move v1, v2
goto/16 :goto_4
:cond_a1
iget-boolean v3, p0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
if-eq v3, v4, :cond_aa
move v1, v2
goto/16 :goto_4
:cond_aa
iget-boolean v3, p0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
iget-boolean v4, v0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
if-eq v3, v4, :cond_b3
move v1, v2
goto/16 :goto_4
:cond_b3
iget v3, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
iget v4, v0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
if-eq v3, v4, :cond_bc
move v1, v2
goto/16 :goto_4
:cond_bc
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
cmp-long v3, v3, v5
if-eqz v3, :cond_c7
move v1, v2
goto/16 :goto_4
:cond_c7
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
cmp-long v3, v3, v5
if-eqz v3, :cond_d2
move v1, v2
goto/16 :goto_4
:cond_d2
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessage;->postId:J
cmp-long v3, v3, v5
if-eqz v3, :cond_dd
move v1, v2
goto/16 :goto_4
:cond_dd
iget v3, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
iget v4, v0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
if-eq v3, v4, :cond_4
move v1, v2
goto/16 :goto_4
.end method
.method public hashCode()I
.registers 10
const/4 v3, 0x1
const/4 v2, 0x0
const/16 v8, 0x20
iget-wide v4, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
iget-wide v6, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v0, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
iget-wide v6, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
iget-wide v6, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget-wide v4, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
iget-wide v6, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
ushr-long/2addr v6, v8
xor-long/2addr v4, v6
long-to-int v4, v4
add-int v0, v1, v4
mul-int/lit8 v1, v0, 0x1f
iget v4, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
add-int v0, v1, v4
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
if-eqz v1, :cond_ae
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_3e
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
if-eqz v1, :cond_b0
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_4c
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
if-eqz v1, :cond_b2
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_5a
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
if-eqz v1, :cond_b4
iget-object v1, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:goto_68
add-int v0, v4, v1
mul-int/lit8 v4, v0, 0x1f
iget-boolean v1, p0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
if-eqz v1, :cond_b6
move v1, v3
:goto_71
add-int v0, v4, v1
mul-int/lit8 v1, v0, 0x1f
iget-boolean v4, p0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
if-eqz v4, :cond_b8
:goto_79
add-int v0, v1, v3
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
iget-wide v4, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
ushr-long/2addr v4, v8
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
iget-wide v4, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
ushr-long/2addr v4, v8
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget-wide v2, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
iget-wide v4, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
ushr-long/2addr v4, v8
xor-long/2addr v2, v4
long-to-int v2, v2
add-int v0, v1, v2
mul-int/lit8 v1, v0, 0x1f
iget v2, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
iget v3, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
ushr-int/lit8 v3, v3, 0x20
xor-int/2addr v2, v3
add-int v0, v1, v2
return v0
:cond_ae
move v1, v2
goto :goto_3e
:cond_b0
move v1, v2
goto :goto_4c
:cond_b2
move v1, v2
goto :goto_5a
:cond_b4
move v1, v2
goto :goto_68
:cond_b6
move v1, v2
goto :goto_71
:cond_b8
move v3, v2
goto :goto_79
.end method
.method public readExternal(Ljava/io/ObjectInput;)V
.registers 7
const/4 v2, 0x0
const/4 v1, 0x1
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageRowId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_97
move v0, v1
:goto_4f
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->hasVideo:Z
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
if-ne v0, v1, :cond_99
move v0, v1
:goto_56
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isInNetwork:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
if-ne v0, v1, :cond_9b
move v0, v1
:goto_5f
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
if-ne v0, v1, :cond_9d
move v0, v1
:goto_68
iput-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
if-ne v0, v1, :cond_9f
:goto_7c
iput-boolean v1, p0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
invoke-interface {p1}, Ljava/io/ObjectInput;->readLine()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;
return-void
:cond_97
move v0, v2
goto :goto_4f
:cond_99
move v0, v2
goto :goto_56
:cond_9b
move v0, v2
goto :goto_5f
:cond_9d
move v0, v2
goto :goto_68
:cond_9f
move v1, v2
goto :goto_7c
.end method
.method public writeExternal(Ljava/io/ObjectOutput;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageRowId:J
invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeObject(Ljava/lang/Object;)V
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
if-eqz v0, :cond_6a
move v0, v1
:goto_39
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
if-eqz v0, :cond_6c
move v0, v1
:goto_41
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
invoke-interface {p1, v3, v4}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z
if-eqz v0, :cond_6e
:goto_52
invoke-interface {p1, v1}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
invoke-interface {p1, v0, v1}, Ljava/io/ObjectOutput;->writeLong(J)V
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeInt(I)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;
invoke-interface {p1, v0}, Ljava/io/ObjectOutput;->writeChars(Ljava/lang/String;)V
return-void
:cond_6a
move v0, v2
goto :goto_39
:cond_6c
move v0, v2
goto :goto_41
:cond_6e
move v1, v2
goto :goto_52
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageRowId:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->userId:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->created:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->avatarUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->isLast:Z
if-eqz v0, :cond_6a
move v0, v1
:goto_39
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->vanished:Z
if-eqz v0, :cond_6c
move v0, v1
:goto_41
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v3, p0, Lco/vine/android/api/VinePrivateMessage;->vanishedDate:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-boolean v0, p0, Lco/vine/android/api/VinePrivateMessage;->ephemeral:Z
if-eqz v0, :cond_6e
:goto_52
invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VinePrivateMessage;->postId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorCode:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-object v0, p0, Lco/vine/android/api/VinePrivateMessage;->errorReason:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
:cond_6a
move v0, v2
goto :goto_39
:cond_6c
move v0, v2
goto :goto_41
:cond_6e
move v1, v2
goto :goto_52
.end method