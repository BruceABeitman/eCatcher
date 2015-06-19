.class public final Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private a:Ljava/lang/String;
.field private b:Z
.field private c:J
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method protected constructor <init>(Landroid/os/Parcel;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B
move-result v0
if-eqz v0, :cond_19
const/4 v0, 0x1
:goto_a
iput-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->b:Z
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->c:J
return-void
:cond_19
const/4 v0, 0x0
goto :goto_a
.end method
.method private constructor <init>(Ljava/lang/String;ZJ)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean p2, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->b:Z
iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->a:Ljava/lang/String;
iput-wide p3, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->c:J
return-void
.end method
.method public static a(Landroid/content/Intent;)Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;
.registers 2
const-string v0, "app_startup_message"
invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;
return-object v0
.end method
.method public static a(Ljava/lang/String;ZJ)Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;-><init>(Ljava/lang/String;ZJ)V
return-object v0
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->a:Ljava/lang/String;
return-object v0
.end method
.method public final b()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->b:Z
return v0
.end method
.method public final c()J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->c:J
return-wide v0
.end method
.method public final describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public final writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-boolean v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->b:Z
if-eqz v0, :cond_14
const/4 v0, 0x1
:goto_5
int-to-byte v0, v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-wide v0, p0, Lcom/spotify/mobile/android/util/tracking/AppStartupTimerMessage;->c:J
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V
return-void
:cond_14
const/4 v0, 0x0
goto :goto_5
.end method