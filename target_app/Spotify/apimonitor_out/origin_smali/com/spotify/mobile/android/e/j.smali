.class public final Lcom/spotify/mobile/android/e/j;
.super Lcom/spotify/mobile/android/e/l;
.source "SourceFile"


# instance fields
.field a:Lcom/spotify/mobile/android/service/w;


# direct methods
.method public constructor <init>(Lcom/spotify/mobile/android/e/m;)V
    .registers 4

    const-string v0, "MediaButton"

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/e/l;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/e/m;->b()Lcom/spotify/mobile/android/service/w;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/e/j;->a:Lcom/spotify/mobile/android/service/w;

    new-instance v0, Lcom/spotify/mobile/android/e/j$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/e/j$1;-><init>(Lcom/spotify/mobile/android/e/j;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/e/j;->a:Lcom/spotify/mobile/android/service/w;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/service/w;->a(Lcom/spotify/mobile/android/service/x;)V

    return-void
.end method
