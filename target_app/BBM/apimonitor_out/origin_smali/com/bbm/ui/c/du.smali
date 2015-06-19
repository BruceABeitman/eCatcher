.class public Lcom/bbm/ui/c/du;
.super Landroid/app/Fragment;
.source "MyChannelsFragment.java"

# interfaces
.implements Lcom/bbm/ui/ds;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Fragment;",
        "Lcom/bbm/ui/ds",
        "<",
        "Lcom/bbm/d/ec;",
        ">;"
    }
.end annotation


# static fields
.field private static l:I


# instance fields
.field private a:Lcom/bbm/ui/activities/MainActivity;

.field private b:Landroid/content/Context;

.field private c:Landroid/view/View;

.field private d:Landroid/widget/ImageView;

.field private e:Landroid/widget/TextView;

.field private f:Landroid/widget/Button;

.field private g:I

.field private h:I

.field private i:Lcom/bbm/ui/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/gk",
            "<",
            "Lcom/bbm/d/ec;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field private k:Lcom/bbm/ui/dn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/dn",
            "<",
            "Lcom/bbm/d/ec;",
            ">;"
        }
    .end annotation
.end field

.field private final m:J

.field private final n:J

.field private o:Lcom/bbm/util/b/g;

.field private p:Landroid/view/View;

.field private final q:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Lcom/bbm/d/ec;",
            ">;"
        }
    .end annotation
.end field

.field private final r:Lcom/bbm/d/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/b/q",
            "<",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/d/ec;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private final s:Landroid/view/View$OnTouchListener;

.field private final t:Lcom/bbm/j/k;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/bbm/ui/c/du;->l:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/ui/c/du;->m:J

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/bbm/ui/c/du;->n:J

    new-instance v0, Lcom/bbm/ui/c/dv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/dv;-><init>(Lcom/bbm/ui/c/du;)V

    iput-object v0, p0, Lcom/bbm/ui/c/du;->q:Ljava/util/Comparator;

    new-instance v0, Lcom/bbm/ui/c/ea;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ea;-><init>(Lcom/bbm/ui/c/du;)V

    iput-object v0, p0, Lcom/bbm/ui/c/du;->r:Lcom/bbm/d/b/q;

    new-instance v0, Lcom/bbm/ui/c/ed;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ed;-><init>(Lcom/bbm/ui/c/du;)V

    iput-object v0, p0, Lcom/bbm/ui/c/du;->s:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/bbm/ui/c/ee;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ee;-><init>(Lcom/bbm/ui/c/du;)V

    iput-object v0, p0, Lcom/bbm/ui/c/du;->t:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/du;)Ljava/util/Comparator;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/du;->q:Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/c/du;Ljava/lang/String;Z)V
    .registers 6

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    if-nez p2, :cond_22

    const/4 v0, 0x1

    :goto_9
    new-instance v2, Lcom/bbm/d/al;

    invoke-direct {v2, p1, v0}, Lcom/bbm/d/al;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    new-instance v0, Lcom/bbm/ui/c/eh;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/eh;-><init>(Lcom/bbm/ui/c/du;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/a;->c:Lcom/bbm/ui/d/d;

    const-string v2, "channelFavouriteError"

    invoke-virtual {v1, v2, v0, p0}, Lcom/bbm/ui/d/d;->b(Ljava/lang/String;Lcom/bbm/ui/d/c;Ljava/lang/Object;)V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_9
.end method

.method static synthetic b(Lcom/bbm/ui/c/du;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/du;->b:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/c/du;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/c/du;->g:I

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/c/du;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/c/du;->h:I

    return v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/du;)Lcom/bbm/util/b/g;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/c/du;)V
    .registers 5

    const/16 v3, 0x8

    const/4 v1, 0x0

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->C()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_34

    const/4 v0, 0x1

    :goto_1a
    if-nez v0, :cond_36

    const-string v0, "Channels area: normal contacts"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->d:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->c:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    :goto_33
    return-void

    :cond_34
    move v0, v1

    goto :goto_1a

    :cond_36
    const-string v0, "Channels area: zero mode"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->c:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->d:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02032e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    goto :goto_33
.end method

.method static synthetic g(Lcom/bbm/ui/c/du;)Lcom/bbm/ui/activities/MainActivity;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/c/du;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/NewChannelActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/c/du;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const/high16 v1, 0x7f04

    const v2, 0x7f040016

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .registers 10

    check-cast p1, Lcom/bbm/d/ec;

    if-eqz p1, :cond_11

    iget-object v0, p1, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;

    sget-object v1, Lcom/bbm/d/ee;->c:Lcom/bbm/d/ee;

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/bbm/ui/c/du;->b:Landroid/content/Context;

    iget-object v1, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_11
    :goto_11
    return-void

    :cond_12
    iget-object v0, p1, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;

    sget-object v1, Lcom/bbm/d/ee;->d:Lcom/bbm/d/ee;

    if-ne v0, v1, :cond_11

    iget-object v0, p1, Lcom/bbm/d/ec;->o:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/bbm/ui/c/du;->b:Landroid/content/Context;

    invoke-static {v2}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_45
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v4}, Lcom/bbm/util/bj;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_45 .. :try_end_4c} :catch_bb

    :goto_4c
    iget-object v0, p1, Lcom/bbm/d/ec;->c:Ljava/lang/String;

    iget-boolean v1, p1, Lcom/bbm/d/ec;->d:Z

    iget-boolean v2, p1, Lcom/bbm/d/ec;->e:Z

    iget-object v3, p1, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    iget-boolean v5, p1, Lcom/bbm/d/ec;->u:Z

    iget-boolean v6, p1, Lcom/bbm/d/ec;->K:Z

    iget-boolean v7, p1, Lcom/bbm/d/ec;->L:Z

    invoke-static/range {v0 .. v7}, Lcom/bbm/d/z;->a(Ljava/lang/String;ZZLjava/lang/String;Ljava/lang/String;ZZZ)Lcom/bbm/d/ak;

    move-result-object v0

    iget-object v1, p1, Lcom/bbm/d/ec;->y:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->a(Lorg/json/JSONObject;)Lcom/bbm/d/ak;

    iget-object v1, p1, Lcom/bbm/d/ec;->j:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_70

    iget-object v1, p1, Lcom/bbm/d/ec;->j:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->b(Ljava/lang/String;)Lcom/bbm/d/ak;

    :cond_70
    iget-object v1, p1, Lcom/bbm/d/ec;->H:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7d

    iget-object v1, p1, Lcom/bbm/d/ec;->H:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->c(Ljava/lang/String;)Lcom/bbm/d/ak;

    :cond_7d
    iget-object v1, p1, Lcom/bbm/d/ec;->f:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_8a

    iget-object v1, p1, Lcom/bbm/d/ec;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->a(Ljava/lang/String;)Lcom/bbm/d/ak;

    :cond_8a
    iget-object v1, p1, Lcom/bbm/d/ec;->P:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_97

    iget-object v1, p1, Lcom/bbm/d/ec;->P:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/d/ak;->d(Ljava/lang/String;)Lcom/bbm/d/ak;

    :cond_97
    iget-object v1, p1, Lcom/bbm/d/ec;->O:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/d/z;->a(Ljava/lang/String;)Lcom/bbm/d/ax;

    move-result-object v1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/bbm/d/ax;->a(Ljava/lang/String;)Lcom/bbm/d/ax;

    new-instance v3, Lcom/bbm/ui/c/dw;

    invoke-direct {v3, p0, v0, v4}, Lcom/bbm/ui/c/dw;-><init>(Lcom/bbm/ui/c/du;Lcom/bbm/d/ak;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v3, v2, v0}, Lcom/bbm/ui/d/a;->a(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    goto/16 :goto_11

    :catch_bb
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_4c
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic b(Ljava/lang/Object;)Z
    .registers 12

    const/4 v9, 0x0

    check-cast p1, Lcom/bbm/d/ec;

    const-string v0, "onItemLongClick"

    const-class v1, Lcom/bbm/ui/c/du;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    if-eqz p1, :cond_ae

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3c

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3c
    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_4b
    iget-object v0, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v3, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    new-instance v4, Lcom/bbm/ui/slidingmenu/a;

    iget-object v0, p1, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    iget-object v1, p1, Lcom/bbm/d/ec;->j:Ljava/lang/String;

    invoke-direct {v4, v9, v0, v1}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-boolean v0, p1, Lcom/bbm/d/ec;->t:Z

    if-eqz v0, :cond_b0

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v1, 0x7f020268

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    const v6, 0x7f0e02eb

    invoke-virtual {v2, v6}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2, v9}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    :goto_76
    iget-object v1, p1, Lcom/bbm/d/ec;->M:Lcom/bbm/d/ee;

    sget-object v2, Lcom/bbm/d/ee;->c:Lcom/bbm/d/ee;

    if-ne v1, v2, :cond_97

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a004b

    const v6, 0x7f020257

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-object v7, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    const v8, 0x7f0e01fa

    invoke-virtual {v7, v8}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v2, v6, v7, v9}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_97
    new-instance v1, Lcom/bbm/ui/c/ef;

    invoke-direct {v1, p0, p1}, Lcom/bbm/ui/c/ef;-><init>(Lcom/bbm/ui/c/du;Lcom/bbm/d/ec;)V

    iput-object v1, v3, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v1, Lcom/bbm/ui/c/eg;

    invoke-direct {v1, p0, p1}, Lcom/bbm/ui/c/eg;-><init>(Lcom/bbm/ui/c/du;Lcom/bbm/d/ec;)V

    invoke-virtual {v3, v1}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v3, v5, v4, v0}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V

    :cond_ae
    const/4 v0, 0x1

    return v0

    :cond_b0
    new-instance v2, Lcom/bbm/ui/slidingmenu/a;

    const v0, 0x7f020219

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    const v6, 0x7f0e04c6

    invoke-virtual {v1, v6}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v0, v1, v9}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v0, p1, Lcom/bbm/d/ec;->r:Z

    if-eqz v0, :cond_ea

    const v0, 0x7f020208

    :goto_cc
    iget-boolean v1, p1, Lcom/bbm/d/ec;->r:Z

    if-eqz v1, :cond_ee

    const v1, 0x7f0e051a

    :goto_d3
    new-instance v6, Lcom/bbm/ui/slidingmenu/a;

    const v7, 0x7f0a003a

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget-object v8, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v8, v1}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v7, v0, v1, v9}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v2

    goto :goto_76

    :cond_ea
    const v0, 0x7f020207

    goto :goto_cc

    :cond_ee
    const v1, 0x7f0e0519

    goto :goto_d3
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    const/4 v7, 0x1

    const v5, 0x7f0b00e0

    const/4 v4, 0x0

    const-string v0, "onCreateView"

    const-class v1, Lcom/bbm/ui/c/hk;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/du;->b:Landroid/content/Context;

    const v0, 0x7f03008d

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    const-string v0, "onCreateView"

    const-class v1, Lcom/bbm/ui/c/du;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    iput-object v0, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    iget-object v1, p0, Lcom/bbm/ui/c/du;->s:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/bbm/ui/c/du;->h:I

    iget v0, p0, Lcom/bbm/ui/c/du;->h:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/bbm/ui/c/du;->g:I

    iget-object v0, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    if-nez v0, :cond_7c

    new-instance v0, Lcom/bbm/ui/c/eb;

    iget-object v1, p0, Lcom/bbm/ui/c/du;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/bbm/ui/c/du;->r:Lcom/bbm/d/b/q;

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/c/eb;-><init>(Lcom/bbm/ui/c/du;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    iput-object v0, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    new-instance v0, Lcom/bbm/ui/c/ec;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/ec;-><init>(Lcom/bbm/ui/c/du;)V

    iget-object v1, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/gk;->a(Lcom/bbm/ui/cx;)V

    :cond_7c
    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    const v1, 0x7f0a039c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/bbm/ui/gk;->b(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->d()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/bbm/ui/c/du;->s:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v7}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setStickyHeaderIsTranscluent(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v4}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setScrollingCacheEnabled(Z)V

    new-instance v0, Lcom/bbm/ui/dn;

    const v1, 0x7f100009

    iget-object v2, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/dn;-><init>(Lcom/bbm/ui/ds;ILandroid/widget/AbsListView;Lcom/bbm/ui/dt;)V

    iput-object v0, p0, Lcom/bbm/ui/c/du;->k:Lcom/bbm/ui/dn;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    const v1, 0x7f0a039d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/du;->c:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->c:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    const v1, 0x7f0a039f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/du;->e:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->e:Landroid/widget/TextView;

    const v1, 0x7f0e0226

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    const v1, 0x7f0a039e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/c/du;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    const v1, 0x7f0a03a0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/c/du;->f:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->f:Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/c/dx;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/dx;-><init>(Lcom/bbm/ui/c/du;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    const v1, 0x7f0a03a1

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/c/dy;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/dy;-><init>(Lcom/bbm/ui/c/du;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    sget v1, Lcom/bbm/ui/c/du;->l:I

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setSelection(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0200d8

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Lcom/bbm/util/b/a;

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v3, p0, Lcom/bbm/ui/c/du;->h:I

    invoke-direct {v1, v2, v3}, Lcom/bbm/util/b/a;-><init>(Landroid/app/Activity;I)V

    iput-object v1, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    iget-object v1, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    iput-object v0, v1, Lcom/bbm/util/b/i;->d:Landroid/graphics/Bitmap;

    new-instance v1, Lcom/bbm/util/b/f;

    invoke-direct {v1}, Lcom/bbm/util/b/f;-><init>()V

    const/high16 v2, 0x3e80

    invoke-virtual {v1, v2}, Lcom/bbm/util/b/f;->a(F)V

    iget-object v2, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    invoke-virtual {v2, v1}, Lcom/bbm/util/b/g;->a(Lcom/bbm/util/b/f;)V

    iget-object v1, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    iput-boolean v4, v1, Lcom/bbm/util/b/i;->j:Z

    iget-object v1, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    iget-object v1, v1, Lcom/bbm/util/b/i;->b:Lcom/bbm/util/b/d;

    const-string v2, "com.bbm.ui.fragments.ChannelsDefaultAvatarBitmap"

    new-instance v3, Lcom/bbm/d/fd;

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/bbm/ui/c/du;->h:I

    iget v6, p0, Lcom/bbm/ui/c/du;->h:I

    invoke-static {v0, v5, v6, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {v3, v4, v0}, Lcom/bbm/d/fd;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2, v3}, Lcom/bbm/util/b/d;->a(Ljava/lang/String;Lcom/bbm/d/fd;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    return-object v0
.end method

.method public onDetach()V
    .registers 4

    const/4 v2, 0x0

    const-string v0, "onDetatch"

    const-class v1, Lcom/bbm/ui/c/du;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/bbm/ui/c/du;->l:I

    iget-object v0, p0, Lcom/bbm/ui/c/du;->k:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    invoke-virtual {v0}, Lcom/bbm/util/b/g;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    invoke-virtual {p0}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/b/g;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    invoke-virtual {v0}, Lcom/bbm/util/b/g;->c()V

    iput-object v2, p0, Lcom/bbm/ui/c/du;->o:Lcom/bbm/util/b/g;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->a()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object v2, p0, Lcom/bbm/ui/c/du;->j:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->f()V

    iput-object v2, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    iget-object v0, p0, Lcom/bbm/ui/c/du;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->f:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v2, p0, Lcom/bbm/ui/c/du;->a:Lcom/bbm/ui/activities/MainActivity;

    iput-object v2, p0, Lcom/bbm/ui/c/du;->b:Landroid/content/Context;

    return-void
.end method

.method public onPause()V
    .registers 3

    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/hk;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->t:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method public onResume()V
    .registers 3

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/hk;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->i:Lcom/bbm/ui/gk;

    iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/du;->t:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/du;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    return-void
.end method
