.class public Lcom/spotify/mobile/android/spotlets/a/b;
.super Lcom/spotify/mobile/android/ui/page/a;
.source "SourceFile"


# static fields
.field private static final b:Ljava/lang/String;

.field private static final u:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;

.field private static final v:Lcom/spotify/mobile/android/ui/adapter/z;


# instance fields
.field private c:Lcom/spotify/mobile/android/spotlets/a/d;

.field private d:Landroid/widget/TextView;

.field private e:Landroid/support/v4/app/y;

.field private f:Lcom/spotify/mobile/android/util/dr;

.field private g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

.field private h:Lcom/spotify/mobile/android/ui/adapter/o;

.field private i:Lcom/spotify/mobile/android/ui/adapter/y;

.field private j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

.field private k:Ljava/lang/String;

.field private l:Ljava/lang/String;

.field private m:Ljava/lang/String;

.field private n:Z

.field private o:Lcom/spotify/mobile/android/util/ViewUri$Verified;

.field private p:Lcom/spotify/mobile/android/util/dw;

.field private q:Lcom/spotify/mobile/android/ui/actions/a;

.field private r:Lcom/spotify/mobile/android/ui/actions/d;

.field private final s:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/h;",
            ">;"
        }
    .end annotation
.end field

.field private final t:Lcom/spotify/mobile/android/ui/contextmenu/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/ui/contextmenu/f",
            "<",
            "Lcom/spotify/mobile/android/model/a;",
            ">;"
        }
    .end annotation
.end field

.field private w:Lcom/spotify/mobile/android/ui/view/g;

.field private x:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private y:Landroid/support/v4/app/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/app/z",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private z:Lcom/spotify/mobile/android/util/ds;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/spotify/mobile/android/spotlets/a/b;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/spotlets/a/b;->b:Ljava/lang/String;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b$3;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/a/b$3;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/a/b;->u:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b$4;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/a/b$4;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/a/b;->v:Lcom/spotify/mobile/android/ui/adapter/z;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/support/v4/app/y;Ljava/lang/String;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
    .registers 13

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/ui/page/a;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->q:Lcom/spotify/mobile/android/ui/actions/a;

    const-class v0, Lcom/spotify/mobile/android/ui/actions/d;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->r:Lcom/spotify/mobile/android/ui/actions/d;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/a/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->s:Lcom/spotify/mobile/android/ui/contextmenu/f;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/a/b$2;-><init>(Lcom/spotify/mobile/android/spotlets/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->t:Lcom/spotify/mobile/android/ui/contextmenu/f;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b$5;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/a/b$5;-><init>(Lcom/spotify/mobile/android/spotlets/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->w:Lcom/spotify/mobile/android/ui/view/g;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b$6;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/a/b$6;-><init>(Lcom/spotify/mobile/android/spotlets/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->x:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b$7;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/a/b$7;-><init>(Lcom/spotify/mobile/android/spotlets/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->y:Landroid/support/v4/app/z;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/b$8;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/a/b$8;-><init>(Lcom/spotify/mobile/android/spotlets/a/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->z:Lcom/spotify/mobile/android/util/ds;

    iput-object p4, p0, Lcom/spotify/mobile/android/spotlets/a/b;->k:Ljava/lang/String;

    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/a/b;->o:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->H:Lcom/spotify/mobile/android/util/ea;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->p:Lcom/spotify/mobile/android/util/dw;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/a/b;->e:Landroid/support/v4/app/y;

    new-instance v0, Lcom/spotify/mobile/android/util/dr;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->e:Landroid/support/v4/app/y;

    const v2, 0x7f0a0153

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/b;->z:Lcom/spotify/mobile/android/util/ds;

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/spotify/mobile/android/util/dr;-><init>(Landroid/content/Context;Landroid/support/v4/app/y;ILcom/spotify/mobile/android/util/ds;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->f:Lcom/spotify/mobile/android/util/dr;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->f()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03003e

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->c()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->d:Landroid/widget/TextView;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/y;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/a/b;->v:Lcom/spotify/mobile/android/ui/adapter/z;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/b;->s:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/y;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/adapter/z;Lcom/spotify/mobile/android/ui/contextmenu/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->i:Lcom/spotify/mobile/android/ui/adapter/y;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/a/b;->u:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/b;->t:Lcom/spotify/mobile/android/ui/contextmenu/f;

    invoke-direct {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter$Options;Lcom/spotify/mobile/android/ui/contextmenu/f;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/x;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/x;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Lcom/spotify/mobile/android/ui/adapter/v;)V

    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_f9

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->i:Lcom/spotify/mobile/android/ui/adapter/y;

    const v2, 0x7f0f0334

    invoke-virtual {v0, v1, v2, v6}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;II)V

    :goto_ba
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v4, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v1, Lcom/spotify/mobile/android/ui/adapter/t;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/b;->d:Landroid/widget/TextView;

    invoke-direct {v1, v2, v5}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v4, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/k;->a(Landroid/content/Context;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->w:Lcom/spotify/mobile/android/ui/view/g;

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/g;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->c()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    invoke-virtual {v0, v1, v4, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Landroid/widget/ListAdapter;)V

    const v0, 0x7f0a0154

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->x:Landroid/support/v4/app/z;

    invoke-virtual {p3, v0, v4, v1}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void

    :cond_f9
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->i:Lcom/spotify/mobile/android/ui/adapter/y;

    invoke-virtual {v0, v1, v4, v6}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    goto :goto_ba
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/b;I)I
    .registers 5

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->e(I)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(I)Z

    move-result v2

    if-eqz v2, :cond_1b

    :goto_10
    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->c()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v1

    add-int/2addr v0, v1

    return v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_10
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/b;Landroid/database/Cursor;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-interface {p1, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_5
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_13

    const/16 v1, 0x13

    invoke-interface {p1, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_5

    :cond_13
    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/a/d;->b(I)V

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/b;Landroid/widget/ListView;)V
    .registers 2

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/a/b;->a(Landroid/widget/ListView;)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/adapter/y;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->i:Lcom/spotify/mobile/android/ui/adapter/y;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/util/dr;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->f:Lcom/spotify/mobile/android/util/dr;

    return-object v0
.end method

.method static synthetic e(Lcom/spotify/mobile/android/spotlets/a/b;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->n:Z

    return v0
.end method

.method static synthetic f(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/spotlets/a/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    return-object v0
.end method

.method static synthetic g(Lcom/spotify/mobile/android/spotlets/a/b;)Z
    .registers 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->n:Z

    return v0
.end method

.method static synthetic h(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->j:Lcom/spotify/mobile/android/ui/adapter/AlbumsAdapter;

    return-object v0
.end method

.method static synthetic i(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/adapter/o;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    return-object v0
.end method

.method static synthetic j(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->l:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic k(Lcom/spotify/mobile/android/spotlets/a/b;)I
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/dv;->d(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_c

    const/4 v0, 0x2

    :cond_c
    return v0
.end method

.method static synthetic l(Lcom/spotify/mobile/android/spotlets/a/b;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic m(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/actions/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->q:Lcom/spotify/mobile/android/ui/actions/a;

    return-object v0
.end method

.method static synthetic n(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->o:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    return-object v0
.end method

.method static synthetic o(Lcom/spotify/mobile/android/spotlets/a/b;)Lcom/spotify/mobile/android/ui/actions/d;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->r:Lcom/spotify/mobile/android/ui/actions/d;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/page/a;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->p:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V

    return-void
.end method

.method protected final a(Landroid/content/Context;Landroid/view/ViewGroup;)V
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/d;

    new-instance v1, Lcom/spotify/mobile/android/spotlets/a/c;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/a/c;-><init>(Lcom/spotify/mobile/android/spotlets/a/b;)V

    invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/spotlets/a/d;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/a/e;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    return-void
.end method

.method public final a(Landroid/view/View;IJ)V
    .registers 12

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->c()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->k:Ljava/lang/String;

    invoke-static {v1}, Lcom/spotify/mobile/android/provider/a;->b(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->H:Lcom/spotify/mobile/android/util/ea;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/b;->k:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I

    move-result v0

    packed-switch v0, :pswitch_data_8e

    :cond_21
    :goto_21
    return-void

    :pswitch_22
    sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z

    move-result v0

    if-eqz v0, :cond_3f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/a/d;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->q:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v4, p3, p4}, Lcom/spotify/mobile/android/util/ClientEventFactory;->b(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    goto :goto_21

    :cond_3f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->r:Lcom/spotify/mobile/android/ui/actions/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/b;->o:Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-wide v5, p3

    invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->q:Lcom/spotify/mobile/android/ui/actions/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;

    invoke-static {v4, p3, p4}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Landroid/net/Uri;J)Lcom/spotify/mobile/android/util/ClientEvent;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V

    goto :goto_21

    :pswitch_5d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/spotify/mobile/android/model/a;

    if-eqz v1, :cond_21

    check-cast v0, Lcom/spotify/mobile/android/model/a;

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_85

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getUri()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lcom/spotify/mobile/android/model/a;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v3, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_21

    :cond_85
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->b(Landroid/content/Context;)V

    goto :goto_21

    nop

    :pswitch_data_8e
    .packed-switch 0x1
        :pswitch_22
        :pswitch_5d
    .end packed-switch
.end method

.method public final a(Lcom/spotify/mobile/android/util/Collection$State;II)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Lcom/spotify/mobile/android/util/Collection$State;)V

    sget-object v0, Lcom/spotify/mobile/android/util/Collection$State;->a:Lcom/spotify/mobile/android/util/Collection$State;

    if-ne p1, v0, :cond_1f

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    invoke-virtual {v0, p2, p3}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(II)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f010186

    invoke-static {v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/a/d;->a(I)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0900c1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/a/d;->a(I)V

    goto :goto_1e
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->h:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0f0033

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1, p2}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->n:Z

    return-void
.end method

.method public final a(Landroid/view/View;)Z
    .registers 4

    const v0, 0x7f0a013c

    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;

    if-eqz v1, :cond_16

    check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/a/b;->d()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;->a(Landroid/content/Context;)V

    const/4 v0, 0x1

    :goto_15
    return v0

    :cond_16
    const/4 v0, 0x0

    goto :goto_15
.end method

.method public final b()V
    .registers 2

    invoke-super {p0}, Lcom/spotify/mobile/android/ui/page/a;->b()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->p:Lcom/spotify/mobile/android/util/dw;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V

    return-void
.end method

.method public final b(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Landroid/view/View;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 6

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->l:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/d;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->e:Landroid/support/v4/app/y;

    const v1, 0x7f0a0151

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/b;->y:Landroid/support/v4/app/z;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;

    return-void
.end method

.method public final b(Z)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Z)V

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/d;->c(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/d;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->c:Lcom/spotify/mobile/android/spotlets/a/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/a/d;->e(Ljava/lang/String;)V

    return-void
.end method

.method public final f(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/b;->d:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final g(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/b;->m:Ljava/lang/String;

    return-void
.end method
