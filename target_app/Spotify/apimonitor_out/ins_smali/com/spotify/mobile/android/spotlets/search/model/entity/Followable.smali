.class public abstract Lcom/spotify/mobile/android/spotlets/search/model/entity/Followable;
.super Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;
.source "SourceFile"
.field public final followersCount:Ljava/lang/Long;
.field public final following:Z
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Lcom/fasterxml/jackson/databind/JsonNode;)V
.registers 8
invoke-direct {p0, p1, p2, p3, p6}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
if-eqz p5, :cond_11
invoke-virtual {p5}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, 0x1
:goto_c
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Followable;->following:Z
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/Followable;->followersCount:Ljava/lang/Long;
return-void
:cond_11
const/4 v0, 0x0
goto :goto_c
.end method
.method public bridge synthetic getImageUri()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getImageUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getName()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getUri()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getUri()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic toString()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method