.class public Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public final nextTracksUri:Ljava/lang/String;
.field public final tracks:[Lcom/spotify/music/spotlets/radio/model/TrackModel;
.method public constructor <init>([Lcom/spotify/music/spotlets/radio/model/TrackModel;Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->tracks:[Lcom/spotify/music/spotlets/radio/model/TrackModel;
iput-object p2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->nextTracksUri:Ljava/lang/String;
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
if-eqz p1, :cond_1e
instance-of v1, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;
if-eqz v1, :cond_1e
check-cast p1, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->tracks:[Lcom/spotify/music/spotlets/radio/model/TrackModel;
iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->tracks:[Lcom/spotify/music/spotlets/radio/model/TrackModel;
invoke-static {v1, v2}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->nextTracksUri:Ljava/lang/String;
iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->nextTracksUri:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/dv;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1e
const/4 v0, 0x1
:cond_1e
return v0
.end method
.method public hashCode()I
.registers 4
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/Object;
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->nextTracksUri:Ljava/lang/String;
aput-object v2, v0, v1
const/4 v1, 0x1
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->tracks:[Lcom/spotify/music/spotlets/radio/model/TrackModel;
invoke-static {v2}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v2
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
aput-object v2, v0, v1
invoke-static {v0}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I
move-result v0
return v0
.end method