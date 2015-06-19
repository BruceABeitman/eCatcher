.class  Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public final releases:Ljava/util/List;
.field public final totalCount:I
.method public constructor <init>(Ljava/util/List;I)V
.registers 4
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
#calls: Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->readNullableList(Ljava/util/List;)Ljava/util/List;
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel;->access$100(Ljava/util/List;)Ljava/util/List;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;->releases:Ljava/util/List;
iput p2, p0, Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$ReleaseListTemp;->totalCount:I
return-void
.end method