.class public Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.field public static final TYPE_ALBUM:Ljava/lang/String; = "ALBUM"
.field public static final TYPE_ARTIST:Ljava/lang/String; = "ARTIST"
.field public static final TYPE_PLAYLIST:Ljava/lang/String; = "PLAYLIST"
.field public static final TYPE_TRACK:Ljava/lang/String; = "TRACK"
.field final mImage:Ljava/lang/String;
.field final mTitle:Ljava/lang/String;
.field final mType:Ljava/lang/String;
.field final mUri:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->mType:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->mUri:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->mTitle:Ljava/lang/String;
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->mImage:Ljava/lang/String;
return-void
.end method
.method public getImage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->mImage:Ljava/lang/String;
return-object v0
.end method
.method public getTitle()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->mTitle:Ljava/lang/String;
return-object v0
.end method
.method public getType()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->mType:Ljava/lang/String;
return-object v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/CollectionFavorite;->mUri:Ljava/lang/String;
return-object v0
.end method