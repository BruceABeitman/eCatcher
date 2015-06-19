.class public final Lcom/instagram/android/fragment/es;
.super Lcom/instagram/android/fragment/ew;
.source "ShortUrlFeedFragment.java"


# instance fields
.field private ae:Ljava/lang/String;

.field private af:Z

.field private ag:Z

.field private final ah:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/fragment/ew;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/android/fragment/es;->af:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/es;->ag:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/fragment/es;->ah:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/es;)Landroid/os/Handler;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/es;->ah:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/fragment/es;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/fragment/es;->ae:Ljava/lang/String;

    return-object p1
.end method

.method private a(Ljava/lang/String;)V
    .registers 6

    new-instance v0, Lcom/instagram/android/feed/b/a/b;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/es;->n()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/instagram/android/fragment/es;->y()Landroid/support/v4/app/an;

    move-result-object v2

    new-instance v3, Lcom/instagram/android/fragment/et;

    invoke-direct {v3, p0}, Lcom/instagram/android/fragment/et;-><init>(Lcom/instagram/android/fragment/es;)V

    invoke-direct {v0, v1, v2, p1, v3}, Lcom/instagram/android/feed/b/a/b;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Lcom/instagram/api/j/a;)V

    invoke-virtual {v0}, Lcom/instagram/android/feed/b/a/b;->h()V

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/fragment/es;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/instagram/android/fragment/es;->ag:Z

    return p1
.end method

.method static synthetic b(Lcom/instagram/android/fragment/es;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/fragment/es;->ae:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final F()V
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/fragment/ew;->F()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/es;->af:Z

    return-void
.end method

.method protected final a(Lcom/instagram/api/j/f;)Lcom/instagram/feed/a/a;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/instagram/api/j/f",
            "<",
            "Lcom/instagram/feed/a/b;",
            ">;)",
            "Lcom/instagram/feed/a/a;"
        }
    .end annotation

    new-instance v0, Lcom/instagram/android/fragment/ev;

    invoke-virtual {p0}, Lcom/instagram/android/fragment/es;->ad()Lcom/instagram/feed/f/a;

    move-result-object v4

    move-object v1, p0

    move-object v2, p0

    move-object v3, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/instagram/android/fragment/ev;-><init>(Lcom/instagram/android/fragment/es;Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;Lcom/instagram/feed/f/a;Lcom/instagram/api/j/f;)V

    return-object v0
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/android/fragment/ew;->a(Landroid/os/Bundle;)V

    if-eqz p1, :cond_8

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/android/fragment/es;->af:Z

    :cond_8
    invoke-virtual {p0}, Lcom/instagram/android/fragment/es;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.ARGUMENTS_KEY_SHORT_URL"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-direct {p0, v0}, Lcom/instagram/android/fragment/es;->a(Ljava/lang/String;)V

    :cond_17
    return-void
.end method

.method public final a(Lcom/instagram/a/a;)V
    .registers 4

    const/4 v1, 0x1

    sget v0, Lcom/facebook/aw;->action_bar_title_logo:I

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->b(I)Landroid/view/View;

    invoke-interface {p1, v1}, Lcom/instagram/a/a;->b(Z)V

    invoke-interface {p1, v1}, Lcom/instagram/a/a;->a(Z)V

    invoke-virtual {p0}, Lcom/instagram/android/fragment/es;->e()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/instagram/a/a;->c(Z)V

    return-void
.end method

.method public final a(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "src"

    const-string v1, "shortURL"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final ab()Z
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/fragment/es;->af:Z

    return v0
.end method

.method public final e()Z
    .registers 2

    invoke-super {p0}, Lcom/instagram/android/fragment/ew;->e()Z

    move-result v0

    if-nez v0, :cond_a

    iget-boolean v0, p0, Lcom/instagram/android/fragment/es;->ag:Z

    if-eqz v0, :cond_c

    :cond_a
    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public final i_()Ljava/lang/String;
    .registers 2

    const-string v0, "feed_short_url"

    return-object v0
.end method
