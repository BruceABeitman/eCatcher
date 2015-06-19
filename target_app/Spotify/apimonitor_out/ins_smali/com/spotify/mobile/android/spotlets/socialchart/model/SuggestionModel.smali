.class public Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field private final mName:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 2
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
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
check-cast p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_23
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
if-eqz v2, :cond_4
goto :goto_23
.end method
.method public hashCode()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->hashCode()I
move-result v0
:goto_a
return v0
:cond_b
const/4 v0, 0x0
goto :goto_a
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->mName:Ljava/lang/String;
invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
return-void
.end method