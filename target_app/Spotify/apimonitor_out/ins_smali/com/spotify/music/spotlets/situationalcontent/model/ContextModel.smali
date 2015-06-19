.class public Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private final mLabel:Ljava/lang/String;
.field private final mTopTracks:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;
.method public constructor <init>([Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mTopTracks:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;
iput-object p2, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mLabel:Ljava/lang/String;
return-void
.end method
.method public getLabel()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mLabel:Ljava/lang/String;
return-object v0
.end method
.method public getTopTracks()[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;
.registers 2
iget-object v0, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mTopTracks:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;
return-object v0
.end method
.method public getTopTracksAsList()Ljava/util/List;
.registers 6
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/spotify/music/spotlets/situationalcontent/model/ContextModel;->mTopTracks:[Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;
array-length v3, v2
const/4 v0, 0x0
:goto_9
if-ge v0, v3, :cond_17
aget-object v4, v2, v0
invoke-virtual {v4}, Lcom/spotify/music/spotlets/situationalcontent/model/ContextTrackModel;->getTrackUri()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_17
return-object v1
.end method