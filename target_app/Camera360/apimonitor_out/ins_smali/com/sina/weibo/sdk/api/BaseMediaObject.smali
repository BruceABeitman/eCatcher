.class public abstract Lcom/sina/weibo/sdk/api/BaseMediaObject;
.super Ljava/lang/Object;
.source "BaseMediaObject.java"
.implements Landroid/os/Parcelable;
.field public static final MEDIA_TYPE_CMD:I = 0x7
.field public static final MEDIA_TYPE_IMAGE:I = 0x2
.field public static final MEDIA_TYPE_MUSIC:I = 0x3
.field public static final MEDIA_TYPE_TEXT:I = 0x1
.field public static final MEDIA_TYPE_VIDEO:I = 0x4
.field public static final MEDIA_TYPE_VOICE:I = 0x6
.field public static final MEDIA_TYPE_WEBPAGE:I = 0x5
.field public actionUrl:Ljava/lang/String;
.field public description:Ljava/lang/String;
.field public identify:Ljava/lang/String;
.field public schema:Ljava/lang/String;
.field public thumbData:[B
.field public title:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->schema:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->createByteArray()[B
move-result-object v0
iput-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B
return-void
.end method
.method protected checkArgs()Z
.registers 5
const/16 v3, 0x200
const/4 v1, 0x0
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v3, :cond_1a
:cond_f
const-string/jumbo v0, "Weibo.BaseMediaObject"
const-string/jumbo v2, "checkArgs fail, actionUrl is invalid"
invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
:goto_19
return v0
:cond_1a
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;
if-eqz v0, :cond_26
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v3, :cond_31
:cond_26
const-string/jumbo v0, "Weibo.BaseMediaObject"
const-string/jumbo v2, "checkArgs fail, identify is invalid"
invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_19
:cond_31
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B
array-length v0, v0
const v2, 0x8000
if-le v0, v2, :cond_65
:cond_3d
const-string/jumbo v2, "Weibo.BaseMediaObject"
new-instance v3, Ljava/lang/StringBuilder;
const-string/jumbo v0, "checkArgs fail, thumbData is invalid,size is "
invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B
if-eqz v0, :cond_63
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B
array-length v0, v0
:goto_4f
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v3, "! more then 32768."
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v2, v0}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_19
:cond_63
const/4 v0, -0x1
goto :goto_4f
:cond_65
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;
if-eqz v0, :cond_71
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-le v0, v3, :cond_7c
:cond_71
const-string/jumbo v0, "Weibo.BaseMediaObject"
const-string/jumbo v2, "checkArgs fail, title is invalid"
invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_19
:cond_7c
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;
if-eqz v0, :cond_8a
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
const/16 v2, 0x400
if-le v0, v2, :cond_95
:cond_8a
const-string/jumbo v0, "Weibo.BaseMediaObject"
const-string/jumbo v2, "checkArgs fail, description is invalid"
invoke-static {v0, v2}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v1
goto :goto_19
:cond_95
const/4 v0, 0x1
goto :goto_19
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public abstract getObjType()I
.end method
.method public final setThumbImage(Landroid/graphics/Bitmap;)V
.registers 7
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/io/ByteArrayOutputStream;
invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
:try_start_6
:try_end_6
.catchall {:try_start_1 .. :try_end_6} :catchall_32
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1a
sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x55
invoke-virtual {p1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v3
iput-object v3, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B
:try_end_13
.catchall {:try_start_6 .. :try_end_13} :catchall_44
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_13} :catch_47
if-eqz v2, :cond_42
:try_start_15
invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_18
.catch Ljava/io/IOException; {:try_start_15 .. :try_end_18} :catch_3e
move-object v1, v2
:goto_19
:cond_19
return-void
:catch_1a
move-exception v0
:try_start_1b
:goto_1b
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string/jumbo v3, "Weibo.BaseMediaObject"
const-string/jumbo v4, "put thumb failed"
invoke-static {v3, v4}, Lcom/sina/weibo/sdk/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V
:try_end_27
.catchall {:try_start_1b .. :try_end_27} :catchall_32
if-eqz v1, :cond_19
:try_start_29
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_2c
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_2c} :catch_2d
goto :goto_19
:catch_2d
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_19
:catchall_32
move-exception v3
:goto_33
if-eqz v1, :cond_38
:try_start_35
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:goto_38
:cond_38
:try_end_38
.catch Ljava/io/IOException; {:try_start_35 .. :try_end_38} :catch_39
throw v3
:catch_39
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_38
:catch_3e
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:cond_42
move-object v1, v2
goto :goto_19
:catchall_44
move-exception v3
move-object v1, v2
goto :goto_33
:catch_47
move-exception v0
move-object v1, v2
goto :goto_1b
.end method
.method protected abstract toExtraMediaObject(Ljava/lang/String;)Lcom/sina/weibo/sdk/api/BaseMediaObject;
.end method
.method protected abstract toExtraMediaString()Ljava/lang/String;
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->actionUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->schema:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->identify:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->title:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->description:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/sina/weibo/sdk/api/BaseMediaObject;->thumbData:[B
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V
return-void
.end method