.class public final Lcom/spotify/mobile/android/service/media/a/a/a;
.super Lcom/spotify/mobile/android/service/media/a/a;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/spotify/mobile/android/service/media/c;

.field private final c:Lcom/spotify/mobile/android/service/media/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/b/b;Lcom/spotify/mobile/android/service/media/c;Lcom/spotify/mobile/android/service/media/a;)V
    .registers 5

    invoke-direct {p0, p2}, Lcom/spotify/mobile/android/service/media/a/a;-><init>(Lcom/spotify/mobile/android/service/b/b;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/service/media/a/a/a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/spotify/mobile/android/service/media/a/a/a;->b:Lcom/spotify/mobile/android/service/media/c;

    iput-object p4, p0, Lcom/spotify/mobile/android/service/media/a/a/a;->c:Lcom/spotify/mobile/android/service/media/a;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/media/a/a/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/service/media/a/a/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/service/media/a/a/a;Landroid/database/Cursor;)Lcom/google/common/base/Optional;
    .registers 9

    new-instance v1, Lcom/spotify/mobile/android/model/f;

    invoke-direct {v1}, Lcom/spotify/mobile/android/model/f;-><init>()V

    const-string v0, ""

    invoke-virtual {v1, p1, v0}, Lcom/spotify/mobile/android/model/f;->a(Landroid/database/Cursor;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->m()Z

    move-result v0

    if-eqz v0, :cond_15

    invoke-static {}, Lcom/google/common/base/Optional;->d()Lcom/google/common/base/Optional;

    move-result-object v0

    :goto_14
    return-object v0

    :cond_15
    invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->a()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/media/a/a/a;->b:Lcom/spotify/mobile/android/service/media/c;

    if-nez v0, :cond_55

    const/4 v0, 0x0

    :goto_1e
    iget-object v2, p0, Lcom/spotify/mobile/android/service/media/a/a/a;->a:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/model/f;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/spotify/mobile/android/model/f;->e()I

    move-result v1

    new-instance v3, Lcom/spotify/mobile/android/service/media/b/b;

    invoke-direct {v3, v0}, Lcom/spotify/mobile/android/service/media/b/b;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v2}, Lcom/spotify/mobile/android/service/media/b/b;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/service/media/b/b;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/service/media/a/a/a;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0012

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v1, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/media/b/b;->b(Ljava/lang/String;)Lcom/spotify/mobile/android/service/media/b/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/media/b/b;->a()Lcom/spotify/mobile/android/service/media/c/b;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->c(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v0

    goto :goto_14

    :cond_55
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5e

    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    goto :goto_1e

    :cond_5e
    invoke-static {v0}, Lcom/spotify/mobile/android/provider/o;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_1e
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/service/media/c/c;)Landroid/support/v4/app/z;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/spotify/mobile/android/service/media/c/c;",
            ")",
            "Landroid/support/v4/app/z",
            "<*>;"
        }
    .end annotation

    new-instance v0, Lcom/spotify/mobile/android/service/media/a/a/a$1;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/service/media/a/a/a$1;-><init>(Lcom/spotify/mobile/android/service/media/a/a/a;Lcom/spotify/mobile/android/service/media/c/c;)V

    return-object v0
.end method
