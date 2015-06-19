.class final Lcom/spotify/mobile/android/service/flow/login/g$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/flow/login/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/g;->b(Landroid/content/Context;Lcom/spotify/mobile/android/service/flow/login/j;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/service/flow/login/j;

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/g;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/g;Lcom/spotify/mobile/android/service/flow/login/j;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/g$2;->b:Lcom/spotify/mobile/android/service/flow/login/g;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/g$2;->a:Lcom/spotify/mobile/android/service/flow/login/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/common/api/i;)V
    .registers 4

    invoke-interface {p1}, Lcom/google/android/gms/common/api/i;->c()Z

    move-result v0

    if-eqz v0, :cond_1a

    sget-object v0, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/plus/a;->b(Lcom/google/android/gms/common/api/i;)V

    sget-object v0, Lcom/google/android/gms/plus/d;->h:Lcom/google/android/gms/plus/a;

    invoke-interface {v0, p1}, Lcom/google/android/gms/plus/a;->a(Lcom/google/android/gms/common/api/i;)Lcom/google/android/gms/common/api/m;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/service/flow/login/g$2$1;

    invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/service/flow/login/g$2$1;-><init>(Lcom/spotify/mobile/android/service/flow/login/g$2;Lcom/google/android/gms/common/api/i;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/common/api/m;->a(Lcom/google/android/gms/common/api/p;)V

    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$2;->a:Lcom/spotify/mobile/android/service/flow/login/j;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/j;->a(Z)V

    goto :goto_19
.end method
