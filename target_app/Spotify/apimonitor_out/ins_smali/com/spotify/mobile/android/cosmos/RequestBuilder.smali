.class public Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.super Ljava/lang/Object;
.source "SourceFile"
.field static final HERMES_CACHE_IDENTIFIER_KEY:Ljava/lang/String; = "cache-identifier"
.field private final mRequest:Lcom/spotify/cosmos/router/Request;
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2b
move v0, v1
:goto_c
const-string v3, "Request method cannot not be null"
invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2d
:goto_17
const-string v0, "Request URI cannot be null"
invoke-static {v1, v0}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
new-instance v0, Lcom/spotify/cosmos/router/Request;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
sget-object v2, Lcom/spotify/cosmos/router/Request;->EMPTY_BODY:[B
invoke-direct {v0, p1, p2, v1, v2}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
iput-object v0, p0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->mRequest:Lcom/spotify/cosmos/router/Request;
return-void
:cond_2b
move v0, v2
goto :goto_c
:cond_2d
move v1, v2
goto :goto_17
.end method
.method private constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_29
move v0, v1
:goto_c
const-string v3, "Request method cannot not be null"
invoke-static {v0, v3}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_2b
:goto_17
const-string v0, "Request URI cannot be null"
invoke-static {v1, v0}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
new-instance v0, Lcom/spotify/cosmos/router/Request;
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-direct {v0, p1, p2, v1, p3}, Lcom/spotify/cosmos/router/Request;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;[B)V
iput-object v0, p0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->mRequest:Lcom/spotify/cosmos/router/Request;
return-void
:cond_29
move v0, v2
goto :goto_c
:cond_2b
move v1, v2
goto :goto_17
.end method
.method public static delete(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "DELETE"
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public static get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "GET"
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public static post(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "POST"
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public static post(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->post(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
return-object v0
.end method
.method public static post(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 6
const-string v0, "Model object cannot be null"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "POST"
invoke-static {p1, p2}, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->toBytes(Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)[B
move-result-object v2
invoke-direct {v0, v1, p0, v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
return-object v0
.end method
.method public static postBytes(Ljava/lang/String;[B)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "POST"
invoke-direct {v0, v1, p0, p1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
return-object v0
.end method
.method public static put(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "PUT"
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public static put(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->put(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
return-object v0
.end method
.method public static put(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 6
const-string v0, "Model object cannot be null"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "PUT"
invoke-static {p1, p2}, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->toBytes(Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)[B
move-result-object v2
invoke-direct {v0, v1, p0, v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
return-object v0
.end method
.method public static putBytes(Ljava/lang/String;[B)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "PUT"
invoke-direct {v0, v1, p0, p1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
return-object v0
.end method
.method public static subscribe(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 3
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "SUB"
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method public static subscribe(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 3
const/4 v0, 0x0
invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->subscribe(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
return-object v0
.end method
.method public static subscribe(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 6
const-string v0, "Model object cannot be null"
invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "SUB"
invoke-static {p1, p2}, Lcom/spotify/mobile/android/cosmos/JacksonSerializer;->toBytes(Lcom/spotify/mobile/android/cosmos/JacksonModel;Lcom/fasterxml/jackson/databind/ObjectMapper;)[B
move-result-object v2
invoke-direct {v0, v1, p0, v2}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
return-object v0
.end method
.method public static subscribeBytes(Ljava/lang/String;[B)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 4
new-instance v0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;
const-string v1, "SUB"
invoke-direct {v0, v1, p0, p1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;-><init>(Ljava/lang/String;Ljava/lang/String;[B)V
return-object v0
.end method
.method public build()Lcom/spotify/cosmos/router/Request;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->mRequest:Lcom/spotify/cosmos/router/Request;
return-object v0
.end method
.method public setHermesCacheIdentifier(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 4
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_18
const/4 v0, 0x1
:goto_7
const-string v1, "Cache identifier cannot be empty"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->mRequest:Lcom/spotify/cosmos/router/Request;
invoke-virtual {v0}, Lcom/spotify/cosmos/router/Request;->getHeaders()Ljava/util/Map;
move-result-object v0
const-string v1, "cache-identifier"
invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
:cond_18
const/4 v0, 0x0
goto :goto_7
.end method
.method public with(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
.registers 5
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b
const/4 v0, 0x1
:goto_7
const-string v1, "Header key cannot be empty"
invoke-static {v0, v1}, Lcom/google/common/base/i;->a(ZLjava/lang/Object;)V
const-string v0, "Header value cannot be null"
invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p0, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->mRequest:Lcom/spotify/cosmos/router/Request;
invoke-virtual {v0}, Lcom/spotify/cosmos/router/Request;->getHeaders()Ljava/util/Map;
move-result-object v0
invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-object p0
:cond_1b
const/4 v0, 0x0
goto :goto_7
.end method