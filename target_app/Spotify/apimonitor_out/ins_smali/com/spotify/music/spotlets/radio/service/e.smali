.class final Lcom/spotify/music/spotlets/radio/service/e;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
.field private final b:Lcom/spotify/mobile/android/ui/actions/a;
.field private final c:Landroid/content/Context;
.field private final d:Lcom/spotify/music/spotlets/radio/service/f;
.field private final e:Lcom/spotify/music/spotlets/radio/service/a;
.field private f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
.field private final g:Lcom/spotify/music/spotlets/radio/service/b;
.field private final h:Lcom/spotify/music/spotlets/radio/service/b;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/music/spotlets/radio/service/f;)V
.registers 7
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->b:Lcom/spotify/mobile/android/ui/actions/a;
new-instance v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
new-array v1, v3, [Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
new-array v2, v3, [Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
new-array v3, v3, [Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;-><init>([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
new-instance v0, Lcom/spotify/music/spotlets/radio/service/e$1;
invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/service/e$1;-><init>(Lcom/spotify/music/spotlets/radio/service/e;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->g:Lcom/spotify/music/spotlets/radio/service/b;
new-instance v0, Lcom/spotify/music/spotlets/radio/service/e$2;
invoke-direct {v0, p0}, Lcom/spotify/music/spotlets/radio/service/e$2;-><init>(Lcom/spotify/music/spotlets/radio/service/e;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->h:Lcom/spotify/music/spotlets/radio/service/b;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/e;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/music/spotlets/radio/service/e;->d:Lcom/spotify/music/spotlets/radio/service/f;
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->c:Landroid/content/Context;
new-instance v1, Lcom/spotify/music/spotlets/radio/service/a;
invoke-direct {v1, v0}, Lcom/spotify/music/spotlets/radio/service/a;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->e:Lcom/spotify/music/spotlets/radio/service/a;
new-instance v0, Lcom/spotify/mobile/android/cosmos/player/v1/Player;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->c:Landroid/content/Context;
invoke-static {v1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;-><init>(Lcom/spotify/cosmos/android/Resolver;)V
iput-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->a:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
invoke-virtual {p0}, Lcom/spotify/music/spotlets/radio/service/e;->c()V
return-void
.end method
.method static synthetic a(Lcom/spotify/music/spotlets/radio/service/e;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;)Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
.registers 2
iput-object p1, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
return-object p1
.end method
.method private static a([Lcom/spotify/music/spotlets/radio/model/TrackModel;)Ljava/util/List;
.registers 5
new-instance v1, Ljava/util/ArrayList;
array-length v0, p0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
array-length v2, p0
const/4 v0, 0x0
:goto_8
if-ge v0, v2, :cond_14
aget-object v3, p0, v0
iget-object v3, v3, Lcom/spotify/music/spotlets/radio/model/TrackModel;->uri:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_14
return-object v1
.end method
.method private a(Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
.registers 7
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_10
const-string v1, "station-id"
invoke-virtual {v0, v1, p2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
:cond_10
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->b:Lcom/spotify/mobile/android/ui/actions/a;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->c:Landroid/content/Context;
invoke-static {v1, p3, p4, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/music/spotlets/radio/model/RadioStationModel;Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
.registers 13
const/4 v1, 0x0
new-instance v2, Ljava/util/ArrayList;
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v0, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
array-length v0, v0
invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v3, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
array-length v4, v3
move v0, v1
:goto_11
if-ge v0, v4, :cond_29
aget-object v5, v3, v0
iget-object v6, v5, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
iget-object v7, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_25
invoke-virtual {v2, v1, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
:goto_22
add-int/lit8 v0, v0, 0x1
goto :goto_11
:cond_25
invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_22
:cond_29
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
new-instance v2, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v3, v3, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
iget-object v4, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v4, v4, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
invoke-direct {v2, v0, v3, v4}, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;-><init>([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)V
iput-object v2, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
invoke-direct {p0}, Lcom/spotify/music/spotlets/radio/service/e;->d()V
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->e:Lcom/spotify/music/spotlets/radio/service/a;
iget-object v2, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/e;->g:Lcom/spotify/music/spotlets/radio/service/b;
invoke-virtual {v0, v2, v3}, Lcom/spotify/music/spotlets/radio/service/a;->a(Ljava/lang/String;Lcom/spotify/music/spotlets/radio/service/b;)V
sget-object v0, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;->PLAY:Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->create(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState$Action;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
iget-object v2, p2, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->tracks:[Lcom/spotify/music/spotlets/radio/model/TrackModel;
invoke-static {v2}, Lcom/spotify/music/spotlets/radio/service/e;->a([Lcom/spotify/music/spotlets/radio/model/TrackModel;)Ljava/util/List;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->tracks(Ljava/util/List;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
iget-object v2, p2, Lcom/spotify/music/spotlets/radio/model/RadioStationTracksModel;->nextTracksUri:Ljava/lang/String;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->nextPageUrl(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v2
iget-object v0, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->seeds:[Ljava/lang/String;
if-eqz v0, :cond_ab
array-length v3, v0
if-lez v3, :cond_ab
aget-object v1, v0, v1
const/4 v0, 0x0
if-eqz v1, :cond_8c
const-string v3, "spotify:"
invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_8c
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "spotify:radio:"
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v3, 0x8
invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_8c
:cond_8c
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->contextUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
invoke-virtual {p3}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->viewUri(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/player/v1/PlayerStateBuilder;->build()Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;
move-result-object v0
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->a:Lcom/spotify/mobile/android/cosmos/player/v1/Player;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/cosmos/player/v1/Player;->play(Lcom/spotify/mobile/android/cosmos/player/v1/PlayerState;)Ljava/lang/Boolean;
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->v:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-virtual {p1}, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->getStationId()Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v0, v1, p3, p4}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
return-void
:cond_ab
iget-object v0, p1, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
goto :goto_8c
.end method
.method static synthetic b(Lcom/spotify/music/spotlets/radio/service/e;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/music/spotlets/radio/service/e;->d()V
return-void
.end method
.method static synthetic c(Lcom/spotify/music/spotlets/radio/service/e;)V
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->d:Lcom/spotify/music/spotlets/radio/service/f;
invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/service/f;->b()V
return-void
.end method
.method private d()V
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->d:Lcom/spotify/music/spotlets/radio/service/f;
invoke-interface {v0}, Lcom/spotify/music/spotlets/radio/service/f;->a()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->e:Lcom/spotify/music/spotlets/radio/service/a;
invoke-virtual {v0}, Lcom/spotify/music/spotlets/radio/service/a;->a()V
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
.registers 10
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->w:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {p0, v0, p1, p2, p3}, Lcom/spotify/music/spotlets/radio/service/e;->a(Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
new-instance v1, Ljava/util/ArrayList;
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v0, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
array-length v0, v0
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v2, v0, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
array-length v3, v2
const/4 v0, 0x0
:goto_15
if-ge v0, v3, :cond_27
aget-object v4, v2, v0
iget-object v5, v4, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->id:Ljava/lang/String;
invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-nez v5, :cond_24
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_24
add-int/lit8 v0, v0, 0x1
goto :goto_15
:cond_27
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v2, v2, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
array-length v2, v2
if-eq v0, v2, :cond_4d
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
new-instance v1, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v2, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v2, v2, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->recommendedStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
iget-object v3, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v3, v3, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->genreStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
invoke-direct {v1, v0, v2, v3}, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;-><init>([Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;)V
iput-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
invoke-direct {p0}, Lcom/spotify/music/spotlets/radio/service/e;->d()V
:cond_4d
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->e:Lcom/spotify/music/spotlets/radio/service/a;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->g:Lcom/spotify/music/spotlets/radio/service/b;
invoke-virtual {v0, p1, v1}, Lcom/spotify/music/spotlets/radio/service/a;->b(Ljava/lang/String;Lcom/spotify/music/spotlets/radio/service/b;)V
return-void
.end method
.method public final a([Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
.registers 12
const/4 v0, 0x0
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
iget-object v2, v1, Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;->userStations:[Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
array-length v3, v2
move v1, v0
:goto_7
if-ge v1, v3, :cond_25
aget-object v4, v2, v1
iget-object v5, v4, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->seeds:[Ljava/lang/String;
invoke-static {p1, v5}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_22
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->e:Lcom/spotify/music/spotlets/radio/service/a;
invoke-virtual {v4}, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;->getStationId()Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/spotify/music/spotlets/radio/service/h;
invoke-direct {v2, p0, v4, p2, p3}, Lcom/spotify/music/spotlets/radio/service/h;-><init>(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/music/spotlets/radio/model/RadioStationModel;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/music/spotlets/radio/service/a;->c(Ljava/lang/String;Lcom/spotify/music/spotlets/radio/service/b;)V
:goto_21
return-void
:cond_22
add-int/lit8 v1, v1, 0x1
goto :goto_7
:cond_25
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
array-length v1, p1
if-lez v1, :cond_2c
const/4 v0, 0x1
:cond_2c
invoke-static {v0}, Lcom/google/common/base/i;->b(Z)V
new-instance v0, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;
const-string v1, ""
const-string v2, ""
const-string v3, ""
const-string v4, ""
const-string v5, ""
const-string v6, ""
move-object v7, p1
invoke-direct/range {v0 .. v7}, Lcom/spotify/music/spotlets/radio/model/RadioStationModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->e:Lcom/spotify/music/spotlets/radio/service/a;
new-instance v2, Lcom/spotify/music/spotlets/radio/service/g;
invoke-direct {v2, p0, p2, p3}, Lcom/spotify/music/spotlets/radio/service/g;-><init>(Lcom/spotify/music/spotlets/radio/service/e;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/model/RadioStationModel;Lcom/spotify/music/spotlets/radio/service/b;)V
goto :goto_21
.end method
.method public final b()Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->f:Lcom/spotify/music/spotlets/radio/model/RadioStationsModel;
return-object v0
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/spotify/music/spotlets/radio/service/e;->e:Lcom/spotify/music/spotlets/radio/service/a;
iget-object v1, p0, Lcom/spotify/music/spotlets/radio/service/e;->h:Lcom/spotify/music/spotlets/radio/service/b;
invoke-virtual {v0, v1}, Lcom/spotify/music/spotlets/radio/service/a;->a(Lcom/spotify/music/spotlets/radio/service/b;)V
return-void
.end method