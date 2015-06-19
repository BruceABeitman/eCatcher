.class public Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mAd:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
.field private final mEvent:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
.field private final mInventoryType:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method private constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mEvent:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mInventoryType:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mAd:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
return-void
.end method
.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;-><init>(Landroid/os/Parcel;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/ads/model/Ad;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mEvent:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
invoke-static {p2}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mInventoryType:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mAd:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
return-void
.end method
.method public describeContents()I
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-eqz p1, :cond_11
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_13
:cond_11
move v0, v1
goto :goto_4
:cond_13
check-cast p1, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mAd:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mAd:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_21
move v0, v1
goto :goto_4
:cond_21
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mEvent:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mEvent:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_2d
move v0, v1
goto :goto_4
:cond_2d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mInventoryType:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mInventoryType:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
move v0, v1
goto :goto_4
.end method
.method public getAd()Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mAd:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
return-object v0
.end method
.method public getEvent()Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mEvent:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
return-object v0
.end method
.method public getInventoryType()Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mInventoryType:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
return-object v0
.end method
.method public hashCode()I
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mEvent:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->hashCode()I
move-result v0
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mInventoryType:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->hashCode()I
move-result v1
add-int/2addr v0, v1
mul-int/lit8 v0, v0, 0x1f
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mAd:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/ads/model/Ad;->hashCode()I
move-result v1
add-int/2addr v0, v1
return v0
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mEvent:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$Event;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mInventoryType:Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent$InventoryType;->a()Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/ads/model/AdEvent;->mAd:Lcom/spotify/mobile/android/spotlets/ads/model/Ad;
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
return-void
.end method