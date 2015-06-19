.class final Lcom/spotify/mobile/android/spotlets/search/loader/task/h;
.super Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/search/loader/task/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        "W:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/a",
        "<TV;TE;>;",
        "Lcom/spotify/mobile/android/spotlets/search/loader/task/b",
        "<TW;TR;>;"
    }
.end annotation


# instance fields
.field protected final a:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/a",
            "<TW;TR;>;"
        }
    .end annotation
.end field

.field protected final b:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/f",
            "<-TW;+TV;>;"
        }
    .end annotation
.end field

.field protected final c:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/f",
            "<-TR;+TE;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/search/loader/task/a;Lcom/spotify/mobile/android/spotlets/search/loader/task/f;Lcom/spotify/mobile/android/spotlets/search/loader/task/f;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/a",
            "<TW;TR;>;",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/f",
            "<-TW;+TV;>;",
            "Lcom/spotify/mobile/android/spotlets/search/loader/task/f",
            "<-TR;+TE;>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;-><init>()V

    invoke-static {p2}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    invoke-static {p3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->c:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    invoke-virtual {p1, p0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->a(Lcom/spotify/mobile/android/spotlets/search/loader/task/b;)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->a:Lcom/spotify/mobile/android/spotlets/search/loader/task/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/a;->d()V

    return-void
.end method

.method public final a(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TR;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->c:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->d(Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TW;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->b:Lcom/spotify/mobile/android/spotlets/search/loader/task/f;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/loader/task/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/loader/task/h;->c(Ljava/lang/Object;)V

    return-void
.end method
