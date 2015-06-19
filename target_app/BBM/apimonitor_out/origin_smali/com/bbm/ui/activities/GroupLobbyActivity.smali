.class public Lcom/bbm/ui/activities/GroupLobbyActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupLobbyActivity.java"


# instance fields
.field private F:Landroid/widget/ImageView;

.field private G:Landroid/widget/ImageView;

.field private H:Landroid/widget/ImageView;

.field private I:Landroid/widget/ImageView;

.field private J:I

.field private K:Ljava/lang/String;

.field private L:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final M:Lcom/bbm/ui/cj;

.field private final N:Lcom/bbm/ui/c/fq;

.field private final O:Lcom/bbm/j/k;

.field private final P:Lcom/bbm/j/u;

.field final a:Lcom/bbm/g/am;

.field b:Lcom/bbm/ui/FooterActionBar;

.field d:Z

.field final e:Lcom/bbm/j/k;

.field final f:Lcom/bbm/j/k;

.field final g:Lcom/bbm/j/k;

.field final h:Lcom/bbm/j/k;

.field final i:Lcom/bbm/j/k;

.field final j:Lcom/bbm/j/k;

.field private k:Lcom/bbm/ui/ObservingImageView;

.field private l:Lcom/bbm/ui/InlineImageTextView;

.field private m:Lcom/bbm/ui/InlineImageTextView;

.field private n:Landroid/widget/LinearLayout;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/LinearLayout;

.field private q:Landroid/widget/LinearLayout;

.field private r:Lcom/bbm/ui/ObservingImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/TextView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/TextView;

.field private w:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-class v0, Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/md;-><init>(Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->d:Z

    new-instance v0, Lcom/bbm/ui/activities/pl;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pl;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->L:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/ui/activities/px;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/px;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->M:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/qf;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qf;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->N:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/activities/qh;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qh;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->O:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/pp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pp;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->e:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/pr;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pr;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->f:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/ps;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ps;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->g:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/pt;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pt;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->h:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/pu;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pu;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->i:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/pv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pv;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->j:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/qe;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/qe;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->P:Lcom/bbm/j/u;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/g/am;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupLobbyActivity;I)V
    .registers 14

    const/4 v5, 0x0

    const v0, 0x7f0e0411

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v0, 0x7f0a01b3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    const v1, 0x7f0a01b6

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a01b7

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->t:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " ("

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, ")"

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    move v4, v5

    :goto_50
    iget-object v3, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    invoke-virtual {v3}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v4, v3, :cond_be

    iget-object v3, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    invoke-virtual {v3}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bbm/g/q;

    iget-wide v8, v3, Lcom/bbm/g/q;->h:J

    iget-object v3, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    invoke-virtual {v3}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bbm/g/q;

    iget-object v3, v3, Lcom/bbm/g/q;->d:Ljava/lang/String;

    iget-object v10, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_ba

    const-wide/16 v10, 0x0

    cmp-long v3, v8, v10

    if-lez v3, :cond_ba

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    iget-object v3, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    invoke-virtual {v3}, Lcom/bbm/g/am;->d()Lcom/bbm/j/w;

    move-result-object v3

    invoke-interface {v3}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bbm/g/q;

    iget-object v3, v3, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ba
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto :goto_50

    :cond_be
    invoke-static {v6}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lez v3, :cond_142

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    invoke-virtual {v4, v3}, Lcom/bbm/g/am;->f(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v4

    invoke-interface {v4}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_142

    invoke-interface {v4}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v4}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/bbm/g/ad;

    iget-object v4, v3, Lcom/bbm/g/ad;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    iget-object v3, v3, Lcom/bbm/g/ad;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v2

    if-eqz v2, :cond_142

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-static {v2}, Lcom/bbm/d/b/a;->a(Lcom/bbm/g/o;)Lcom/google/b/a/l;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/bbm/d/b/a;->a(Lcom/google/b/a/l;Lcom/bbm/g/o;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    invoke-virtual {v3}, Lcom/google/b/a/l;->a()Z

    move-result v4

    if-eqz v4, :cond_13d

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v4

    invoke-virtual {v3}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/gp;

    iget-object v5, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v3}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/d/gp;

    iget-object v1, v1, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v1

    :cond_13d
    if-eqz v1, :cond_143

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :cond_142
    :goto_142
    return-void

    :cond_143
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/bbm/d/fc;->a(Landroid/content/res/Resources;Lcom/bbm/g/o;)Lcom/google/b/a/l;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/b/a/l;->a()Z

    move-result v2

    if-eqz v2, :cond_15b

    invoke-virtual {v1}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/bbm/j/r;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    goto :goto_142

    :cond_15b
    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V

    goto :goto_142
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupLobbyActivity;Lcom/bbm/ui/c/fm;)V
    .registers 8

    const/4 v5, 0x0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a006c

    const v3, 0x7f02021b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e06b0

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0069

    const v3, 0x7f020216

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e0101

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0068

    const v3, 0x7f020215

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e06a3

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a0067

    const v3, 0x7f020214

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e06a2

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a006d

    const v3, 0x7f02021d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e06be

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a006e

    const v3, 0x7f02021a

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e06a8

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->d:Z

    if-eqz v1, :cond_b9

    new-instance v1, Lcom/bbm/ui/slidingmenu/a;

    const v2, 0x7f0a006a

    const v3, 0x7f020217

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const v4, 0x7f0e06a9

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b9
    invoke-virtual {p1, v0, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->N:Lcom/bbm/ui/c/fq;

    iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v0, Lcom/bbm/ui/slidingmenu/a;

    const v1, 0x7f0a006b

    const v2, 0x7f020219

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const v3, 0x7f0e06ad

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v0, Lcom/bbm/ui/activities/pz;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/pz;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {p1, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupLobbyActivity;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupLobbyActivity;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    iget-object v0, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;

    iget-object v2, v1, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e03f7

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03f6

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v9

    iget-object v0, v1, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e03f9

    new-array v7, v8, [Ljava/lang/Object;

    aput-object p2, v7, v9

    invoke-virtual {v0, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v5, v8

    const/4 v0, 0x2

    iget-object v6, v1, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e03f5

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-virtual {v6, v7, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    const-string v5, "mailto:"

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "android.intent.extra.SUBJECT"

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.TEXT"

    invoke-virtual {v3, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e049d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .registers 4

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    :cond_8
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->r:Lcom/bbm/ui/ObservingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    :goto_e
    iput-object p1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->K:Ljava/lang/String;

    return-void

    :cond_11
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->K:Ljava/lang/String;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->K:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    :cond_1d
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->r:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Ljava/lang/String;)V

    goto :goto_e
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
    .registers 7

    const v5, 0x7f0202eb

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->L:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->J:I

    if-ge v0, v1, :cond_65

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Lcom/bbm/ui/b/aa;

    const v2, 0x7f0e049e

    const v3, 0x7f0202e8

    new-instance v4, Lcom/bbm/ui/activities/qa;

    invoke-direct {v4, p0}, Lcom/bbm/ui/activities/qa;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/b/aa;

    const v2, 0x7f0e04a1

    new-instance v3, Lcom/bbm/ui/activities/qb;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/qb;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-direct {v1, v2, v5, v3}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/b/aa;

    const v2, 0x7f0e048d

    new-instance v3, Lcom/bbm/ui/activities/qc;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/qc;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-direct {v1, v2, v5, v3}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/bbm/ui/b/aa;

    const v2, 0x7f0e049f

    const v3, 0x7f0202e9

    new-instance v4, Lcom/bbm/ui/activities/qd;

    invoke-direct {v4, p0}, Lcom/bbm/ui/activities/qd;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    invoke-static {p0, v0}, Lcom/bbm/h/aq;->b(Landroid/content/Context;Ljava/util/List;)V

    :goto_64
    return-void

    :cond_65
    const v0, 0x7f0e041b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_64
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupLobbyActivity;I)V
    .registers 7

    const/16 v3, 0x8

    const/4 v4, 0x0

    const v0, 0x7f0a01bc

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a01bd

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-lez p1, :cond_70

    move v2, v3

    :goto_18
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    if-lez p1, :cond_72

    :goto_1d
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->u:Landroid/widget/TextView;

    if-lez p1, :cond_74

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0419

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_3c
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-lez p1, :cond_84

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->e(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/af;

    iget-object v0, v0, Lcom/bbm/g/af;->i:Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v1

    if-nez v1, :cond_80

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/bbm/ui/activities/pw;

    invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/pw;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :goto_6f
    return-void

    :cond_70
    move v2, v4

    goto :goto_18

    :cond_72
    move v3, v4

    goto :goto_1d

    :cond_74
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0e0418

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3c

    :cond_80
    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Ljava/lang/String;)V

    goto :goto_6f

    :cond_84
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Ljava/lang/String;)V

    goto :goto_6f
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupLobbyActivity;I)V
    .registers 15

    const v0, 0x7f0a01ce

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a01cf

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a01cd

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a01d0

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/bbm/ui/InlineImageTextView;

    const v4, 0x7f0a01d1

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    const v5, 0x7f0a01d2

    invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/bbm/ui/InlineImageTextView;

    if-lez p1, :cond_9b

    const/16 v6, 0x8

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->w:Landroid/widget/TextView;

    const v1, 0x7f0e0413

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v5, v0}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->m(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    const/4 v1, 0x0

    const-wide v6, 0x7fffffffffffffffL

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_80
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_bf

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/s;

    iget-wide v9, v0, Lcom/bbm/g/s;->h:J

    cmp-long v9, v9, v6

    if-gez v9, :cond_fd

    iget-wide v6, v0, Lcom/bbm/g/s;->h:J

    move-wide v11, v6

    move-object v6, v0

    move-wide v0, v11

    :goto_97
    move-wide v11, v0

    move-object v1, v6

    move-wide v6, v11

    goto :goto_80

    :cond_9b
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->w:Landroid/widget/TextView;

    const v1, 0x7f0e0412

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/16 v0, 0x8

    invoke-virtual {v3, v0}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    const/16 v0, 0x8

    invoke-virtual {v5, v0}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V

    :cond_be
    :goto_be
    return-void

    :cond_bf
    if-eqz v1, :cond_be

    iget-wide v6, v1, Lcom/bbm/g/s;->h:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    iget-boolean v8, v1, Lcom/bbm/g/s;->a:Z

    const/16 v0, 0x18

    if-eqz v8, :cond_ce

    const/16 v0, 0x2018

    :cond_ce
    const/4 v8, 0x0

    invoke-static {v8, v6, v7, v0}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v1, Lcom/bbm/g/s;->i:Ljava/lang/String;

    invoke-virtual {v3, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, v1, Lcom/bbm/g/s;->a:Z

    if-eqz v0, :cond_eb

    const v0, 0x7f0e03e2

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(I)V

    :goto_e5
    iget-object v0, v1, Lcom/bbm/g/s;->d:Ljava/lang/String;

    invoke-virtual {v5, v0}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_be

    :cond_eb
    iget-wide v2, v1, Lcom/bbm/g/s;->h:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v2, v6

    iget-wide v6, v1, Lcom/bbm/g/s;->b:J

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-static {p0, v2, v3, v6, v7}, Lcom/bbm/util/be;->a(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e5

    :cond_fd
    move-wide v11, v6

    move-object v6, v1

    move-wide v0, v11

    goto :goto_97
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupLobbyActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->d:Z

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupLobbyActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->J:I

    return p1
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
    .registers 4

    new-instance v0, Lcom/bbm/ui/activities/qn;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/activities/qn;-><init>(Landroid/app/Activity;Lcom/bbm/g/a;Z)V

    invoke-virtual {v0}, Lcom/bbm/ui/activities/qn;->show()V

    return-void
.end method

.method static synthetic e(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/GroupEventsAddActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "newOrEdit"

    const-string v2, "new"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic f(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/GroupSettingsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic g(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->k:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/ui/InlineImageTextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->l:Lcom/bbm/ui/InlineImageTextView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/ui/InlineImageTextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->m:Lcom/bbm/ui/InlineImageTextView;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->F:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->G:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->H:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->I:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->P:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method

.method static synthetic o(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->s:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/bbm/ui/activities/GroupLobbyActivity;)V
    .registers 19

    const v1, 0x7f0a01c3

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    const v2, 0x7f0a01c4

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f0a01c2

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/bbm/ui/InlineImageTextView;

    const v4, 0x7f0a01c7

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/CheckBox;

    const v5, 0x7f0a01c8

    move-object/from16 v0, p0

    invoke-virtual {v0, v5}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/bbm/ui/AutoMaxLineInlineImage;

    const v6, 0x7f0a01c9

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f0a01c6

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const-wide/16 v9, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/bbm/g/am;->j(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->v:Landroid/widget/TextView;

    const v7, 0x7f0e0416

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v7, 0x1

    new-array v14, v7, [Ljava/lang/Object;

    const/4 v15, 0x0

    invoke-interface {v13}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v14, v15

    invoke-static {v11, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    const/4 v7, 0x0

    move v11, v7

    :goto_84
    invoke-interface {v13}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    if-ge v11, v7, :cond_b9

    invoke-interface {v13}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bbm/g/w;

    iget-wide v14, v7, Lcom/bbm/g/w;->d:J

    cmp-long v7, v14, v9

    if-lez v7, :cond_14f

    invoke-interface {v13}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-interface {v7, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/bbm/g/w;

    iget-wide v8, v7, Lcom/bbm/g/w;->d:J

    :goto_b0
    add-int/lit8 v10, v11, 0x1

    move v11, v10

    move-wide/from16 v16, v8

    move-wide/from16 v9, v16

    move-object v8, v7

    goto :goto_84

    :cond_b9
    if-eqz v8, :cond_13c

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    iget-object v9, v8, Lcom/bbm/g/w;->f:Ljava/lang/String;

    invoke-virtual {v7, v9}, Lcom/bbm/g/am;->h(Ljava/lang/String;)Lcom/bbm/j/w;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    iget-object v9, v8, Lcom/bbm/g/w;->c:Ljava/lang/String;

    iget-object v10, v8, Lcom/bbm/g/w;->f:Ljava/lang/String;

    invoke-virtual {v7, v9, v10}, Lcom/bbm/g/am;->e(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/g/y;

    move-result-object v7

    iget-object v9, v7, Lcom/bbm/g/y;->l:Ljava/lang/String;

    const v10, 0x7f0b0198

    const/high16 v11, -0x100

    invoke-virtual {v5, v9, v10, v11}, Lcom/bbm/ui/AutoMaxLineInlineImage;->setText(Ljava/lang/CharSequence;II)V

    iget-object v5, v8, Lcom/bbm/g/w;->e:Ljava/lang/String;

    invoke-virtual {v3, v5}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v7, Lcom/bbm/g/y;->r:Lcom/bbm/g/ab;

    sget-object v5, Lcom/bbm/g/ab;->b:Lcom/bbm/g/ab;

    if-ne v3, v5, :cond_116

    const/4 v3, 0x1

    :goto_e6
    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    new-instance v3, Lcom/bbm/ui/activities/py;

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v4, v8, v7}, Lcom/bbm/ui/activities/py;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;Landroid/widget/CheckBox;Lcom/bbm/g/w;Lcom/bbm/g/y;)V

    invoke-virtual {v4, v3}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-wide v3, v7, Lcom/bbm/g/y;->h:J

    const-wide/16 v8, 0x0

    cmp-long v3, v3, v8

    if-nez v3, :cond_118

    const v3, 0x7f0e0417

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_107
    const/4 v3, 0x0

    invoke-virtual {v12, v3}, Landroid/view/View;->setVisibility(I)V

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_115
    return-void

    :cond_116
    const/4 v3, 0x0

    goto :goto_e6

    :cond_118
    iget-wide v3, v7, Lcom/bbm/g/y;->h:J

    const-wide/16 v7, 0x3e8

    mul-long/2addr v3, v7

    const/4 v5, 0x0

    const v7, 0x82012

    invoke-static {v5, v3, v4, v7}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0e0415

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_107

    :cond_13c
    const/16 v4, 0x8

    invoke-virtual {v12, v4}, Landroid/view/View;->setVisibility(I)V

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    const/4 v1, 0x0

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const-string v1, ""

    invoke-virtual {v3, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_115

    :cond_14f
    move-object v7, v8

    move-wide/from16 v16, v9

    move-wide/from16 v8, v16

    goto/16 :goto_b0
.end method

.method static synthetic q(Lcom/bbm/ui/activities/GroupLobbyActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->n:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic r(Lcom/bbm/ui/activities/GroupLobbyActivity;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->L:Lcom/bbm/j/a;

    return-object v0
.end method

.method static synthetic s(Lcom/bbm/ui/activities/GroupLobbyActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->J:I

    return v0
.end method


# virtual methods
.method public final b()V
    .registers 4

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupUri"

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    const/4 v1, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/md;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p2, v1, :cond_13

    if-nez p1, :cond_13

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/h/aq;->a(Landroid/content/Intent;)V

    :cond_13
    if-ne p2, v1, :cond_58

    const/16 v0, 0x2726

    if-ne p1, v0, :cond_58

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->a:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->L:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget v2, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->J:I

    if-ge v0, v2, :cond_4d

    iget-boolean v0, v1, Lcom/bbm/g/a;->j:Z

    if-nez v0, :cond_39

    iget-boolean v0, v1, Lcom/bbm/g/a;->a:Z

    if-eqz v0, :cond_4d

    :cond_39
    const-string v0, "group_invite"

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "group_uri"

    iget-object v2, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {p3, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "group_name"

    iget-object v1, v1, Lcom/bbm/g/a;->r:Ljava/lang/String;

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_4d
    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lcom/bbm/h/aq;->b(Landroid/content/Intent;Landroid/app/Activity;)V

    :cond_58
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03002f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->setContentView(I)V

    const v0, 0x7f0a01b8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->t:Landroid/widget/TextView;

    const v0, 0x7f0a01bf

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->u:Landroid/widget/TextView;

    const v0, 0x7f0a01ca

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->v:Landroid/widget/TextView;

    const v0, 0x7f0a01d4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->w:Landroid/widget/TextView;

    const v0, 0x7f0a01b2

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->o:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01b9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->n:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01c0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->p:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01cb

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->q:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01bb

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->r:Lcom/bbm/ui/ObservingImageView;

    const v0, 0x7f0a01b4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->F:Landroid/widget/ImageView;

    const v0, 0x7f0a01be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->G:Landroid/widget/ImageView;

    const v0, 0x7f0a01c5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->H:Landroid/widget/ImageView;

    const v0, 0x7f0a01d3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_e5

    const v0, 0x7f03010a

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0535

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->k:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a0539

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->l:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a053a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->m:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0538

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->s:Landroid/widget/TextView;

    :cond_e5
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/qi;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/qi;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->n:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/qj;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/qj;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->p:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/qk;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/qk;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->q:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/ql;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ql;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->k:Lcom/bbm/ui/ObservingImageView;

    new-instance v1, Lcom/bbm/ui/activities/qm;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/qm;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->l:Lcom/bbm/ui/InlineImageTextView;

    new-instance v1, Lcom/bbm/ui/activities/pm;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/pm;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->m:Lcom/bbm/ui/InlineImageTextView;

    new-instance v1, Lcom/bbm/ui/activities/pn;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/pn;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020218

    const v3, 0x7f0e00f4

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->M:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    new-instance v0, Lcom/bbm/ui/activities/po;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/po;-><init>(Lcom/bbm/ui/activities/GroupLobbyActivity;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/slidingmenu/lib/a/b;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->j:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    const/4 v1, 0x0

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onDestroy()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->L:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->d()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->r:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->b()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->k:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->b()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->F:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->G:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->H:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->I:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->k:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->l:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->m:Lcom/bbm/ui/InlineImageTextView;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->n:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->p:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->q:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->removeAllViewsInLayout()V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/GroupLobbyActivity;->a(Lcom/slidingmenu/lib/a/b;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->O:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->f:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->g:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->h:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->i:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->j:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->k:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->k:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->O:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->f:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->g:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->h:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupLobbyActivity;->i:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
