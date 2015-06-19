.class public Lco/vine/android/api/VineUpload;
.super Ljava/lang/Object;
.source "VineUpload.java"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public captchaUrl:Ljava/lang/String;
.field public conversationRowId:J
.field public hash:Ljava/lang/String;
.field public id:J
.field public isPrivate:Z
.field public mergedMessageId:J
.field public path:Ljava/lang/String;
.field public postInfo:Ljava/lang/String;
.field public reference:Ljava/lang/String;
.field public status:I
.field public thumbnailPath:Ljava/lang/String;
.field public thumbnailUrl:Ljava/lang/String;
.field public uploadTime:J
.field public videoUrl:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lco/vine/android/api/VineUpload$1;
invoke-direct {v0}, Lco/vine/android/api/VineUpload$1;-><init>()V
sput-object v0, Lco/vine/android/api/VineUpload;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput v0, p0, Lco/vine/android/api/VineUpload;->status:I
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lco/vine/android/api/VineUpload;->status:I
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
if-lez v0, :cond_5b
const/4 v0, 0x1
:goto_10
iput-boolean v0, p0, Lco/vine/android/api/VineUpload;->isPrivate:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineUpload;->id:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineUpload;->uploadTime:J
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineUpload;->conversationRowId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->hash:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->thumbnailPath:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->reference:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->captchaUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->videoUrl:Ljava/lang/String;
return-void
:cond_5b
const/4 v0, 0x0
goto :goto_10
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZJJ)V
.registers 20
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/api/VineUpload;->hash:Ljava/lang/String;
iput-object p3, p0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;
iput-object p4, p0, Lco/vine/android/api/VineUpload;->videoUrl:Ljava/lang/String;
iput-object p5, p0, Lco/vine/android/api/VineUpload;->thumbnailPath:Ljava/lang/String;
iput-object p6, p0, Lco/vine/android/api/VineUpload;->thumbnailUrl:Ljava/lang/String;
iput-object p8, p0, Lco/vine/android/api/VineUpload;->reference:Ljava/lang/String;
iput p9, p0, Lco/vine/android/api/VineUpload;->status:I
iput-boolean p11, p0, Lco/vine/android/api/VineUpload;->isPrivate:Z
move-wide/from16 v0, p12
iput-wide v0, p0, Lco/vine/android/api/VineUpload;->conversationRowId:J
invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_2c
invoke-static {p7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v2
iput-wide v2, p0, Lco/vine/android/api/VineUpload;->uploadTime:J
:goto_25
iput-object p10, p0, Lco/vine/android/api/VineUpload;->captchaUrl:Ljava/lang/String;
move-wide/from16 v0, p14
iput-wide v0, p0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
return-void
:cond_2c
const-wide/16 v2, 0x0
iput-wide v2, p0, Lco/vine/android/api/VineUpload;->uploadTime:J
goto :goto_25
.end method
.method public static declared-synchronized fromCursor(Ljava/lang/String;Landroid/database/Cursor;)Lco/vine/android/api/VineUpload;
.registers 20
const-class v17, Lco/vine/android/api/VineUpload;
monitor-enter v17
const/4 v1, 0x2
:try_start_4
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v1, 0x4
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v4
const/4 v1, 0x5
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v5
const/4 v1, 0x6
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v6
const/4 v1, 0x7
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v7
const/16 v1, 0x8
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v8
const/16 v1, 0xb
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v9
const/4 v1, 0x3
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v10
const/16 v1, 0x9
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I
move-result v1
if-lez v1, :cond_69
const/4 v12, 0x1
:goto_48
const/16 v1, 0xa
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v13
const/16 v1, 0xd
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
move-result-object v11
const/16 v1, 0xf
move-object/from16 v0, p1
invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J
move-result-wide v15
new-instance v1, Lco/vine/android/api/VineUpload;
move-object/from16 v2, p0
invoke-direct/range {v1 .. v16}, Lco/vine/android/api/VineUpload;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;ZJJ)V
:try_end_67
.catchall {:try_start_4 .. :try_end_67} :catchall_6b
monitor-exit v17
return-object v1
:cond_69
const/4 v12, 0x0
goto :goto_48
:catchall_6b
move-exception v1
monitor-exit v17
throw v1
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public getPostInfo()Lco/vine/android/api/VineUpload$PostInfo;
.registers 3
const-string v0, "Post info: {}."
iget-object v1, p0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x0
:goto_10
return-object v0
:cond_11
iget-object v0, p0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;
invoke-static {v0}, Lco/vine/android/api/VineUpload$PostInfo;->fromJsonString(Ljava/lang/String;)Lco/vine/android/api/VineUpload$PostInfo;
move-result-object v0
goto :goto_10
.end method
.method public getUris()[Ljava/lang/String;
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/api/VineUpload;->videoUrl:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lco/vine/android/api/VineUpload;->thumbnailUrl:Ljava/lang/String;
aput-object v2, v0, v1
return-object v0
.end method
.method public isExpired()Z
.registers 5
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lco/vine/android/api/VineUpload;->uploadTime:J
sub-long/2addr v0, v2
const-wide/32 v2, 0x5265c00
cmp-long v0, v0, v2
if-lez v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public setCaptchaUrl(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lco/vine/android/api/VineUpload;->captchaUrl:Ljava/lang/String;
return-void
.end method
.method public setUris([Ljava/lang/String;)V
.registers 3
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->videoUrl:Ljava/lang/String;
const/4 v0, 0x1
aget-object v0, p1, v0
iput-object v0, p0, Lco/vine/android/api/VineUpload;->thumbnailUrl:Ljava/lang/String;
return-void
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget v0, p0, Lco/vine/android/api/VineUpload;->status:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-boolean v0, p0, Lco/vine/android/api/VineUpload;->isPrivate:Z
if-eqz v0, :cond_4a
const/4 v0, 0x1
:goto_a
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
iget-wide v0, p0, Lco/vine/android/api/VineUpload;->id:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineUpload;->uploadTime:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-wide v0, p0, Lco/vine/android/api/VineUpload;->conversationRowId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->hash:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->thumbnailPath:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->thumbnailUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->reference:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->captchaUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lco/vine/android/api/VineUpload;->videoUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
:cond_4a
const/4 v0, 0x0
goto :goto_a
.end method