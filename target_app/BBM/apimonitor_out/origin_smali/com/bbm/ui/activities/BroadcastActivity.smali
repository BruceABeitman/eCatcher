.class public Lcom/bbm/ui/activities/BroadcastActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "BroadcastActivity.java"


# instance fields
.field private final A:Landroid/view/View$OnClickListener;

.field private final B:Landroid/widget/AdapterView$OnItemClickListener;

.field private final C:Landroid/widget/AdapterView$OnItemClickListener;

.field private final E:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final F:Landroid/text/TextWatcher;

.field private final G:Landroid/text/TextWatcher;

.field private final H:Landroid/view/View$OnFocusChangeListener;

.field private final I:Landroid/view/View$OnFocusChangeListener;

.field final a:Lcom/bbm/util/cs;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cs",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected b:Lcom/bbm/d/a;

.field c:Lcom/bbm/j/k;

.field protected d:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Lcom/bbm/j/k;

.field private f:Lcom/bbm/d/b/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/b/m",
            "<",
            "Lcom/bbm/d/er;",
            ">;"
        }
    .end annotation
.end field

.field private g:Lcom/bbm/ui/CustomGridView;

.field private h:Lcom/bbm/ui/activities/ay;

.field private i:Lcom/bbm/ui/CustomListView;

.field private j:Lcom/bbm/ui/activities/aw;

.field private k:Landroid/widget/EditText;

.field private l:Landroid/widget/EditText;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/view/ViewGroup;

.field private o:Landroid/widget/LinearLayout;

.field private p:Lcom/bbm/ui/HeaderButtonActionBar;

.field private final q:Lcom/bbm/util/cr;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcom/bbm/ui/EmoticonPicker;

.field private final s:Landroid/graphics/Paint;

.field private final t:Landroid/os/Handler;

.field private u:Z

.field private v:Landroid/widget/LinearLayout;

.field private w:Landroid/widget/LinearLayout;

.field private x:Landroid/widget/ImageButton;

.field private y:Landroid/widget/ImageButton;

.field private final z:Landroid/view/View$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    new-instance v0, Lcom/bbm/util/cs;

    invoke-direct {v0}, Lcom/bbm/util/cs;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->a:Lcom/bbm/util/cs;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->q:Lcom/bbm/util/cr;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->s:Landroid/graphics/Paint;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->t:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->u:Z

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->b:Lcom/bbm/d/a;

    new-instance v0, Lcom/bbm/ui/activities/ad;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ad;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->z:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/bbm/ui/activities/ao;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ao;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->A:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/activities/ap;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ap;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->B:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/bbm/ui/activities/aq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aq;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->C:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->E:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/ui/activities/ar;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ar;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->F:Landroid/text/TextWatcher;

    new-instance v0, Lcom/bbm/ui/activities/as;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/as;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->c:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/util/cr;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->d:Lcom/bbm/util/cr;

    new-instance v0, Lcom/bbm/ui/activities/at;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/at;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->e:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/au;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/au;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->G:Landroid/text/TextWatcher;

    new-instance v0, Lcom/bbm/ui/activities/av;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/av;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->H:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/bbm/ui/activities/ae;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ae;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->I:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->a(Lcom/bbm/ui/activities/aka;)V

    new-instance v0, Lcom/bbm/ui/voice/o;

    invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->l:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/BroadcastActivity;Z)V
    .registers 6

    if-eqz p1, :cond_12

    invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->t:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/ui/activities/am;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/am;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_11
    return-void

    :cond_12
    invoke-direct {p0}, Lcom/bbm/ui/activities/BroadcastActivity;->b()V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->w:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {p0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;)V

    goto :goto_11
.end method

.method static synthetic b(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/activities/ay;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->h:Lcom/bbm/ui/activities/ay;

    return-object v0
.end method

.method private b()V
    .registers 5

    const/16 v1, 0x8

    iget-boolean v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->u:Z

    if-eqz v0, :cond_1f

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->u:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->r:Lcom/bbm/ui/EmoticonPicker;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->t:Landroid/os/Handler;

    new-instance v1, Lcom/bbm/ui/activities/an;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/an;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1f
    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->q:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/activities/aw;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->j:Lcom/bbm/ui/activities/aw;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->k:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cr;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->E:Lcom/bbm/util/cr;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/d/b/m;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->f:Lcom/bbm/d/b/m;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/CustomListView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->i:Lcom/bbm/ui/CustomListView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/util/cs;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->a:Lcom/bbm/util/cs;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/BroadcastActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->p:Lcom/bbm/ui/HeaderButtonActionBar;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->m:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/BroadcastActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/BroadcastActivity;->b()V

    return-void
.end method

.method static synthetic m(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->w:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/activities/BroadcastActivity;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->u:Z

    return v0
.end method

.method static synthetic o(Lcom/bbm/ui/activities/BroadcastActivity;)V
    .registers 3

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->u:Z

    if-nez v0, :cond_1e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->u:Z

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->r:Lcom/bbm/ui/EmoticonPicker;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->v:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->n:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->requestLayout()V

    :cond_1e
    return-void
.end method

.method static synthetic p(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/view/ViewGroup;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->n:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic q(Lcom/bbm/ui/activities/BroadcastActivity;)Landroid/graphics/Paint;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->s:Landroid/graphics/Paint;

    return-object v0
.end method


# virtual methods
.method protected final a()Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->a:Lcom/bbm/util/cs;

    invoke-virtual {v0}, Lcom/bbm/util/cs;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1f
    return-object v1
.end method

.method protected final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->a:Lcom/bbm/util/cs;

    invoke-virtual {v0, p1}, Lcom/bbm/util/cs;->a(Ljava/lang/Object;)V

    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ajy;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, -0x1

    if-ne p2, v0, :cond_27

    if-nez p1, :cond_27

    const-string v0, "com.bbm.selectedcontacts"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_22

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->a(Ljava/lang/String;)V

    goto :goto_12

    :cond_22
    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->h:Lcom/bbm/ui/activities/ay;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/ay;->notifyDataSetChanged()V

    :cond_27
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, -0x1

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030052

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/BroadcastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0140

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/BroadcastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/BroadcastActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e04ae

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->p:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->p:Lcom/bbm/ui/HeaderButtonActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->p:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->p:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/BroadcastActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->p:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v0, Lcom/bbm/ui/activities/ay;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->a:Lcom/bbm/util/cs;

    invoke-direct {v0, p0, v1, p0}, Lcom/bbm/ui/activities/ay;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;Lcom/bbm/j/r;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->h:Lcom/bbm/ui/activities/ay;

    const v0, 0x7f0a02ac

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/CustomGridView;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->g:Lcom/bbm/ui/CustomGridView;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->g:Lcom/bbm/ui/CustomGridView;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->h:Lcom/bbm/ui/activities/ay;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/CustomGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->g:Lcom/bbm/ui/CustomGridView;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->B:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/CustomGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a02a8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->n:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->n:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->z:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a02b3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->l:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->G:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->l:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->I:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->l:Landroid/widget/EditText;

    new-instance v1, Lcom/bbm/ui/activities/af;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/af;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->l:Landroid/widget/EditText;

    const/16 v1, 0x7d0

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    const v0, 0x7f0a02ae

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->k:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->F:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->k:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->H:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    const v0, 0x7f0a02aa

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->m:Landroid/widget/TextView;

    const v0, 0x7f0a02af

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->o:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->o:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->A:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbm/ui/activities/ag;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->b:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->M()Lcom/bbm/j/w;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/ag;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;Lcom/bbm/j/r;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->f:Lcom/bbm/d/b/m;

    new-instance v0, Lcom/bbm/ui/activities/aw;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->f:Lcom/bbm/d/b/m;

    invoke-direct {v0, p0, v1, p0}, Lcom/bbm/ui/activities/aw;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;Lcom/bbm/j/r;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->j:Lcom/bbm/ui/activities/aw;

    const v0, 0x7f0a02b1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/CustomListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->i:Lcom/bbm/ui/CustomListView;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->i:Lcom/bbm/ui/CustomListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->j:Lcom/bbm/ui/activities/aw;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/CustomListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->i:Lcom/bbm/ui/CustomListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/BroadcastActivity;->C:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/CustomListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a02b5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->v:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02b8

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->w:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->w:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const v0, 0x7f0a02b7

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/EmoticonPicker;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->r:Lcom/bbm/ui/EmoticonPicker;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->r:Lcom/bbm/ui/EmoticonPicker;

    new-instance v1, Lcom/bbm/ui/activities/ah;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ah;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/EmoticonPicker;->setEmoticonPickerListener(Lcom/bbm/ui/br;)V

    const v0, 0x7f0a02b9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->x:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->x:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/ui/activities/ai;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ai;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->v:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/aj;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aj;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->w:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/bbm/ui/activities/ak;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ak;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02b6

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/BroadcastActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->y:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->y:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/ui/activities/al;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/al;-><init>(Lcom/bbm/ui/activities/BroadcastActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->k:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    invoke-static {p0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/BroadcastActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
