.class public Lcom/bbm/ui/activities/ChannelStatsActivity;
.super Lcom/bbm/ui/activities/cn;
.source "ChannelStatsActivity.java"


# static fields
.field private static final F:[Ljava/lang/String;

.field static final a:Ljava/lang/String;

.field static final b:Ljava/lang/String;

.field static final c:Ljava/lang/String;

.field static final d:Ljava/lang/String;

.field static final e:Ljava/lang/String;

.field static final f:Ljava/lang/String;

.field static final g:Ljava/lang/String;

.field static final h:Ljava/lang/String;

.field static final i:Ljava/lang/String;

.field static final j:Ljava/lang/String;

.field static final k:Ljava/lang/String;


# instance fields
.field private final G:Lcom/bbm/d/a;

.field private H:Ljava/lang/String;

.field private final I:Lcom/bbm/j/u;

.field private final J:Lcom/bbm/j/u;

.field l:Landroid/widget/Spinner;

.field m:Lcom/bbm/ui/l;

.field n:Lcom/bbm/ui/FooterActionBar;

.field final o:Lcom/bbm/ui/cj;

.field p:Lcom/bbm/d/em;

.field q:Landroid/widget/TextView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/TextView;

.field u:Landroid/widget/TextView;

.field v:Landroid/widget/TextView;

.field w:Lcom/bbm/ui/activities/en;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    sget-object v0, Lcom/bbm/d/az;->a:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->a:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->b:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->b:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->c:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->c:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->d:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->d:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->e:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->e:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->g:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->f:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->h:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->g:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->i:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->h:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->j:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->i:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->k:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->j:Ljava/lang/String;

    sget-object v0, Lcom/bbm/d/az;->l:Lcom/bbm/d/az;

    invoke-virtual {v0}, Lcom/bbm/d/az;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->k:Ljava/lang/String;

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "LastDay"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "LastWeek"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Last4Weeks"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "PreviousMonth"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "AllTime"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->F:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bbm/ui/activities/cn;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->G:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/activities/ei;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ei;-><init>(Lcom/bbm/ui/activities/ChannelStatsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->o:Lcom/bbm/ui/cj;

    sget-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->F:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->H:Ljava/lang/String;

    new-instance v0, Lcom/bbm/ui/activities/ej;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ej;-><init>(Lcom/bbm/ui/activities/ChannelStatsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->I:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/activities/ek;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ek;-><init>(Lcom/bbm/ui/activities/ChannelStatsActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->J:Lcom/bbm/j/u;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/em;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelStatsActivity;Lcom/bbm/d/em;)Lcom/bbm/d/em;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChannelStatsActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->H:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChannelStatsActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->H:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->G:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
    .registers 7

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;

    iget-object v0, v0, Lcom/bbm/d/em;->b:Ljava/util/List;

    :try_start_4
    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0215

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4f

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONObject;

    const-string v1, "percentage"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2d

    const-string v1, "0"

    :cond_2d
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "comment"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_50

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->v:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_4a
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4a} :catch_4b

    goto :goto_13

    :catch_4b
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    :cond_4f
    return-void

    :cond_50
    :try_start_50
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "visit"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6e

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->u:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_13

    :cond_6e
    const-string v4, "type"

    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "hype"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->t:Landroid/widget/TextView;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v2, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_8b
    .catch Lorg/json/JSONException; {:try_start_50 .. :try_end_8b} :catch_4b

    goto :goto_13
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
    .registers 6

    const/16 v4, 0x8

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;

    iget-object v2, v0, Lcom/bbm/d/em;->e:Ljava/util/List;

    const v0, 0x7f0a032e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a032f

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_2b

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v4}, Landroid/widget/ListView;->setVisibility(I)V

    :goto_25
    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->w:Lcom/bbm/ui/activities/en;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/en;->notifyDataSetChanged()V

    return-void

    :cond_2b
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {v1, v3}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_25
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/j/u;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->I:Lcom/bbm/j/u;

    return-object v0
.end method

.method static synthetic f()[Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/ChannelStatsActivity;->F:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/cn;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030062

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->setContentView(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->J:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->J:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChannelStatsActivity;->I:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->e()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/cn;->onResume()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/ui/activities/cd;->a(Ljava/lang/String;)V

    return-void
.end method
