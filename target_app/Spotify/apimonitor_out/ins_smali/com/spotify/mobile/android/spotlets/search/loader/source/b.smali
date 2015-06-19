.class final Lcom/spotify/mobile/android/spotlets/search/loader/source/b;
.super Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/loader/source/a;
.field private final b:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->a:Lcom/spotify/mobile/android/spotlets/search/loader/source/a;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;
invoke-static {p1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->a(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)Landroid/os/Handler;
move-result-object v1
invoke-direct {v0, p0, v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/CosmosJsonSource$CosmosSearchTask$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/source/b;Landroid/os/Handler;Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->b:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/loader/source/b;Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->c(Ljava/lang/Object;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/search/loader/source/b;Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->d(Ljava/lang/Object;)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/search/loader/source/b;Ljava/lang/Object;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->d(Ljava/lang/Object;)V
return-void
.end method
.method final a(Lcom/spotify/cosmos/router/Request;)Lcom/spotify/mobile/android/spotlets/search/loader/source/b;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->a:Lcom/spotify/mobile/android/spotlets/search/loader/source/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->b(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)Lcom/spotify/cosmos/android/Resolver;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->b:Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;
invoke-virtual {v0, p1, v1}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
return-object p0
.end method
.method protected final a()V
.registers 1
return-void
.end method
.method public final synthetic parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->b()Z
move-result v0
if-eqz v0, :cond_8
const/4 v0, 0x0
:goto_7
return-object v0
:cond_8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/source/b;->a:Lcom/spotify/mobile/android/spotlets/search/loader/source/a;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/source/a;->c(Lcom/spotify/mobile/android/spotlets/search/loader/source/a;)Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;
move-result-object v0
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/cosmos/parser/ResponseParser;->parseResponse(Lcom/spotify/cosmos/router/Response;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/cosmos/JacksonModel;
goto :goto_7
.end method