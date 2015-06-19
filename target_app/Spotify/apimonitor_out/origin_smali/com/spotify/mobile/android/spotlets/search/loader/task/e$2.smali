.class final Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/loader/task/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/spotify/mobile/android/spotlets/search/loader/task/e;-><init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/a;)V
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/b",
        "<TV;TE;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->c(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;

    invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->a(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)J

    move-result-wide v1

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/loader/task/c;

    invoke-direct {v3, p1, v1, v2}, Lcom/spotify/mobile/android/spotlets/search/loader/task/c;-><init>(Ljava/lang/Object;J)V

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->c(Lcom/spotify/mobile/android/spotlets/search/loader/task/e;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/e$2;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/e;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/e;->c(Ljava/lang/Object;)V

    return-void
.end method
