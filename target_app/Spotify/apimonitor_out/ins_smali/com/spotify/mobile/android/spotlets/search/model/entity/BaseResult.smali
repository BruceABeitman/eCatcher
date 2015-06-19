.class abstract Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/JacksonModel;
.implements Lcom/spotify/mobile/android/spotlets/search/model/entity/b;
.field public final image:Ljava/lang/String;
.field public final loggingData:Lcom/fasterxml/jackson/databind/JsonNode;
.field public final name:Ljava/lang/String;
.field public final uri:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/fasterxml/jackson/databind/JsonNode;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->name:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->uri:Ljava/lang/String;
iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->image:Ljava/lang/String;
if-eqz p4, :cond_14
invoke-virtual {p4}, Lcom/fasterxml/jackson/databind/JsonNode;->isNull()Z
move-result v0
if-nez v0, :cond_14
:goto_11
iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->loggingData:Lcom/fasterxml/jackson/databind/JsonNode;
return-void
:cond_14
invoke-static {}, Lcom/fasterxml/jackson/databind/node/MissingNode;->getInstance()Lcom/fasterxml/jackson/databind/node/MissingNode;
move-result-object p4
goto :goto_11
.end method
.method public getImageUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->image:Ljava/lang/String;
return-object v0
.end method
.method public getLoggingData()Lcom/fasterxml/jackson/databind/JsonNode;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->loggingData:Lcom/fasterxml/jackson/databind/JsonNode;
return-object v0
.end method
.method public getName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->name:Ljava/lang/String;
return-object v0
.end method
.method public getUri()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->uri:Ljava/lang/String;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/model/entity/BaseResult;->getName()Ljava/lang/String;
move-result-object v0
return-object v0
.end method