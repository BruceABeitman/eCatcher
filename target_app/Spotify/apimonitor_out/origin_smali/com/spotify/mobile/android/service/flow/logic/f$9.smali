.class final Lcom/spotify/mobile/android/service/flow/logic/f$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/logic/f;-><init>()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/logic/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$9;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 3

    const-string v0, "Successfully signed up new user via Facebook"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$9;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Lcom/spotify/mobile/android/service/flow/logic/f;)Lcom/spotify/mobile/android/service/flow/logic/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/e;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$9;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->E()V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$9;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v0, p1, p2, p3}, Lcom/spotify/mobile/android/service/flow/logic/f;->b(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public final b()V
    .registers 3

    const-string v0, "Successfully logged in existing user via Facebook"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$9;->a:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/logic/f;->D()V

    return-void
.end method
