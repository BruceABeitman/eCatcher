.class public Lcom/bbm/ui/activities/OwnProfileActivity;
.super Lcom/bbm/ui/activities/ev;
.source "OwnProfileActivity.java"


# static fields
.field private static volatile g:Ljava/lang/Boolean;


# instance fields
.field a:Landroid/view/View$OnLayoutChangeListener;

.field private b:Lcom/bbm/ui/FooterActionBar;

.field private c:Landroid/widget/ImageView;

.field private d:Lcom/bbm/ui/c/ej;

.field private e:Lcom/bbm/ui/c/ew;

.field private f:I

.field private h:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Landroid/widget/EditText;",
            ">;"
        }
    .end annotation
.end field

.field private i:Lcom/bbm/ui/EmoticonPicker;

.field private j:Landroid/widget/LinearLayout;

.field private final k:Landroid/os/Handler;

.field private l:Landroid/widget/LinearLayout;

.field private m:Lcom/bbm/d/a;

.field private n:Lcom/bbm/ui/SegmentedControl;

.field private o:Landroid/widget/LinearLayout;

.field private p:Landroid/widget/ImageButton;

.field private q:Landroid/widget/ImageButton;

.field private r:Lcom/bbm/ui/ObservingAvatarImageView;

.field private final s:Landroid/view/View$OnFocusChangeListener;

.field private final t:Lcom/bbm/ui/c/ev;

.field private final u:Lcom/bbm/ui/fs;

.field private final v:Lcom/bbm/ui/cj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/OwnProfileActivity;->g:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->c:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->d:Lcom/bbm/ui/c/ej;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->e:Lcom/bbm/ui/c/ew;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->k:Landroid/os/Handler;

    new-instance v0, Lcom/bbm/ui/activities/aag;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aag;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->s:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/bbm/ui/activities/aaq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aaq;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->t:Lcom/bbm/ui/c/ev;

    new-instance v0, Lcom/bbm/ui/activities/aar;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aar;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->u:Lcom/bbm/ui/fs;

    new-instance v0, Lcom/bbm/ui/activities/aas;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aas;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->v:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/aat;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aat;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->a:Landroid/view/View$OnLayoutChangeListener;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OwnProfileActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->f:I

    return p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OwnProfileActivity;Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/c/ej;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->d:Lcom/bbm/ui/c/ej;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OwnProfileActivity;Lcom/bbm/ui/c/ew;)Lcom/bbm/ui/c/ew;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->e:Lcom/bbm/ui/c/ew;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/google/b/a/l;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/OwnProfileActivity;Z)V
    .registers 5

    const/4 v2, 0x4

    const/4 v1, 0x0

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_f
.end method

.method static synthetic b(Lcom/bbm/ui/activities/OwnProfileActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/OwnProfileActivity;Z)V
    .registers 6

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->k:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/ui/activities/aao;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aao;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_11
    return-void

    :cond_12
    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->b()V

    invoke-static {p0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;)V

    goto :goto_11
.end method

.method static synthetic c(Lcom/bbm/ui/activities/OwnProfileActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->f:I

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ew;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->e:Lcom/bbm/ui/c/ew;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ej;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->d:Lcom/bbm/ui/c/ej;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ev;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->t:Lcom/bbm/ui/c/ev;

    return-object v0
.end method

.method static synthetic f()Ljava/lang/Boolean;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/OwnProfileActivity;->g:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/OwnProfileActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->l()V

    return-void
.end method

.method static synthetic h(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->m:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/OwnProfileActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->k()V

    return-void
.end method

.method static synthetic j(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/FooterActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->b:Lcom/bbm/ui/FooterActionBar;

    return-object v0
.end method

.method private k()V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->l()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->finish()V

    return-void
.end method

.method static synthetic k(Lcom/bbm/ui/activities/OwnProfileActivity;)V
    .registers 3

    const/4 v1, 0x0

    sget-object v0, Lcom/bbm/ui/activities/OwnProfileActivity;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_21

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/OwnProfileActivity;->g:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->requestLayout()V

    iput-boolean v1, p0, Lcom/bbm/ui/activities/ev;->y:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->i:Lcom/bbm/ui/EmoticonPicker;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_21
    return-void
.end method

.method private l()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->d:Lcom/bbm/ui/c/ej;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->d:Lcom/bbm/ui/c/ej;

    iget-object v0, v0, Lcom/bbm/ui/c/ej;->c:Lcom/bbm/ui/c/eu;

    invoke-interface {v0}, Lcom/bbm/ui/c/eu;->a()V

    :cond_b
    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_62

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/c/c;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_69

    invoke-static {p0}, Lcom/bbm/util/c/c;->a(Landroid/content/Context;)Lcom/bbm/util/c/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/util/c/c;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :goto_3c
    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getError()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_62

    if-eqz v1, :cond_62

    invoke-direct {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->m()Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_63

    :cond_62
    :goto_62
    return-void

    :cond_63
    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->m:Lcom/bbm/d/a;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Ljava/lang/String;)V

    goto :goto_62

    :cond_69
    move-object v1, v0

    goto :goto_3c
.end method

.method private m()Lcom/bbm/d/gp;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->m:Lcom/bbm/d/a;

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->m:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected final b()V
    .registers 5

    const/16 v1, 0x8

    sget-object v0, Lcom/bbm/ui/activities/OwnProfileActivity;->g:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/OwnProfileActivity;->g:Ljava/lang/Boolean;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/ev;->y:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->i:Lcom/bbm/ui/EmoticonPicker;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->j:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->k:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/ui/activities/aap;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aap;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2a
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ev;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_11

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lcom/bbm/h/aq;->b(Landroid/content/Intent;Landroid/app/Activity;)V

    :cond_11
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 7

    const v1, 0x7f0a00fc

    const/4 v4, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->m:Lcom/bbm/d/a;

    const v0, 0x7f030040

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->setContentView(I)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->a:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->a:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/aau;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aau;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->j:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->o:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/aav;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aav;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->p:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->p:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/ui/activities/aaw;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aaw;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->j:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/aah;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aah;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->q:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->q:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/ui/activities/aai;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aai;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020366

    const v3, 0x7f0e06a0

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v4}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->v:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->c:Landroid/widget/ImageView;

    const v0, 0x7f0a0240

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SegmentedControl;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->n:Lcom/bbm/ui/SegmentedControl;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->n:Lcom/bbm/ui/SegmentedControl;

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->u:Lcom/bbm/ui/fs;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/SegmentedControl;->setOnOptionSelectedListener(Lcom/bbm/ui/fs;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const v1, 0x7f03010d

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0542

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->h:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-direct {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->m()Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->s:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    new-instance v1, Lcom/bbm/ui/activities/aaj;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/aaj;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;Landroid/widget/EditText;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    const/16 v1, 0x40

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    :cond_128
    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayShowHomeEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->a:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->l:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/aak;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aak;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/bbm/ui/c/ej;

    invoke-direct {v1}, Lcom/bbm/ui/c/ej;-><init>()V

    iput-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->d:Lcom/bbm/ui/c/ej;

    iget-object v1, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->d:Lcom/bbm/ui/c/ej;

    iget-object v2, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->t:Lcom/bbm/ui/c/ev;

    iput-object v2, v1, Lcom/bbm/ui/c/ej;->b:Lcom/bbm/ui/c/ev;

    const v1, 0x7f0a0242

    iget-object v2, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->d:Lcom/bbm/ui/c/ej;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0541

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingAvatarImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->r:Lcom/bbm/ui/ObservingAvatarImageView;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->r:Lcom/bbm/ui/ObservingAvatarImageView;

    new-instance v1, Lcom/bbm/ui/activities/aal;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aal;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingAvatarImageView;->setObservableUser(Lcom/bbm/j/r;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->r:Lcom/bbm/ui/ObservingAvatarImageView;

    new-instance v1, Lcom/bbm/ui/activities/aam;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aam;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingAvatarImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/EmoticonPicker;

    iput-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->i:Lcom/bbm/ui/EmoticonPicker;

    iget-object v0, p0, Lcom/bbm/ui/activities/OwnProfileActivity;->i:Lcom/bbm/ui/EmoticonPicker;

    new-instance v1, Lcom/bbm/ui/activities/aan;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aan;-><init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setEmoticonPickerListener(Lcom/bbm/ui/br;)V

    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .registers 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    invoke-direct {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->k()V

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method protected onPause()V
    .registers 4

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V

    const-string v0, "input_method"

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->isActive()Z

    move-result v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_25

    invoke-virtual {p0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_25
    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V

    return-void
.end method
