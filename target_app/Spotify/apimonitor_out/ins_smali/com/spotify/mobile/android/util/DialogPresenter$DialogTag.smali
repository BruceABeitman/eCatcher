.class  Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->a:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method private constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->a:Ljava/lang/String;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;-><init>(Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->a:Ljava/lang/String;
return-object v0
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
instance-of v0, p1, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
if-eqz v0, :cond_12
check-cast p1, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;
iget-object v0, p1, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->a:Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->a:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/util/DialogPresenter$DialogTag;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method