.class public Lco/vine/android/api/ServerStatus;
.super Ljava/lang/Object;
.source "ServerStatus.java"
.implements Landroid/os/Parcelable;
.field public static final MEDIA_UPLOAD:Ljava/lang/String; = "media"
.field public static final S3_UPLOAD:Ljava/lang/String; = "s3"
.field public message:Ljava/lang/String;
.field public staticTimelineUrl:Ljava/lang/String;
.field public status:Ljava/lang/String;
.field public title:Ljava/lang/String;
.field public uploadType:Ljava/lang/String;
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
iput-object p2, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
iput-object p3, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
iput-object p4, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
iput-object p5, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 7
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
check-cast v0, Lco/vine/android/api/ServerStatus;
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
if-eqz v3, :cond_26
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_2a
:cond_24
move v1, v2
goto :goto_4
:cond_26
iget-object v3, v0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
if-nez v3, :cond_24
:cond_2a
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
if-eqz v3, :cond_3a
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_3e
:cond_38
move v1, v2
goto :goto_4
:cond_3a
iget-object v3, v0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
if-nez v3, :cond_38
:cond_3e
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
if-eqz v3, :cond_4e
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_52
:cond_4c
move v1, v2
goto :goto_4
:cond_4e
iget-object v3, v0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
if-nez v3, :cond_4c
:cond_52
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
if-eqz v3, :cond_62
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_66
:cond_60
move v1, v2
goto :goto_4
:cond_62
iget-object v3, v0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
if-nez v3, :cond_60
:cond_66
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
if-eqz v3, :cond_76
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
iget-object v4, v0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-nez v3, :cond_4
:goto_74
move v1, v2
goto :goto_4
:cond_76
iget-object v3, v0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
if-eqz v3, :cond_4
goto :goto_74
.end method
.method public hashCode()I
.registers 5
const/4 v1, 0x0
iget-object v2, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
if-eqz v2, :cond_44
iget-object v2, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
if-eqz v2, :cond_46
iget-object v2, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_17
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
if-eqz v2, :cond_48
iget-object v2, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_25
add-int v0, v3, v2
mul-int/lit8 v3, v0, 0x1f
iget-object v2, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
if-eqz v2, :cond_4a
iget-object v2, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->hashCode()I
move-result v2
:goto_33
add-int v0, v3, v2
mul-int/lit8 v2, v0, 0x1f
iget-object v3, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
if-eqz v3, :cond_41
iget-object v1, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->hashCode()I
move-result v1
:cond_41
add-int v0, v2, v1
return v0
:cond_44
move v0, v1
goto :goto_b
:cond_46
move v2, v1
goto :goto_17
:cond_48
move v2, v1
goto :goto_25
:cond_4a
move v2, v1
goto :goto_33
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lco/vine/android/api/ServerStatus;->uploadType:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/ServerStatus;->status:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/ServerStatus;->title:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/ServerStatus;->staticTimelineUrl:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lco/vine/android/api/ServerStatus;->message:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method