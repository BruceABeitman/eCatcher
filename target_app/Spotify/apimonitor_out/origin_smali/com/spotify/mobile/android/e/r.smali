.class public final Lcom/spotify/mobile/android/e/r;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/e/m;Lcom/spotify/mobile/android/e/h;)V
    .registers 5

    const-string v0, "TransientFocusLoss"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/spotify/mobile/android/e/r$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/r$1;-><init>(Lcom/spotify/mobile/android/e/r;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/e/m;->b()Lcom/spotify/mobile/android/service/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/x;)V

    new-instance v0, Lcom/spotify/mobile/android/e/r$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/r$2;-><init>(Lcom/spotify/mobile/android/e/r;)V

    invoke-virtual {p2, v0}, Lcom/spotify/mobile/android/e/h;->a(Lcom/spotify/mobile/android/e/o;)V

    return-void
.end method
