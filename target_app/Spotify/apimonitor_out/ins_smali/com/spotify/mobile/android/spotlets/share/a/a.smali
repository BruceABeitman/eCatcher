.class public final Lcom/spotify/mobile/android/spotlets/share/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/content/Context;
.field private b:Lcom/spotify/cosmos/android/Resolver;
.method public constructor <init>(Landroid/content/Context;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/share/a/a;->a:Landroid/content/Context;
return-void
.end method
.method private static a(Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;)Lcom/spotify/cosmos/router/Request;
.registers 2
:try_start_0
const-string v0, "hm://share-view/v1/broadcast"
invoke-static {v0, p0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->post(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JacksonModel;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
:try_end_9
.catch Lcom/spotify/mobile/android/cosmos/ParserException; {:try_start_0 .. :try_end_9} :catch_b
move-result-object v0
return-object v0
:catch_b
move-exception v0
new-instance v0, Ljava/lang/RuntimeException;
invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V
throw v0
.end method
.method private b()Lcom/spotify/cosmos/android/Resolver;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a/a;->b:Lcom/spotify/cosmos/android/Resolver;
if-nez v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a/a;->a:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a/a;->b:Lcom/spotify/cosmos/android/Resolver;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a/a;->b:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->connect()V
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a/a;->b:Lcom/spotify/cosmos/android/Resolver;
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a/a;->b:Lcom/spotify/cosmos/android/Resolver;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/share/a/a;->b:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->destroy()V
:cond_9
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;)V
.registers 5
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/share/a/a;->b()Lcom/spotify/cosmos/android/Resolver;
move-result-object v0
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/share/a/a;->a(Lcom/spotify/mobile/android/spotlets/share/model/Broadcast$Request;)Lcom/spotify/cosmos/router/Request;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
return-void
.end method
.method public final a(Ljava/lang/String;Lcom/spotify/mobile/android/cosmos/JsonCallbackReceiver;)V
.registers 7
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/share/a/a;->b()Lcom/spotify/cosmos/android/Resolver;
move-result-object v0
const-string v1, "hm://share-view/v1/info?decorate=true&uri=%s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v1
invoke-virtual {v0, v1, p2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
return-void
.end method