.class final Lcom/spotify/music/spotlets/radio/service/g;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/music/spotlets/radio/service/b;
.field final synthetic a:Lcom/spotify/music/spotlets/radio/service/e;
.field private final b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private final c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
.method public constructor <init>(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
.registers 4
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/g;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/music/spotlets/radio/service/g;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p3, p0, Lcom/spotify/music/spotlets/radio/service/g;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/g;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/e;->c(Lcom/spotify/music/spotlets/radio/service/e;)V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)V
.registers 9
check-cast p1, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;
iget-object v1, p1, Lcom/spotify/music/spotlets/radio/model/NewRadioStationModel;->station:Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
new-instance v2, Ljava/util/ArrayList;
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/g;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
move-result-object v0
iget-object v0, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
array-length v0, v0
add-int/lit8 v0, v0, 0x1
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/g;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v0}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
move-result-object v0
iget-object v3, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
array-length v4, v3
const/4 v0, 0x0
:goto_21
if-ge v0, v4, :cond_31
aget-object v5, v3, v0
invoke-virtual {v5, v1}, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_2e
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2e
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_31
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/g;->a:Lcom/spotify/music/spotlets/radio/service/e;
new-instance v4, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/service/g;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v2}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
move-result-object v2
iget-object v2, v2, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
iget-object v5, p0, Lcom/spotify/music/spotlets/radio/service/g;->a:Lcom/spotify/music/spotlets/radio/service/e;
invoke-static {v5}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
move-result-object v5
iget-object v5, v5, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
invoke-direct {v4, v0, v2, v5}, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;-><init>([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)V
invoke-static {v3, v4}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/g;->a:Lcom/spotify/music/spotlets/radio/service/e;
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/service/g;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/g;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v0, v1, p1, v2, v3}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/music/spotlets/radio/model/RadioStationModel;Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
return-void
.end method