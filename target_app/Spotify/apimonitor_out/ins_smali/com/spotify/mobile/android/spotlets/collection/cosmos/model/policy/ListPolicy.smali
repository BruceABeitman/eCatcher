.class public Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field private mAlbumAttributes:Ljava/util/Map;
.field private mArtistAttributes:Ljava/util/Map;
.field private mArtistsAttributes:Ljava/util/Map;
.field private mAttributes:Ljava/util/Map;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getMap()Ljava/util/Map;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;->mAttributes:Ljava/util/Map;
return-object v0
.end method
.method public setAlbumAttributes(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;->mAlbumAttributes:Ljava/util/Map;
return-void
.end method
.method public setArtistAttributes(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;->mArtistAttributes:Ljava/util/Map;
return-void
.end method
.method public setArtistsAttributes(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;->mArtistsAttributes:Ljava/util/Map;
return-void
.end method
.method public setListAttributes(Ljava/util/Map;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/cosmos/model/policy/ListPolicy;->mAttributes:Ljava/util/Map;
return-void
.end method