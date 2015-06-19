.class public Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.implements Lcom/spotify/music/spotlets/radio/model/a;
.field public final id:Ljava/lang/String;
.field public final imageUri:Ljava/lang/String;
.field public final seeds:[Ljava/lang/String;
.field public final subtitle:Ljava/lang/String;
.field public final subtitleUri:Ljava/lang/String;
.field public final title:Ljava/lang/String;
.field public final titleUri:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
.registers 8
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->title:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->titleUri:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->subtitle:Ljava/lang/String;
iput-object p5, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->subtitleUri:Ljava/lang/String;
iput-object p6, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->imageUri:Ljava/lang/String;
iput-object p7, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->seeds:[Ljava/lang/String;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_3c
instance-of v1, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
if-eqz v1, :cond_3c
check-cast p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->title:Ljava/lang/String;
iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->title:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->subtitle:Ljava/lang/String;
iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->subtitle:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->imageUri:Ljava/lang/String;
iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->imageUri:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->seeds:[Ljava/lang/String;
iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->seeds:[Ljava/lang/String;
invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_3c
const/4 v0, 0x1
:cond_3c
return v0
.end method
.method public getCoverImageUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->imageUri:Ljava/lang/String;
return-object v0
.end method
.method public getSeedUris()[Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->seeds:[Ljava/lang/String;
return-object v0
.end method
.method public getStationId()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
return-object v0
.end method
.method public getSubtitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->subtitle:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->title:Ljava/lang/String;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x5
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->title:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x2
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->subtitle:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x3
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->imageUri:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x4
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->seeds:[Ljava/lang/String;
invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method
.method public isUserStation()Z
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method