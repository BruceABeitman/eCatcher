.class final Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/bi;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->a(Lcom/spotify/mobile/android/service/flow/logic/a;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/b;

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;Lcom/spotify/mobile/android/service/flow/logic/b;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;->b:Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;->a:Lcom/spotify/mobile/android/service/flow/logic/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Ljava/lang/String;

    :try_start_2
    invoke-static {}, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint;->a()Lcom/fasterxml/jackson/databind/ObjectMapper;

    move-result-object v0

    const-class v1, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;

    invoke-virtual {v0, p1, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readValue(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->isSuccess()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;->a:Lcom/spotify/mobile/android/service/flow/logic/b;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/flow/logic/b;->a(Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;->a:Lcom/spotify/mobile/android/service/flow/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/b;->a()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1f} :catch_20

    goto :goto_19

    :catch_20
    move-exception v0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;->a:Lcom/spotify/mobile/android/service/flow/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/b;->a()V

    goto :goto_19
.end method

.method public final a(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$2;->a:Lcom/spotify/mobile/android/service/flow/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/b;->a()V

    return-void
.end method
