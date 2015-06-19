.class public Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public final a:Ljava/lang/String;
.field public final b:Ljava/lang/String;
.field public final c:Ljava/lang/String;
.field public final d:Landroid/content/Intent;
.field public final e:I
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->a:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->b:Ljava/lang/String;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->c:Ljava/lang/String;
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->d:Landroid/content/Intent;
invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I
move-result v0
iput v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->e:I
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public toString()Ljava/lang/String;
.registers 6
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v1, "%s/%s/%s/#%08x"
const/4 v2, 0x4
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->a:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->b:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x2
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->c:Ljava/lang/String;
aput-object v4, v2, v3
const/4 v3, 0x3
iget v4, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->e:I
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->a:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->c:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->d:Landroid/content/Intent;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->e:I
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V
return-void
.end method