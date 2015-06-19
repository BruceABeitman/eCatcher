.class public Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public final clusters:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;
.field public final recType:Ljava/lang/String;
.method public constructor <init>([Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;Ljava/lang/String;)V
.registers 3
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;->recType:Ljava/lang/String;
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedClusters;->clusters:[Lcom/spotify/mobile/android/spotlets/browse/model/RecommendedPlaylists;
return-void
.end method