.class public Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Parcelable;
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
.field public mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
.field public mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel$1;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel$1;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->CREATOR:Landroid/os/Parcelable$Creator;
return-void
.end method
.method public constructor <init>(Landroid/os/Parcel;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
const-class v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
return-void
.end method
.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
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
check-cast p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
if-eqz v2, :cond_25
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_29
:cond_23
move v0, v1
goto :goto_4
:cond_25
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
if-nez v2, :cond_23
:cond_29
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
if-eqz v2, :cond_39
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_4
:goto_37
move v0, v1
goto :goto_4
:cond_39
iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
if-eqz v2, :cond_4
goto :goto_37
.end method
.method public getSuggestionModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
return-object v0
.end method
.method public getUserModel()Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;->hashCode()I
move-result v0
:goto_b
mul-int/lit8 v0, v0, 0x1f
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
if-eqz v2, :cond_17
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;->hashCode()I
move-result v1
:cond_17
add-int/2addr v0, v1
return v0
:cond_19
move v0, v1
goto :goto_b
.end method
.method public writeToParcel(Landroid/os/Parcel;I)V
.registers 5
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mUserModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/UserModel;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/socialchart/model/SocialChartResponseModel;->mSuggestionModel:Lcom/spotify/mobile/android/spotlets/socialchart/model/SuggestionModel;
invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V
return-void
.end method