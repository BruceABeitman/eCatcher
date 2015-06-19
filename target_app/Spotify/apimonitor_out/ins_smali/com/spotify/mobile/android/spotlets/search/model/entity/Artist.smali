.class public final Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;
.super Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/search/model/entity/d;
.implements Lcom/spotify/mobile/android/spotlets/search/model/entity/e;
.field public final following:Z
.field public final verified:Z
.method public constructor <init>(Ljava/lang/Boolean;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V
.registers 10
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
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0, p4, p2, p3, p6}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
if-eqz p1, :cond_1b
invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_1b
move v0, v1
:goto_e
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;->verified:Z
if-eqz p5, :cond_1d
invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_1d
:goto_18
iput-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;->following:Z
return-void
:cond_1b
move v0, v2
goto :goto_e
:cond_1d
move v1, v2
goto :goto_18
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
.method public final isVerified()Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;->verified:Z
return v0
.end method
.method public final bridge synthetic toString()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method