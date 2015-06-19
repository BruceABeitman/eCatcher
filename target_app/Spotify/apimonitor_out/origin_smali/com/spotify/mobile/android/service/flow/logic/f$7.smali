.class final Lcom/spotify/mobile/android/service/flow/logic/f$7;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/logic/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/spotify/mobile/android/service/flow/logic/f;
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->f()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->g(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/g;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/g;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/c;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->g()V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;)V
    .registers 4

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/c;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v0

    invoke-virtual {p1}, Lcom/spotify/mobile/android/service/flow/logic/AnonymousUserEndpoint$AnonymousUserResponse;->getTest()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/flow/logic/c;->a(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->f(Lcom/spotify/mobile/android/service/flow/logic/f;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$7;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->c(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/c;->g()V

    return-void
.end method
