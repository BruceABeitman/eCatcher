.class public Lcom/bbm/ui/c/bm;
.super Landroid/app/Fragment;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/bbm/ui/ds;
.implements Lcom/bbm/ui/fq;


# static fields
.field private static f:I


# instance fields
.field private A:Lcom/bbm/ui/gk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/gk",
            "<",
            "Lcom/bbm/d/gp;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/graphics/drawable/Drawable;

.field private C:Z

.field private final D:Lcom/bbm/j/k;

.field private final E:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private F:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ea;",
            ">;"
        }
    .end annotation
.end field

.field private G:Lcom/bbm/d/b/q;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/b/q",
            "<",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/d/gp;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field public a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

.field public b:Lcom/bbm/ui/dn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/dn",
            "<",
            "Lcom/bbm/d/gp;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Z

.field d:Lcom/bbm/ui/cx;

.field e:Lcom/bbm/j/u;

.field private g:J

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private final n:Lcom/bbm/d/a;

.field private o:Landroid/content/Context;

.field private p:Landroid/view/View;

.field private q:Landroid/view/View;

.field private r:Landroid/view/View;

.field private s:Landroid/view/View;

.field private t:Lcom/bbm/ui/SearchEditText;

.field private u:Landroid/content/SharedPreferences;

.field private v:Lcom/bbm/ui/c/cc;

.field private final w:Lcom/bbm/ui/dt;

.field private final x:Landroid/view/View$OnTouchListener;

.field private final y:Lcom/bbm/d/b/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/d/b/n",
            "<",
            "Lcom/bbm/d/gp;",
            ">;"
        }
    .end annotation
.end field

.field private final z:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/bbm/ui/c/bm;->f:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bbm/ui/c/bm;->g:J

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->n:Lcom/bbm/d/a;

    sget-object v0, Lcom/bbm/ui/c/cc;->d:Lcom/bbm/ui/c/cc;

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->v:Lcom/bbm/ui/c/cc;

    new-instance v0, Lcom/bbm/ui/c/bn;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bn;-><init>(Lcom/bbm/ui/c/bm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->w:Lcom/bbm/ui/dt;

    new-instance v0, Lcom/bbm/ui/c/bu;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bu;-><init>(Lcom/bbm/ui/c/bm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->x:Landroid/view/View$OnTouchListener;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/c/bm;->c:Z

    new-instance v0, Lcom/bbm/ui/c/bv;

    iget-object v1, p0, Lcom/bbm/ui/c/bm;->n:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->o()Lcom/bbm/j/r;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/c/bv;-><init>(Lcom/bbm/ui/c/bm;Lcom/bbm/j/r;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->y:Lcom/bbm/d/b/n;

    new-instance v0, Lcom/bbm/ui/c/bw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bw;-><init>(Lcom/bbm/ui/c/bm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->z:Landroid/content/DialogInterface$OnDismissListener;

    new-instance v0, Lcom/bbm/ui/c/bx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bx;-><init>(Lcom/bbm/ui/c/bm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->d:Lcom/bbm/ui/cx;

    new-instance v0, Lcom/bbm/ui/c/by;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/by;-><init>(Lcom/bbm/ui/c/bm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->e:Lcom/bbm/j/u;

    new-instance v0, Lcom/bbm/ui/c/bp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bp;-><init>(Lcom/bbm/ui/c/bm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->D:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/bq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bq;-><init>(Lcom/bbm/ui/c/bm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->E:Lcom/bbm/j/a;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/c/bm;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bbm/ui/c/bm;->g:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/bm;)Lcom/bbm/ui/dn;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;

    return-object v0
.end method

.method public static a(Landroid/app/Activity;Lcom/bbm/d/ea;Ljava/util/List;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lcom/bbm/d/ea;",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/eb;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x0

    if-nez p1, :cond_4

    :goto_3
    return-void

    :cond_4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d
    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/eb;

    iget-object v0, v0, Lcom/bbm/d/eb;->a:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_d

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_25
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/bbm/ui/activities/SelectContactActivity;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_37

    const-string v2, "com.bbm.excludedcontacts"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    :cond_37
    const-string v1, "com.bbm.selectedcategoryid"

    iget-wide v2, p1, Lcom/bbm/d/ea;->b:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0653

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p1, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.bbm.additionalmessage"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.bbm.selectall"

    invoke-virtual {v0, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_3
.end method

.method static synthetic b(Lcom/bbm/ui/c/bm;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->o:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/c/bm;)J
    .registers 3

    iget-wide v0, p0, Lcom/bbm/ui/c/bm;->g:J

    return-wide v0
.end method

.method private c()Lcom/bbm/d/b/q;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/d/b/q",
            "<",
            "Lcom/bbm/ui/gp",
            "<",
            "Lcom/bbm/d/gp;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->G:Lcom/bbm/d/b/q;

    if-nez v0, :cond_b

    new-instance v0, Lcom/bbm/ui/c/br;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/br;-><init>(Lcom/bbm/ui/c/bm;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->G:Lcom/bbm/d/b/q;

    :cond_b
    iget-object v0, p0, Lcom/bbm/ui/c/bm;->G:Lcom/bbm/d/b/q;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/b/q;
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/c/bm;->c()Lcom/bbm/d/b/q;

    move-result-object v0

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->n:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->B:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/c/bm;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/c/bm;)V
    .registers 6

    const/16 v4, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->y:Lcom/bbm/d/b/n;

    invoke-virtual {v0}, Lcom/bbm/d/b/n;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_2b

    move v0, v1

    :goto_11
    iget-boolean v3, p0, Lcom/bbm/ui/c/bm;->c:Z

    if-eqz v3, :cond_2d

    :goto_15
    if-nez v1, :cond_46

    sget-object v0, Lcom/bbm/ui/c/cc;->a:Lcom/bbm/ui/c/cc;

    :goto_19
    iget-object v1, p0, Lcom/bbm/ui/c/bm;->v:Lcom/bbm/ui/c/cc;

    if-eq v0, v1, :cond_2a

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->v:Lcom/bbm/ui/c/cc;

    sget-object v1, Lcom/bbm/ui/c/bt;->a:[I

    invoke-virtual {v0}, Lcom/bbm/ui/c/cc;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_90

    :cond_2a
    :goto_2a
    return-void

    :cond_2b
    move v0, v2

    goto :goto_11

    :cond_2d
    invoke-direct {p0}, Lcom/bbm/ui/c/bm;->c()Lcom/bbm/d/b/q;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/d/b/q;->b()Z

    move-result v3

    if-eqz v3, :cond_39

    move v1, v2

    goto :goto_15

    :cond_39
    iget-object v3, p0, Lcom/bbm/ui/c/bm;->n:Lcom/bbm/d/a;

    invoke-virtual {v3}, Lcom/bbm/d/a;->n()Z

    move-result v3

    if-eqz v3, :cond_43

    move v1, v2

    goto :goto_15

    :cond_43
    iput-boolean v1, p0, Lcom/bbm/ui/c/bm;->c:Z

    goto :goto_15

    :cond_46
    if-eqz v0, :cond_54

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->t:Lcom/bbm/ui/SearchEditText;

    invoke-virtual {v0}, Lcom/bbm/ui/SearchEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_57

    :cond_54
    sget-object v0, Lcom/bbm/ui/c/cc;->c:Lcom/bbm/ui/c/cc;

    goto :goto_19

    :cond_57
    sget-object v0, Lcom/bbm/ui/c/cc;->b:Lcom/bbm/ui/c/cc;

    goto :goto_19

    :pswitch_5a
    const-string v0, "Contact area: initializing"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    :pswitch_6c
    const-string v0, "Contact area: normal contacts"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->p:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->q:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    :pswitch_7e
    const-string v0, "Contact area: empty"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->p:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->q:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2a

    :pswitch_data_90
    .packed-switch 0x1
        :pswitch_5a
        :pswitch_5a
        :pswitch_6c
        :pswitch_7e
    .end packed-switch
.end method

.method static synthetic n(Lcom/bbm/ui/c/bm;)Lcom/bbm/j/w;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->F:Lcom/bbm/j/w;

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->n:Lcom/bbm/d/a;

    sget-object v1, Lcom/bbm/d/w;->c:Lcom/bbm/d/w;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/w;)Lcom/bbm/j/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->F:Lcom/bbm/j/w;

    :cond_e
    iget-object v0, p0, Lcom/bbm/ui/c/bm;->F:Lcom/bbm/j/w;

    return-object v0
.end method

.method static synthetic o(Lcom/bbm/ui/c/bm;)Lcom/bbm/d/b/n;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->y:Lcom/bbm/d/b/n;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 5

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->b()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1d

    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/bbm/ui/activities/SelectCategoryActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "user_uri_list"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/bbm/ui/c/bm;->startActivity(Landroid/content/Intent;)V

    :cond_1d
    iget-object v0, p0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->b()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 4

    check-cast p1, Lcom/bbm/d/gp;

    const-string v0, "Start Chat onItemClicked"

    const-class v1, Lcom/bbm/ui/c/bm;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public final a(Ljava/lang/String;)V
    .registers 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->y:Lcom/bbm/d/b/n;

    invoke-static {p1}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/b/n;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->y:Lcom/bbm/d/b/n;

    invoke-virtual {v0}, Lcom/bbm/d/b/n;->d()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->r:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v3}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    :goto_1e
    return-void

    :cond_1f
    iget-object v0, p0, Lcom/bbm/ui/c/bm;->r:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVisibility(I)V

    goto :goto_1e
.end method

.method public final a(Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/d/gp;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v6, 0x0

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p1, :cond_5e

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5e

    new-instance v3, Lcom/bbm/ui/b/i;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {v3, v0}, Lcom/bbm/ui/b/i;-><init>(Landroid/content/Context;)V

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v5, :cond_5f

    const v0, 0x7f0e0273

    invoke-virtual {p0, v0}, Lcom/bbm/ui/c/bm;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/Object;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e0272

    invoke-virtual {p0, v1}, Lcom/bbm/ui/c/bm;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_3c
    invoke-virtual {v3, v0}, Lcom/bbm/ui/b/i;->a(Ljava/lang/String;)V

    const v0, 0x7f0e0271

    invoke-virtual {v3, v0}, Lcom/bbm/ui/b/i;->c(I)V

    invoke-virtual {v3, v1}, Lcom/bbm/ui/b/i;->a_(Ljava/lang/String;)V

    const v0, 0x7f0e02ea

    invoke-virtual {v3, v0}, Lcom/bbm/ui/b/i;->a(I)V

    new-instance v0, Lcom/bbm/ui/c/bs;

    invoke-direct {v0, p0, v2, v3}, Lcom/bbm/ui/c/bs;-><init>(Lcom/bbm/ui/c/bm;Ljava/util/List;Lcom/bbm/ui/b/i;)V

    invoke-virtual {v3, v0}, Lcom/bbm/ui/b/i;->a(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->z:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v3, v0}, Lcom/bbm/ui/b/i;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    invoke-virtual {v3}, Lcom/bbm/ui/b/i;->show()V

    :cond_5e
    return-void

    :cond_5f
    const v0, 0x7f0e0274

    invoke-virtual {p0, v0}, Lcom/bbm/ui/c/bm;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v4, v5, [Ljava/lang/Object;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gp;

    iget-object v0, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    aput-object v0, v4, v6

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const v0, 0x7f0e0270

    invoke-virtual {p0, v0}, Lcom/bbm/ui/c/bm;->getString(I)Ljava/lang/String;

    move-result-object v4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gp;

    iget-object v0, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_3c
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 5

    const/4 v0, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    sparse-switch v1, :sswitch_data_24

    const/4 v0, 0x0

    :cond_9
    :goto_9
    return v0

    :sswitch_a
    iget-object v1, p0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v1}, Lcom/bbm/ui/dn;->a()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    invoke-virtual {p0, v1}, Lcom/bbm/ui/c/bm;->a(Ljava/util/List;)V

    iget-object v1, p0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v1}, Lcom/bbm/ui/dn;->b()V

    goto :goto_9

    :sswitch_1f
    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->a()V

    goto :goto_9

    nop

    :sswitch_data_24
    .sparse-switch
        0x7f0a0670 -> :sswitch_a
        0x7f0a0679 -> :sswitch_1f
    .end sparse-switch
.end method

.method public final b()Ljava/util/ArrayList;
    .registers 5
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

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_2d

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    :goto_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gp;

    iget-object v0, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_15

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_15

    :cond_2d
    return-object v1
.end method

.method public final synthetic b(Ljava/lang/Object;)Z
    .registers 12

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v2, 0x0

    check-cast p1, Lcom/bbm/d/gp;

    const-string v0, "onItemLongClick"

    const-class v1, Lcom/bbm/ui/c/bm;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4a

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_3b

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v8}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    :cond_3b
    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    :cond_4a
    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    iget-object v3, v0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;

    new-instance v4, Lcom/bbm/ui/slidingmenu/a;

    const v1, 0x7f020268

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const v5, 0x7f0e0274

    new-array v6, v9, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v0, v5, v6}, Lcom/bbm/ui/activities/MainActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v1, v5, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, p1}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    new-instance v6, Lcom/bbm/ui/slidingmenu/a;

    if-eqz v1, :cond_80

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_80

    move-object v1, v2

    :cond_80
    invoke-direct {v6, v2, v5, v1}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Lcom/bbm/ui/slidingmenu/a;

    const v7, 0x7f020282

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0e027f

    invoke-virtual {v0, v8}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bbm/ui/slidingmenu/a;

    const v7, 0x7f02026e

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0e0275

    invoke-virtual {v0, v8}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bbm/ui/slidingmenu/a;

    const v7, 0x7f02026f

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0e0277

    invoke-virtual {v0, v8}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v5, Lcom/bbm/ui/slidingmenu/a;

    const v7, 0x7f020278

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const v8, 0x7f0e027c

    invoke-virtual {v0, v8}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v7, v8, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3, v1, v6, v4}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V

    new-instance v1, Lcom/bbm/ui/activities/wi;

    invoke-direct {v1, v0}, Lcom/bbm/ui/activities/wi;-><init>(Lcom/bbm/ui/activities/MainActivity;)V

    iput-object v1, v3, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;

    new-instance v1, Lcom/bbm/ui/activities/wj;

    invoke-direct {v1, v0}, Lcom/bbm/ui/activities/wj;-><init>(Lcom/bbm/ui/activities/MainActivity;)V

    invoke-virtual {v3, v1}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V

    return v9
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    const v4, 0x7f0201fa

    const/4 v3, 0x0

    const v0, 0x7f030087

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->o:Landroid/content/Context;

    const-string v0, "onCreateView"

    const-class v2, Lcom/bbm/ui/c/bm;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->o:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->u:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020233

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02022c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020227

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02022e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020225

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b00df

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v2, p0, Lcom/bbm/ui/c/bm;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const v0, 0x7f0a0389

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->p:Landroid/view/View;

    const v0, 0x7f0a0387

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->q:Landroid/view/View;

    const v0, 0x7f0a036b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->r:Landroid/view/View;

    const v0, 0x7f0a0386

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->s:Landroid/view/View;

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->s:Landroid/view/View;

    iget-object v2, p0, Lcom/bbm/ui/c/bm;->x:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a02fd

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/SearchEditText;

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->t:Lcom/bbm/ui/SearchEditText;

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->t:Lcom/bbm/ui/SearchEditText;

    invoke-virtual {v0, p0}, Lcom/bbm/ui/SearchEditText;->setListener(Lcom/bbm/ui/fq;)V

    const v0, 0x7f0a0388

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    new-instance v2, Lcom/bbm/ui/c/cb;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/cb;-><init>(Lcom/bbm/ui/c/bm;)V

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnHeaderLongClickListener(Lcom/tonicartos/widget/stickygridheaders/j;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v2, p0, Lcom/bbm/ui/c/bm;->x:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v0, Lcom/bbm/ui/dn;

    const v2, 0x7f100009

    iget-object v3, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v4, p0, Lcom/bbm/ui/c/bm;->w:Lcom/bbm/ui/dt;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/bbm/ui/dn;-><init>(Lcom/bbm/ui/ds;ILandroid/widget/AbsListView;Lcom/bbm/ui/dt;)V

    iput-object v0, p0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;

    new-instance v2, Lcom/bbm/ui/c/bo;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/bo;-><init>(Lcom/bbm/ui/c/bm;)V

    const v0, 0x7f0a038b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a036e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    sget v2, Lcom/bbm/ui/c/bm;->f:I

    invoke-virtual {v0, v2}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setSelection(I)V

    return-object v1
.end method

.method public onDetach()V
    .registers 3

    const-string v0, "onDetatch"

    const-class v1, Lcom/bbm/ui/c/bm;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/bbm/ui/c/bm;->f:I

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->b()V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 4

    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/bm;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->e()V

    :cond_10
    iget-object v0, p0, Lcom/bbm/ui/c/bm;->o:Landroid/content/Context;

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lcom/bbm/ui/c/bm;->t:Lcom/bbm/ui/SearchEditText;

    invoke-virtual {v1}, Lcom/bbm/ui/SearchEditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->D:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->e:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->e()V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->h:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->d(Lcom/bbm/c/n;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 9

    const v7, 0x7f0b00e0

    const/4 v6, 0x1

    const/4 v5, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/bm;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->h:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->b(Lcom/bbm/c/n;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->E:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->D:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->u:Landroid/content/SharedPreferences;

    const-string v1, "contacts_layout_grid"

    invoke-interface {v0, v1, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    if-eqz v1, :cond_32

    iget-boolean v1, p0, Lcom/bbm/ui/c/bm;->C:Z

    if-eq v0, v1, :cond_ad

    :cond_32
    iput-boolean v0, p0, Lcom/bbm/ui/c/bm;->C:Z

    iget-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    invoke-virtual {v1}, Lcom/bbm/ui/gk;->e()V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    :cond_40
    iget-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    if-nez v1, :cond_59

    iget-boolean v1, p0, Lcom/bbm/ui/c/bm;->C:Z

    if-eqz v1, :cond_b9

    new-instance v1, Lcom/bbm/ui/c/bz;

    iget-object v2, p0, Lcom/bbm/ui/c/bm;->o:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bbm/ui/c/bm;->c()Lcom/bbm/d/b/q;

    move-result-object v3

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bbm/ui/c/bz;-><init>(Lcom/bbm/ui/c/bm;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    iput-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    :cond_59
    :goto_59
    iget-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/bbm/ui/gk;->b(I)V

    if-eqz v0, :cond_cb

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    iget-object v1, p0, Lcom/bbm/ui/c/bm;->d:Lcom/bbm/ui/cx;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/gk;->a(Lcom/bbm/ui/cx;)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    invoke-virtual {v0}, Lcom/bbm/ui/gk;->d()V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0006

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {p0}, Lcom/bbm/ui/c/bm;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setStackFromBottom(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setScrollingCacheEnabled(Z)V

    :goto_a6
    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    iget-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    invoke-virtual {v0, v1}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    :cond_ad
    iget-object v0, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    if-eqz v0, :cond_b8

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    iget-object v0, v0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    :cond_b8
    return-void

    :cond_b9
    new-instance v1, Lcom/bbm/ui/c/ca;

    iget-object v2, p0, Lcom/bbm/ui/c/bm;->o:Landroid/content/Context;

    invoke-direct {p0}, Lcom/bbm/ui/c/bm;->c()Lcom/bbm/d/b/q;

    move-result-object v3

    invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;

    move-result-object v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/bbm/ui/c/ca;-><init>(Lcom/bbm/ui/c/bm;Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V

    iput-object v1, p0, Lcom/bbm/ui/c/bm;->A:Lcom/bbm/ui/gk;

    goto :goto_59

    :cond_cb
    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v6}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setNumColumns(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setHorizontalSpacing(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;

    invoke-virtual {v0, v5}, Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;->setVerticalSpacing(I)V

    goto :goto_a6
.end method
