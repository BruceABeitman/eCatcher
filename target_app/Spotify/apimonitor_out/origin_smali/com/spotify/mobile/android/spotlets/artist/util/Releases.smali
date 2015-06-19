.class public final Lcom/spotify/mobile/android/spotlets/artist/util/Releases;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;"
        }
    .end annotation
.end field

.field public static final b:Lcom/spotify/mobile/android/util/cw;

.field private static c:Lcom/spotify/mobile/android/spotlets/artist/util/c;

.field private static final d:Lcom/google/common/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/b",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:Lcom/google/common/base/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/b",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/util/c;

    invoke-direct {v0, v3}, Lcom/spotify/mobile/android/spotlets/artist/util/c;-><init>(B)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->c:Lcom/spotify/mobile/android/spotlets/artist/util/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->d:Lcom/google/common/base/b;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$2;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$2;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->e:Lcom/google/common/base/b;

    new-instance v0, Lcom/spotify/mobile/android/util/cw;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->c:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->toString()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0f03ac

    invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->b:Lcom/spotify/mobile/android/util/cw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/cw;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->a:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f03a9

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/cw;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->b:Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->toString()Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f03a7

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->a:Ljava/util/List;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->b:Lcom/spotify/mobile/android/util/cw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method static synthetic a()Lcom/google/common/base/b;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->d:Lcom/google/common/base/b;

    return-object v0
.end method

.method public static a(Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
            ">;",
            "Lcom/spotify/mobile/android/util/cw;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/artist/model/ArtistModel$Release;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->c:Lcom/spotify/mobile/android/spotlets/artist/util/c;

    invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/spotlets/artist/util/c;->a(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->c:Lcom/spotify/mobile/android/spotlets/artist/util/c;

    invoke-static {p0, v1}, Lcom/google/common/collect/h;->b(Ljava/lang/Iterable;Lcom/google/common/base/j;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/cw;->f()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/artist/util/Releases$SortOrder;->a(Ljava/lang/Iterable;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic b()Lcom/google/common/base/b;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/spotlets/artist/util/Releases;->e:Lcom/google/common/base/b;

    return-object v0
.end method
