.class final Lcom/spotify/mobile/android/service/flow/logic/f$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/service/connections/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/logic/f;->b(Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/spotify/mobile/android/service/flow/logic/f;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/logic/f;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$3;->c:Lcom/spotify/mobile/android/service/flow/logic/f;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/logic/f$3;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/flow/logic/f$3;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/service/p;)V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/logic/f$3;->a:Ljava/lang/String;

    iget-object v1, p0, Lcom/spotify/mobile/android/service/flow/logic/f$3;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/service/flow/logic/f$3;->c:Lcom/spotify/mobile/android/service/flow/logic/f;

    invoke-static {v2}, Lcom/spotify/mobile/android/service/flow/logic/f;->e(Lcom/spotify/mobile/android/service/flow/logic/f;)Z

    move-result v2

    invoke-interface {p1, v0, v1, v2}, Lcom/spotify/mobile/android/service/p;->a(Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    const-string v1, ""

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_d
.end method
