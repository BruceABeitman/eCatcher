.class final Lcom/spotify/mobile/android/service/flow/login/t$2$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/z;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/t$2;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t$2;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t$2;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$2$2;->a:Lcom/spotify/mobile/android/service/flow/login/t$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$2$2;->a:Lcom/spotify/mobile/android/service/flow/login/t$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/flow/login/t$2;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->D()Lcom/spotify/mobile/android/service/flow/login/u;

    move-result-object v0

    invoke-interface {v0}, Lcom/spotify/mobile/android/service/flow/login/u;->a()V

    return-void
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$2$2;->a:Lcom/spotify/mobile/android/service/flow/login/t$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/flow/login/t$2;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    return-void
.end method
