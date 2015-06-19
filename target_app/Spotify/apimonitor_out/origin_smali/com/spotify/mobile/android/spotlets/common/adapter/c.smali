.class public final Lcom/spotify/mobile/android/spotlets/common/adapter/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<D:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/common/adapter/f",
            "<+",
            "Landroid/view/View;",
            "+TD;>;>;"
        }
    .end annotation
.end field

.field private b:Lcom/google/common/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/Optional",
            "<",
            "Lcom/spotify/mobile/android/spotlets/common/adapter/d",
            "<TD;>;>;"
        }
    .end annotation
.end field

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->c:Z

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a:Ljava/util/List;

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->b:Lcom/google/common/base/Optional;

    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/mobile/android/spotlets/common/adapter/a;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/spotify/mobile/android/spotlets/common/adapter/a",
            "<TD;>;"
        }
    .end annotation

    new-instance v1, Lcom/spotify/mobile/android/spotlets/common/adapter/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->b:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/common/adapter/d;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a:Ljava/util/List;

    iget-boolean v3, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->c:Z

    invoke-direct {v1, v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/a;-><init>(Lcom/spotify/mobile/android/spotlets/common/adapter/d;Ljava/util/List;Z)V

    return-object v1
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/spotlets/common/adapter/d",
            "<TD;>;)",
            "Lcom/spotify/mobile/android/spotlets/common/adapter/c",
            "<TD;>;"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->b:Lcom/google/common/base/Optional;

    return-object p0
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/common/adapter/f;)Lcom/spotify/mobile/android/spotlets/common/adapter/c;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:TD;>(",
            "Lcom/spotify/mobile/android/spotlets/common/adapter/f",
            "<+",
            "Landroid/view/View;",
            "TT;>;)",
            "Lcom/spotify/mobile/android/spotlets/common/adapter/c",
            "<TD;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/common/adapter/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method
