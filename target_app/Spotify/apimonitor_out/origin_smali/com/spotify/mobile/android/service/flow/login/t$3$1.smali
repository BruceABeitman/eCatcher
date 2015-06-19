.class final Lcom/spotify/mobile/android/service/flow/login/t$3$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/a/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/t$3;->onClick(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/t$3;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/t$3;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/t$3$1;->a:Lcom/spotify/mobile/android/service/flow/login/t$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$3$1;->a:Lcom/spotify/mobile/android/service/flow/login/t$3;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t$3;->a(Lcom/spotify/mobile/android/service/flow/login/t$3;)V

    return-void
.end method

.method public final b()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$3$1;->a:Lcom/spotify/mobile/android/service/flow/login/t$3;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/t;->a(Lcom/spotify/mobile/android/service/flow/login/t;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/t$3$1;->a:Lcom/spotify/mobile/android/service/flow/login/t$3;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/flow/login/t$3;->a:Lcom/spotify/mobile/android/service/flow/login/t;

    invoke-static {v0}, Lcom/spotify/mobile/android/service/flow/login/t;->o(Lcom/spotify/mobile/android/service/flow/login/t;)Lcom/spotify/mobile/android/service/flow/login/ac;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/service/flow/login/ac;->a(ILjava/util/Map;)V

    return-void
.end method
