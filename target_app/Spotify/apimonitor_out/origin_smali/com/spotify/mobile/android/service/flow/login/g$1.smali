.class final Lcom/spotify/mobile/android/service/flow/login/g$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/g;->a(Landroid/content/Context;Lcom/spotify/mobile/android/service/flow/login/j;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/j;

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/g;Lcom/spotify/mobile/android/service/flow/login/j;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/g$1;->b:Lcom/spotify/mobile/android/service/flow/login/g;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/g$1;->a:Lcom/spotify/mobile/android/service/flow/login/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/i;)V
    .registers 4

    invoke-interface {p1}, Lcom/google/android/gms/common/api/i;->c()Z

    move-result v0

    if-eqz v0, :cond_15

    sget-object v0, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/api/i;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$1;->a:Lcom/spotify/mobile/android/service/flow/login/j;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/j;->a(Z)V

    invoke-interface {p1}, Lcom/google/android/gms/common/api/i;->b()V

    :goto_14
    return-void

    :cond_15
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$1;->a:Lcom/spotify/mobile/android/service/flow/login/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/j;->a(Z)V

    goto :goto_14
.end method
