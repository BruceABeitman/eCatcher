.class final Lcom/spotify/mobile/android/service/flow/login/g$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/api/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/service/flow/login/g$2;->a(Lcom/google/android/gms/common/api/i;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/common/api/p",
        "<",
        "Lcom/google/android/gms/common/api/Status;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/gms/common/api/i;

.field final synthetic b:Lcom/spotify/mobile/android/service/flow/login/g$2;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/service/flow/login/g$2;Lcom/google/android/gms/common/api/i;)V
    .registers 3

    iput-object p1, p0, Lcom/spotify/mobile/android/service/flow/login/g$2$1;->b:Lcom/spotify/mobile/android/service/flow/login/g$2;

    iput-object p2, p0, Lcom/spotify/mobile/android/service/flow/login/g$2$1;->a:Lcom/google/android/gms/common/api/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$2$1;->b:Lcom/spotify/mobile/android/service/flow/login/g$2;

    iget-object v0, v0, Lcom/spotify/mobile/android/service/flow/login/g$2;->a:Lcom/spotify/mobile/android/service/flow/login/j;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/service/flow/login/j;->a(Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/service/flow/login/g$2$1;->a:Lcom/google/android/gms/common/api/i;

    invoke-interface {v0}, Lcom/google/android/gms/common/api/i;->b()V

    return-void
.end method
