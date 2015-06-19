.class public final Lcom/spotify/mobile/android/spotlets/collection/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/spotlets/collection/a/a;


# static fields
.field private static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;"
        }
    .end annotation
.end field

.field private static final b:Lcom/spotify/mobile/android/util/cw;


# instance fields
.field private final c:Landroid/content/Context;

.field private final d:Landroid/support/v4/app/y;

.field private final e:Lcom/spotify/mobile/android/spotlets/collection/a/c;

.field private f:Ljava/lang/String;

.field private g:Lcom/spotify/mobile/android/util/cw;

.field private h:Z

.field private i:Z

.field private j:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/util/cw;

    const-string v1, "artist_name"

    const v2, 0x7f0f03a5

    invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->b:Lcom/spotify/mobile/android/util/cw;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/cw;

    const-string v2, "name"

    const v3, 0x7f0f03ab

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->a:Ljava/util/List;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/a/b;->b:Lcom/spotify/mobile/android/util/cw;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/cw;

    const-string v2, "time_added"

    const v3, 0x7f0f03aa

    invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->a:Ljava/util/List;

    new-instance v1, Lcom/spotify/mobile/android/util/cw;

    const-string v2, "most_played_rank"

    const v3, 0x7f0f03a8

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/y;Lcom/spotify/mobile/android/spotlets/collection/a/c;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/a/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->j:Landroid/support/v4/app/z;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->d:Landroid/support/v4/app/y;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->e:Lcom/spotify/mobile/android/spotlets/collection/a/c;

    const-string v0, ""

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->f:Ljava/lang/String;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->b:Lcom/spotify/mobile/android/util/cw;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->g:Lcom/spotify/mobile/android/util/cw;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Lcom/spotify/mobile/android/spotlets/collection/a/c;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->e:Lcom/spotify/mobile/android/spotlets/collection/a/c;

    return-object v0
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->f:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->i:Z

    return v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->c:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/a/b;)Lcom/spotify/mobile/android/util/cw;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->g:Lcom/spotify/mobile/android/util/cw;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->d:Landroid/support/v4/app/y;

    const v1, 0x7f0a0162

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->j:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final a(II)V
    .registers 3

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 2

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/cw;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->g:Lcom/spotify/mobile/android/util/cw;

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->f:Ljava/lang/String;

    return-void
.end method

.method public final a(ZZ)V
    .registers 3

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->h:Z

    iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->i:Z

    return-void
.end method

.method public final b()V
    .registers 5

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->d:Landroid/support/v4/app/y;

    const v1, 0x7f0a0162

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->j:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/a/b;->a()V

    return-void
.end method

.method public final c()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/util/cw;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->a:Ljava/util/List;

    return-object v0
.end method

.method public final d()Lcom/spotify/mobile/android/util/cw;
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/a/b;->b:Lcom/spotify/mobile/android/util/cw;

    return-object v0
.end method

.method public final e()V
    .registers 1

    return-void
.end method
