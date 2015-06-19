.class public Lcom/spotify/mobile/android/spotlets/browse/c;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/app/b;
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.implements Lcom/spotify/mobile/android/util/cd;


# static fields
.field static final a:[Ljava/lang/String;


# instance fields
.field private Y:Z

.field private Z:Ljava/lang/String;

.field private aa:Lcom/spotify/mobile/android/util/cc;

.field private ab:Lcom/spotify/mobile/android/util/dw;

.field private ac:Z

.field private ad:Z

.field private ae:Z

.field private af:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;

.field private ag:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;

.field private ah:Lcom/spotify/mobile/android/util/tracking/n;

.field private ai:Lcom/spotify/mobile/android/ui/actions/d;

.field private aj:Lcom/spotify/mobile/android/ui/actions/a;

.field private ak:Landroid/widget/ListView;

.field private al:Landroid/widget/Button;

.field private am:Landroid/widget/Button;

.field private an:Ljava/lang/String;

.field private ao:Lcom/spotify/mobile/android/ui/prettylist/c;

.field private ap:Landroid/view/View$OnClickListener;

.field private aq:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

.field private c:Landroid/view/View;

.field private d:Landroid/view/View;

.field private e:Landroid/view/ViewGroup;

.field private f:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field private g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "subscriber_count"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "name"

    aput-object v2, v0, v1

    sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/c;->a:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ac:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ad:Z

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ae:Z

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ai:Lcom/spotify/mobile/android/ui/actions/d;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aj:Lcom/spotify/mobile/android/ui/actions/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/c$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/c$2;-><init>(Lcom/spotify/mobile/android/spotlets/browse/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ap:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/c$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/c$3;-><init>(Lcom/spotify/mobile/android/spotlets/browse/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aq:Landroid/support/v4/app/z;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/c;)Landroid/widget/Button;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    return-object v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)Lcom/spotify/mobile/android/spotlets/browse/c;
    .registers 7

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "datastring"

    invoke-virtual {p2}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "genre"

    const-string v2, "genre"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "eternalScroll"

    const-string v2, "eternalScroll"

    const/4 v3, 0x1

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "country"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/c;

    invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/browse/c;-><init>()V

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/browse/c;->c_(Landroid/os/Bundle;)V

    return-object v1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "spotify:app:browse:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a()V
    .registers 5

    const/16 v3, 0xc

    const/4 v2, 0x0

    monitor-enter p0

    :try_start_4
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a()I

    move-result v0

    if-lez v0, :cond_10

    if-ge v0, v3, :cond_10

    monitor-exit p0

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ac:Z

    if-eqz v0, :cond_19

    monitor-exit p0
    :try_end_15
    .catchall {:try_start_4 .. :try_end_15} :catchall_16

    goto :goto_f

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_19
    const/4 v0, 0x1

    :try_start_1a
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ac:Z

    monitor-exit p0
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_16

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    const-string v1, "collection-favorites"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a()I

    move-result v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_34
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ag:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->a()V

    goto :goto_f

    :cond_3a
    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->Y:Z

    if-nez v0, :cond_46

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a()I

    move-result v0

    if-nez v0, :cond_f

    :cond_46
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a()I

    move-result v0

    if-eqz v0, :cond_53

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->d:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_53
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->af:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a()I

    move-result v1

    div-int/lit8 v1, v1, 0xc

    invoke-virtual {v0, v1, v3}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->b(II)V

    goto :goto_f
.end method

.method private a(Lcom/spotify/mobile/android/spotlets/browse/model/Genre;)V
    .registers 6

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " \u2014 "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v0, v1}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "genre"

    invoke-virtual {p1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/browse/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->an:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/browse/c;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aj:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method private c()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Genre;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->c(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/browse/c;)Lcom/spotify/mobile/android/ui/actions/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ai:Lcom/spotify/mobile/android/ui/actions/d;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/browse/c;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->Z:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final D()Landroid/support/v4/app/Fragment;
    .registers 1

    return-object p0
.end method

.method public final F()V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aa:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cc;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aa:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cc;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 11

    const/4 v6, -0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    const v0, 0x7f030062

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->e:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->f:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->e:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->f:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->f:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11b

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    new-instance v0, Landroid/widget/LinearLayout;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0025

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, v5}, Lcom/spotify/android/paste/widget/h;->c(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->e()Z

    move-result v2

    if-eqz v2, :cond_148

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f0f00e1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_88
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    new-instance v1, Lcom/spotify/android/paste/graphics/f;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    sget-object v3, Lcom/spotify/android/paste/graphics/SpotifyIcon;->m:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-direct {v1, v2, v3}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x4100

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/graphics/f;->a(F)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    invoke-virtual {v2}, Landroid/widget/Button;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/graphics/f;->a(Landroid/content/res/ColorStateList;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    invoke-virtual {v2, v5, v5, v1, v5}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0b009f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setCompoundDrawablePadding(I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    new-instance v2, Lcom/spotify/mobile/android/spotlets/browse/c$1;

    invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/browse/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/c;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_e3

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :cond_e3
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v1, v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->b(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->e:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v2}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v1, v2, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->e:Landroid/view/ViewGroup;

    return-object v0

    :cond_11b
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ae:Z

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    sget-object v1, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bC:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    const v2, 0x7f0f0243

    invoke-static {v0, v5, v1, v2}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/spotify/android/paste/graphics/SpotifyIcon;I)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->am:Landroid/widget/Button;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->am:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ap:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->am:Landroid/widget/Button;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->b(Landroid/view/View;)V

    goto/16 :goto_3c

    :cond_148
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_88
.end method

.method public final a(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->h:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->h:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const-string v0, "Playlist Browse"

    goto :goto_6
.end method

.method public final a(Landroid/os/Bundle;)V
    .registers 9

    const/4 v6, 0x1

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "title"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->h:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "genre"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v0

    if-nez v0, :cond_56

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "datastring"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_46

    const-string v2, "spotify:app:browse:"

    const-string v3, ""

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    :cond_46
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v0

    if-nez v0, :cond_56

    const-string v0, "mood"

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    :cond_56
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "eternalScroll"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->Y:Z

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->m:Lcom/spotify/mobile/android/util/ea;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    new-instance v0, Lcom/spotify/mobile/android/util/cc;

    invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cc;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cd;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aa:Lcom/spotify/mobile/android/util/cc;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ah:Lcom/spotify/mobile/android/util/tracking/n;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ah:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ah:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->g:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-static {v1, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ab:Lcom/spotify/mobile/android/util/dw;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aa:Lcom/spotify/mobile/android/util/cc;

    invoke-direct {v0, v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/a/e;-><init>(ILcom/spotify/mobile/android/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->d(Ljava/lang/String;Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->an:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->an:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_133

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ab:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-nez v0, :cond_cd

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->aa:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_133

    :cond_cd
    move v0, v6

    :goto_ce
    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ae:Z

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ae:Z

    if-eqz v0, :cond_e6

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    new-instance v2, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v4, Lcom/spotify/mobile/android/spotlets/browse/service/GenresMappingUpdateService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Landroid/support/v4/app/FragmentActivity;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_e6
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v2

    if-eqz v2, :cond_10e

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->e()Z

    move-result v3

    if-nez v3, :cond_108

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c()Ljava/lang/String;

    move-result-object v0

    :cond_108
    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->i()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->Z:Ljava/lang/String;

    :cond_10e
    move-object v4, v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->h()Landroid/os/Bundle;

    move-result-object v0

    const-string v2, "country"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    const-string v3, "collection-favorites"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_135

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ag:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ag:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->a(Landroid/content/Context;)V

    :goto_12f
    invoke-virtual {p0, v6}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Z)V

    return-void

    :cond_133
    const/4 v0, 0x0

    goto :goto_ce

    :cond_135
    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->af:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;

    goto :goto_12f
.end method

.method public final a(Landroid/view/Menu;)V
    .registers 5

    invoke-interface {p1}, Landroid/view/Menu;->clear()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_20

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ae:Z

    if-eqz v0, :cond_20

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->an:Ljava/lang/String;

    invoke-static {v2}, Lcom/spotify/mobile/android/provider/r;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-static {v1, p1, v0, v2}, Lcom/spotify/mobile/android/ui/menus/a;->b(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;

    :cond_20
    return-void
.end method

.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 9

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03005e

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->d:Landroid/view/View;

    const v0, 0x102000a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->e:Landroid/view/ViewGroup;

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/browse/util/a;->a(Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->e()Z

    move-result v1

    if-nez v1, :cond_5b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->c()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v0

    :cond_5b
    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->h()Ljava/lang/String;

    move-result-object v1

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_82

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->d()Landroid/widget/ImageView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    :cond_82
    new-instance v0, Landroid/view/View;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0027

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    new-instance v3, Landroid/widget/AbsListView$LayoutParams;

    invoke-direct {v3, v4, v1}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    if-eqz p2, :cond_f4

    const-string v0, "playlists"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V

    const-string v0, "list"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    if-eqz v0, :cond_c2

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :cond_c2
    :goto_c2
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;

    const-string v1, ""

    invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a015a

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aa:Lcom/spotify/mobile/android/util/cc;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0159

    new-instance v3, Lcom/spotify/mobile/android/util/z;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->j()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_f4
    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->a()V

    goto :goto_c2
.end method

.method public final a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;IZ",
            "Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;",
            ")V"
        }
    .end annotation

    const/4 v7, 0x0

    iput-boolean v7, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ac:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ao:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->f:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->o()Z

    move-result v0

    if-nez v0, :cond_18

    :cond_17
    :goto_17
    return-void

    :cond_18
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->d:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iput-boolean p4, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ad:Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ah:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->d()Z

    move-result v0

    if-nez v0, :cond_2e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ah:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->b()V

    :cond_2e
    if-eqz p1, :cond_17

    iget-object v8, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->L:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    const-string v1, "toplists"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_63

    if-nez p3, :cond_63

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;

    const-string v1, "toplists"

    const v2, 0x7f0f03a3

    invoke-virtual {p0, v2}, Lcom/spotify/mobile/android/spotlets/browse/c;->b(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f0f03a1

    invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/spotlets/browse/c;->b(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "spotify:internal:social_chart"

    const-string v5, "https://datsnxq1rwndn.cloudfront.net/toplists/toptracksinyournetwork.png"

    const/4 v6, -0x1

    invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-interface {p1, v7, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_63
    invoke-virtual {v8, p1}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->k()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/util/e;->a(Ljava/lang/String;Landroid/content/res/Resources;)Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    move-result-object v0

    if-eqz v0, :cond_b5

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b5

    const/4 v0, 0x1

    :goto_7d
    if-eqz v0, :cond_ae

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->getCount()I

    move-result v0

    if-lez v0, :cond_a1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->Z:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a1

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->getCount()I

    move-result v1

    if-lez v1, :cond_b7

    invoke-virtual {v0, v7}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a(I)Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d()Ljava/lang/String;

    move-result-object v0

    :goto_9f
    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->Z:Ljava/lang/String;

    :cond_a1
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->u()Landroid/support/v4/app/y;

    move-result-object v0

    const v1, 0x7f0a0191

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->aq:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    :cond_ae
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->notifyDataSetChanged()V

    goto/16 :goto_17

    :cond_b5
    move v0, v7

    goto :goto_7d

    :cond_b7
    const-string v0, ""

    goto :goto_9f
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 4

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Lcom/spotify/mobile/android/spotlets/browse/model/Genre;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final b_(I)Z
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->c()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    const-string v1, "Subgenre can\'t be null!"

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->i:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_20

    invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/c;->a(Lcom/spotify/mobile/android/spotlets/browse/model/Genre;)V

    const/4 v0, 0x1

    :goto_1f
    return v0

    :cond_20
    const/4 v0, 0x0

    goto :goto_1f
.end method

.method public final d(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    :goto_9
    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a()I

    move-result v2

    if-ge v0, v2, :cond_1d

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->b:Lcom/spotify/mobile/android/spotlets/browse/a/e;

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/e;->a(I)Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_1d
    const-string v0, "playlists"

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const-string v0, "list"

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ah:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V

    return-void
.end method

.method public final d(Z)V
    .registers 5

    const/16 v2, 0x8

    const/4 v1, 0x0

    if-eqz p1, :cond_13

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->c:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->a()V

    :goto_12
    return-void

    :cond_13
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ak:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_12
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->al:Landroid/widget/Button;

    if-ne p2, v0, :cond_27

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->c()Ljava/util/List;

    move-result-object v2

    const/4 v0, 0x0

    move v1, v0

    :goto_d
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_27

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Genre;->d()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v1, v1, v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Landroid/view/ContextMenu;IILjava/lang/CharSequence;)Landroid/view/MenuItem;

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_d

    :cond_27
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .registers 7

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x6

    add-int/lit8 v1, v1, 0x1

    if-lt v0, v1, :cond_13

    const/4 v0, 0x1

    :goto_9
    if-eqz v0, :cond_12

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ad:Z

    if-nez v0, :cond_12

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/c;->a()V

    :cond_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .registers 3

    return-void
.end method

.method public final s_()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->s_()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ah:Lcom/spotify/mobile/android/util/tracking/n;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V

    return-void
.end method

.method public final x()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ab:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method public final y()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ab:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method

.method public final z()V
    .registers 2

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ag:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/c;->ag:Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/datasource/hermes/a;->b()V

    :cond_c
    return-void
.end method
