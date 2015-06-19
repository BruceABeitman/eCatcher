.class public final Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Z
.field private d:Z
.field private e:Ljava/lang/String;
.field private f:J
.field private g:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 5
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_35
move v0, v1
:goto_18
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->c:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_37
:goto_20
iput-boolean v1, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->d:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->e:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->f:J
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g:Ljava/lang/String;
return-void
:cond_35
move v0, v2
goto :goto_18
:cond_37
move v1, v2
goto :goto_20
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;)V
.registers 9
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->b:Ljava/lang/String;
iput-boolean p3, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->c:Z
iput-boolean p4, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->d:Z
iput-object p5, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->e:Ljava/lang/String;
iput-wide p6, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->f:J
iput-object p8, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;B)V
.registers 10
invoke-direct/range {p0 .. p8}, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;-><init>(Ljava/lang/String;Ljava/lang/String;ZZLjava/lang/String;JLjava/lang/String;)V
return-void
.end method
.method public static a(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
.registers 2
const-string v0, "view_load_timer_message"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;J)Lcom/spotify/mobile/android/util/tracking/l;
.registers 10
new-instance v0, Lcom/spotify/mobile/android/util/tracking/l;
const/4 v5, 0x0
move-object v1, p0
move-object v2, p1
move-wide v3, p2
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/tracking/l;-><init>(Ljava/lang/String;Ljava/lang/String;JB)V
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->b:Ljava/lang/String;
return-object v0
.end method
.method public final c()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->c:Z
return v0
.end method
.method public final d()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->d:Z
return v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final e()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->e:Ljava/lang/String;
return-object v0
.end method
.method public final f()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->f:J
return-wide v0
.end method
.method public final g()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g:Ljava/lang/String;
return-object v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->c:Z
if-eqz v0, :cond_2d
move v0, v1
:goto_11
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->d:Z
if-eqz v0, :cond_2f
:goto_19
int-to-byte v0, v1
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->e:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->f:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/ViewLoadTimerMessage;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
:cond_2d
move v0, v2
goto :goto_11
:cond_2f
move v1, v2
goto :goto_19
.end method