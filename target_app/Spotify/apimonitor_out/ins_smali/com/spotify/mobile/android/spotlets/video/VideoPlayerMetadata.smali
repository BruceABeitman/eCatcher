.class public Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:J
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Z
.field private g:Z
.field private h:Z
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v3
iput-wide v3, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->c:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->e:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_3e
move v0, v1
:goto_2a
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->f:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_40
move v0, v1
:goto_33
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->g:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_42
:goto_3b
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->h:Z
return-void
:cond_3e
move v0, v2
goto :goto_2a
:cond_40
move v0, v2
goto :goto_33
:cond_42
move v1, v2
goto :goto_3b
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Z)V
.registers 5
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a:Ljava/lang/String;
iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b:Ljava/lang/String;
const-wide/16 v0, 0x0
iput-wide v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->c:J
iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d:Ljava/lang/String;
iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->e:Ljava/lang/String;
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->f:Z
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->g:Z
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->h:Z
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a:Ljava/lang/String;
return-object v0
.end method
.method public final a(J)V
.registers 3
iput-wide p1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->c:J
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a:Ljava/lang/String;
return-void
.end method
.method public final a(Z)V
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->h:Z
return-void
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b:Ljava/lang/String;
return-object v0
.end method
.method public final b(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b:Ljava/lang/String;
return-void
.end method
.method public final c()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->c:J
return-wide v0
.end method
.method public final c(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d:Ljava/lang/String;
return-void
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d:Ljava/lang/String;
return-object v0
.end method
.method public final d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->e:Ljava/lang/String;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->e:Ljava/lang/String;
return-object v0
.end method
.method public final f()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->f:Z
return v0
.end method
.method public final g()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->g:Z
return v0
.end method
.method public final h()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->h:Z
return v0
.end method
.method public final i()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->f:Z
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-class v1, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;
invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "{, mTitle="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mArtist="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mDuration="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->c:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mImageUrl="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mClickUrl="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mNextEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->f:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mNextEnabled="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->g:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ", mIsPaused="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->h:Z
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const/16 v1, 0x7d
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v3, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->c:J
invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->d:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->e:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->f:Z
if-eqz v0, :cond_36
move v0, v1
:goto_20
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->g:Z
if-eqz v0, :cond_38
move v0, v1
:goto_29
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/video/VideoPlayerMetadata;->h:Z
if-eqz v0, :cond_3a
:goto_31
int-to-byte v0, v1
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
return-void
:cond_36
move v0, v2
goto :goto_20
:cond_38
move v0, v2
goto :goto_29
:cond_3a
move v1, v2
goto :goto_31
.end method