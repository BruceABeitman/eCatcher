.class final Lcom/spotify/mobile/android/spotlets/a/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Landroid/widget/ToggleButton;

.field private e:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

.field private f:Lcom/spotify/mobile/android/util/Collection$State;

.field private g:Lcom/spotify/mobile/android/spotlets/a/e;

.field private h:Lcom/spotify/mobile/android/ui/prettylist/c;

.field private i:Lcom/spotify/mobile/android/ui/view/paste/a;

.field private j:Ljava/lang/String;

.field private k:Ljava/lang/String;

.field private l:Lcom/spotify/mobile/android/util/f;

.field private final m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/a/e;)V
    .registers 7

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/a/d;->g:Lcom/spotify/mobile/android/spotlets/a/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/stuff/k;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->m:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a4

    move-object v0, p1

    check-cast v0, Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->b(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    :goto_1f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->b()Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->e:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->g:Lcom/spotify/mobile/android/spotlets/a/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->c()Landroid/widget/ListView;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/a/e;->a(Landroid/widget/ListView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->g:Lcom/spotify/mobile/android/spotlets/a/e;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->j()Landroid/view/View;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/spotlets/a/e;->a(Landroid/view/View;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0}, Lcom/spotify/mobile/android/ui/prettylist/c;->f()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f030081

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v0, 0x7f0a024d

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->b:Landroid/widget/TextView;

    const v0, 0x7f0a02e7

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/a/d$3;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/a/d$3;-><init>(Lcom/spotify/mobile/android/spotlets/a/d;)V

    invoke-virtual {v0, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/HeaderView;->b(Landroid/view/View;)V

    new-instance v0, Lcom/spotify/mobile/android/util/f;

    invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->l:Lcom/spotify/mobile/android/util/f;

    new-instance v0, Lcom/spotify/mobile/android/ui/view/paste/a;

    invoke-direct {v0, p1}, Lcom/spotify/mobile/android/ui/view/paste/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/a/d$1;

    invoke-direct {v0, p0, p1}, Lcom/spotify/mobile/android/spotlets/a/d$1;-><init>(Lcom/spotify/mobile/android/spotlets/a/d;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    const v1, 0x7f0f002f

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/paste/a;->c(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->e:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v0

    new-instance v1, Lcom/spotify/mobile/android/spotlets/a/d$2;

    invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/a/d$2;-><init>(Lcom/spotify/mobile/android/spotlets/a/d;)V

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/HeaderView;->a(Landroid/support/v4/view/ah;)V

    return-void

    :cond_a4
    move-object v0, p1

    check-cast v0, Lcom/spotify/music/MainActivity;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/prettylist/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/ui/prettylist/c;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-static {p1, v3}, Lcom/spotify/mobile/android/ui/stuff/g;->a(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->c:Landroid/widget/Button;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->g:Lcom/spotify/mobile/android/spotlets/a/e;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/a/e;->a()Landroid/view/View$OnClickListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->c:Landroid/widget/Button;

    invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/prettylist/c;->b(Landroid/view/View;)V

    goto/16 :goto_1f
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/a/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method private static a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
    .registers 5

    const-class v0, Lcom/spotify/mobile/android/ui/actions/a;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;

    sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->G:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;

    invoke-direct {v0, p2, v1}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V

    invoke-static {p0, p1, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V

    return-void
.end method

.method static synthetic b(Lcom/spotify/mobile/android/spotlets/a/d;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->k:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/spotify/mobile/android/spotlets/a/d;)Lcom/spotify/mobile/android/ui/view/paste/a;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    return-object v0
.end method

.method private c()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->a()Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method static synthetic d(Lcom/spotify/mobile/android/spotlets/a/d;)V
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->g:Lcom/spotify/mobile/android/spotlets/a/e;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/a/e;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->H:Lcom/spotify/mobile/android/util/ea;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/util/ea;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/ViewUri$Verified;

    move-result-object v1

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/d;->a:Landroid/content/Context;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/a/d$4;->a:[I

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/a/d;->f:Lcom/spotify/mobile/android/util/Collection$State;

    invoke-virtual {v4}, Lcom/spotify/mobile/android/util/Collection$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_46

    :goto_1b
    return-void

    :pswitch_1c
    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->M:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v2, v1, v3}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-class v3, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-static {v2, v1, v0}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_2a
    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->N:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v2, v1, v3}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-class v3, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-static {v2, v1, v0}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_38
    sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->Q:Lcom/spotify/mobile/android/util/ClientEvent$Event;

    invoke-static {v2, v1, v3}, Lcom/spotify/mobile/android/spotlets/a/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V

    const-class v3, Lcom/spotify/mobile/android/ui/actions/c;

    invoke-static {v3}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    invoke-static {v2, v1, v0}, Lcom/spotify/mobile/android/ui/actions/c;->b(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V

    goto :goto_1b

    :pswitch_data_46
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_2a
        :pswitch_38
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->c:Landroid/widget/Button;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->l:Lcom/spotify/mobile/android/util/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->c:Landroid/widget/Button;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V

    :cond_b
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->n:Landroid/view/View;

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->l:Lcom/spotify/mobile/android/util/f;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->n:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V

    :cond_16
    return-void
.end method

.method public final a(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(I)V

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->n:Landroid/view/View;

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/Collection$State;)V
    .registers 5

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->f:Lcom/spotify/mobile/android/util/Collection$State;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_12

    sget-object v0, Lcom/spotify/mobile/android/spotlets/a/d$4;->a:[I

    invoke-virtual {p1}, Lcom/spotify/mobile/android/util/Collection$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_3e

    :cond_12
    :goto_12
    return-void

    :pswitch_13
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    const v1, 0x7f0f00f3

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_12

    :pswitch_21
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    const v1, 0x7f0f00f2

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_12

    :pswitch_2f
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    const v1, 0x7f0f00f4

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setText(I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->d:Landroid/widget/ToggleButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    goto :goto_12

    :pswitch_data_3e
    .packed-switch 0x1
        :pswitch_13
        :pswitch_21
        :pswitch_2f
    .end packed-switch
.end method

.method public final a(Ljava/lang/String;)V
    .registers 7

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->k:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->a:Landroid/content/Context;

    const v2, 0x7f0f0030

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/paste/a;->d(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/a/d;->c()V

    :goto_9
    return-void

    :cond_a
    invoke-static {p2}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/view/paste/a;->a()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v1}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;)Lcom/squareup/picasso/ai;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V

    goto :goto_9
.end method

.method public final a(Z)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    if-eqz p1, :cond_16

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/spotify/mobile/android/util/SpotifyLink;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x1

    :goto_d
    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(Z)V

    if-nez p1, :cond_15

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/a/d;->c()V

    :cond_15
    return-void

    :cond_16
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final b()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->g:Lcom/spotify/mobile/android/spotlets/a/e;

    invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/a/e;->a()Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->c:Landroid/widget/Button;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    return-void
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/paste/a;->a(I)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/a/d;->j:Ljava/lang/String;

    return-void
.end method

.method public final c(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->h:Lcom/spotify/mobile/android/ui/prettylist/c;

    invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/prettylist/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final d(Ljava/lang/String;)V
    .registers 8

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->e:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    if-eqz v0, :cond_59

    invoke-static {p1}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-class v0, Lcom/spotify/mobile/android/util/df;

    invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/util/df;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v2

    new-instance v3, Lcom/spotify/mobile/android/ui/c/a;

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/a/d;->a:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/ui/c/a;-><init>(Landroid/content/Context;B)V

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ak;)Lcom/squareup/picasso/ad;

    move-result-object v2

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/a/d;->e:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->a()Landroid/widget/ImageView;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/d;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/spotify/mobile/android/ui/stuff/k;->b(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;

    move-result-object v0

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/d;->e:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/squareup/picasso/ad;->a(Landroid/widget/ImageView;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->a:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/a/d;->e:Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/prettylist/PrettyHeaderView;->b()Lcom/spotify/android/paste/widget/HeaderView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/spotify/android/paste/widget/HeaderView;->a()Landroid/widget/ImageView;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/spotify/mobile/android/ui/activity/CoverImageActivity;->a(Landroid/app/Activity;Landroid/widget/ImageView;Landroid/net/Uri;)V

    :cond_59
    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/a/d;->i:Lcom/spotify/mobile/android/ui/view/paste/a;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/view/paste/a;->b(Ljava/lang/String;)V

    return-void
.end method
