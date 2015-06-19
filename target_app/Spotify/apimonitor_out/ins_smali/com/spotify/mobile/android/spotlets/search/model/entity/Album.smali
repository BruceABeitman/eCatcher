.class public final Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;
.super Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/model/entity/e;
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V
.registers 14
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
move-object v0, p0
move-object v1, p1
move-object v2, p3
move-object v3, p4
move-object v4, p2
move-object v5, p5
move-object v6, p6
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V
return-void
.end method
.method public final bridge synthetic artists()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->artists()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic getImageUri()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->getImageUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic getName()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic getUri()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->getUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic mainArtist()Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->mainArtist()Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic toString()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/Work;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method