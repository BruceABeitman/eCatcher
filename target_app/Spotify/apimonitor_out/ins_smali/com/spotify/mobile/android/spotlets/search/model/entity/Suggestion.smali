.class public final Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;
.super Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/model/entity/e;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
.registers 5
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
.parameter
.end parameter
invoke-direct {p0, p1, p2, p3, p4}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
return-void
.end method
.method public final bridge synthetic getImageUri()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getImageUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic getName()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic getUri()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final bridge synthetic toString()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method