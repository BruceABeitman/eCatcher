.class public Lcom/bbm/ui/c/at;
.super Landroid/app/Fragment;
.source "ChatsFragment.java"

# interfaces
.implements Lcom/bbm/ui/ds;


# static fields
.field private static f:I


# instance fields
.field private A:Landroid/widget/ImageView;

.field private B:Landroid/view/View;

.field private C:Landroid/view/View;

.field private D:Landroid/widget/TextView;

.field private final E:Lcom/bbm/ui/dt;

.field private final F:Lcom/bbm/j/k;

.field private final G:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Lcom/bbm/j/k;

.field private final I:Lcom/bbm/j/k;

.field private J:Lcom/bbm/j/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/a",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final K:Lcom/bbm/ui/ef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/ef",
            "<",
            "Lcom/bbm/ui/activities/eu;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private L:Lcom/bbm/ui/ct;

.field public a:Landroid/widget/ListView;

.field public b:Lcom/bbm/ui/dn;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/dn",
            "<",
            "Lcom/bbm/ui/activities/eu;",
            ">;"
        }
    .end annotation
.end field

.field public c:Lcom/bbm/ui/activities/eu;

.field public d:Lcom/bbm/d/gl;

.field e:Lcom/bbm/j/k;

.field private g:Landroid/graphics/drawable/Drawable;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/graphics/drawable/Drawable;

.field private o:Landroid/graphics/drawable/Drawable;

.field private p:Landroid/graphics/drawable/Drawable;

.field private q:Landroid/graphics/drawable/Drawable;

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/graphics/drawable/Drawable;

.field private t:Landroid/graphics/drawable/Drawable;

.field private u:Landroid/graphics/drawable/Drawable;

.field private v:Landroid/view/View;

.field private w:Landroid/widget/ExpandableListView;

.field private x:Landroid/content/Context;

.field private y:Lcom/bbm/ui/e/cd;

.field private z:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput v0, Lcom/bbm/ui/c/at;->f:I

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->c:Lcom/bbm/ui/activities/eu;

    iput-object v0, p0, Lcom/bbm/ui/c/at;->d:Lcom/bbm/d/gl;

    new-instance v0, Lcom/bbm/ui/c/au;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/au;-><init>(Lcom/bbm/ui/c/at;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->E:Lcom/bbm/ui/dt;

    new-instance v0, Lcom/bbm/ui/c/bc;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bc;-><init>(Lcom/bbm/ui/c/at;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->F:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/bd;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bd;-><init>(Lcom/bbm/ui/c/at;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->G:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/ui/c/be;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/be;-><init>(Lcom/bbm/ui/c/at;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->H:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/bf;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bf;-><init>(Lcom/bbm/ui/c/at;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->I:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/bi;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bi;-><init>(Lcom/bbm/ui/c/at;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->J:Lcom/bbm/j/a;

    new-instance v0, Lcom/bbm/ui/c/bj;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bj;-><init>(Lcom/bbm/ui/c/at;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->e:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/c/bk;

    invoke-direct {p0}, Lcom/bbm/ui/c/at;->b()Lcom/bbm/j/r;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/c/bk;-><init>(Lcom/bbm/ui/c/at;Lcom/bbm/j/r;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->K:Lcom/bbm/ui/ef;

    return-void
.end method

.method static synthetic A(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->q:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/c/at;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->B:Landroid/view/View;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/c/at;Lcom/bbm/d/gl;)Lcom/bbm/d/gl;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/at;->d:Lcom/bbm/d/gl;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/c/at;Z)V
    .registers 6

    const v3, 0x7f0b003c

    if-eqz p1, :cond_37

    iget-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c0023

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    invoke-virtual {v2}, Landroid/widget/ExpandableListView;->getCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v2, v1, :cond_33

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    mul-int/2addr v1, v2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    :goto_2d
    iget-object v1, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_32
    return-void

    :cond_33
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_2d

    :cond_37
    iget-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    invoke-virtual {v0}, Landroid/widget/ExpandableListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v1, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    invoke-virtual {v1, v0}, Landroid/widget/ExpandableListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_32
.end method

.method static synthetic a(Ljava/util/List;)V
    .registers 8

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/eu;

    iget-object v2, v0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_4b

    const/4 v2, 0x1

    :try_start_19
    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4}, Lorg/json/JSONObject;-><init>()V

    const-string v5, "conversationUri"

    iget-object v6, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v6, v6, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v2}, Lcom/google/b/c/p;->a([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v3

    const-string v4, "conversation"

    invoke-static {v2, v4}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, v0, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v0, v0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/a/j;->a(Ljava/lang/String;)V
    :try_end_45
    .catch Lorg/json/JSONException; {:try_start_19 .. :try_end_45} :catch_46

    goto :goto_4

    :catch_46
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_4b
    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v2

    iget-object v0, v0, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;

    iget-object v0, v0, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/g/an;->b(Ljava/lang/String;)Lcom/bbm/g/be;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_4

    :cond_5b
    return-void
.end method

.method static synthetic b(Lcom/bbm/ui/c/at;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->x:Landroid/content/Context;

    return-object v0
.end method

.method private b()Lcom/bbm/j/r;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/activities/eu;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Lcom/bbm/ui/c/bg;

    invoke-direct {v0, p0}, Lcom/bbm/ui/c/bg;-><init>(Lcom/bbm/ui/c/at;)V

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/c/at;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->G:Lcom/bbm/j/a;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/c/at;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->D:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/c/at;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->C:Landroid/view/View;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/c/at;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->v:Landroid/view/View;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/c/at;)Lcom/bbm/ui/e/cd;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->y:Lcom/bbm/ui/e/cd;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/c/at;)Landroid/widget/ExpandableListView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/c/at;)Lcom/bbm/j/r;
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/c/at;->b()Lcom/bbm/j/r;

    move-result-object v0

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/c/at;)Lcom/bbm/j/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->J:Lcom/bbm/j/a;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/c/at;)Landroid/view/View;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->z:Landroid/view/View;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/c/at;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->A:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic o(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic p(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->t:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic q(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->h:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic r(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->s:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic s(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->g:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic t(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->i:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic u(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->u:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic v(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->l:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic w(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic x(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic y(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->n:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic z(Lcom/bbm/ui/c/at;)Landroid/graphics/drawable/Drawable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/c/at;->o:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/c/at;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->a()Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/bbm/util/d/a;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/eu;

    iget-object v0, v0, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    new-instance v4, Lcom/bbm/ui/c/bb;

    invoke-direct {v4, p0, v1}, Lcom/bbm/ui/c/bb;-><init>(Lcom/bbm/ui/c/at;Ljava/util/List;)V

    invoke-direct {v2, v3, v0, v4}, Lcom/bbm/util/d/a;-><init>(Landroid/content/Context;ZLcom/bbm/util/d/c;)V

    invoke-virtual {v2}, Lcom/bbm/util/d/a;->c()V

    return-void
.end method

.method public final synthetic a(Ljava/lang/Object;)V
    .registers 5

    check-cast p1, Lcom/bbm/ui/activities/eu;

    if-eqz p1, :cond_43

    iget-object v0, p1, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_44

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/Alaska;->d:Lcom/bbm/t;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/bbm/t;->b:J

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/ConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "conversation_uri"

    iget-object v2, p1, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;

    iget-object v2, v2, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Conversation"

    :goto_2e
    invoke-virtual {p0, v0}, Lcom/bbm/ui/c/at;->startActivity(Landroid/content/Intent;)V

    const-string v0, "open"

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f040001

    const v2, 0x7f040004

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_43
    return-void

    :cond_44
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcom/bbm/ui/activities/GroupConversationActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "groupConversationUri"

    iget-object v2, p1, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;

    iget-object v2, v2, Lcom/bbm/g/q;->k:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "groupUri"

    iget-object v2, p1, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;

    iget-object v2, v2, Lcom/bbm/g/q;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "GroupConversation"

    goto :goto_2e
.end method

.method public final a(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_20

    const/4 v0, 0x0

    :goto_8
    return v0

    :pswitch_9
    iget-object v0, p0, Lcom/bbm/ui/c/at;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->a()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->b()V

    :cond_1d
    const/4 v0, 0x1

    goto :goto_8

    nop

    :pswitch_data_20
    .packed-switch 0x7f0a0670
        :pswitch_9
    .end packed-switch
.end method

.method public final synthetic b(Ljava/lang/Object;)Z
    .registers 4

    check-cast p1, Lcom/bbm/ui/activities/eu;

    if-eqz p1, :cond_15

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    iput-object p1, p0, Lcom/bbm/ui/c/at;->c:Lcom/bbm/ui/activities/eu;

    const v1, 0x7f0a007b

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->c(I)V

    invoke-virtual {v0}, Lcom/bbm/ui/activities/MainActivity;->o()V

    :cond_15
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 9

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->x:Landroid/content/Context;

    const v0, 0x7f030086

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v0, "onCreateView"

    const-class v2, Lcom/bbm/ui/c/at;

    invoke-static {v0, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    const v0, 0x7f0a00f4

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->z:Landroid/view/View;

    const v0, 0x7f0a0384

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/c/at;->A:Landroid/widget/ImageView;

    const v0, 0x7f0a0385

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;

    const v0, 0x7f0a0382

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->v:Landroid/view/View;

    const v0, 0x7f0a0383

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    const v0, 0x7f0a037e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->B:Landroid/view/View;

    const v0, 0x7f0a037f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->C:Landroid/view/View;

    const v0, 0x7f0a0381

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/c/at;->D:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/c/at;->C:Landroid/view/View;

    new-instance v2, Lcom/bbm/ui/c/av;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/av;-><init>(Lcom/bbm/ui/c/at;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbm/ui/ct;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/c/at;->K:Lcom/bbm/ui/ef;

    invoke-direct {v0, v2, v3}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->L:Lcom/bbm/ui/ct;

    iget-object v0, p0, Lcom/bbm/ui/c/at;->L:Lcom/bbm/ui/ct;

    const/4 v2, 0x3

    iput v2, v0, Lcom/bbm/ui/ct;->h:I

    iget-object v0, p0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;

    new-instance v2, Landroid/view/View;

    iget-object v3, p0, Lcom/bbm/ui/c/at;->x:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/bbm/ui/c/at;->L:Lcom/bbm/ui/ct;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Lcom/bbm/ui/e/cd;

    invoke-direct {v0}, Lcom/bbm/ui/e/cd;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->y:Lcom/bbm/ui/e/cd;

    iget-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    iget-object v2, p0, Lcom/bbm/ui/c/at;->y:Lcom/bbm/ui/e/cd;

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/bbm/ui/c/aw;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/aw;-><init>(Lcom/bbm/ui/c/at;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupExpandListener(Landroid/widget/ExpandableListView$OnGroupExpandListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/bbm/ui/c/ax;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/ax;-><init>(Lcom/bbm/ui/c/at;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnGroupCollapseListener(Landroid/widget/ExpandableListView$OnGroupCollapseListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/bbm/ui/c/ay;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/ay;-><init>(Lcom/bbm/ui/c/at;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->w:Landroid/widget/ExpandableListView;

    new-instance v2, Lcom/bbm/ui/c/az;

    invoke-direct {v2, p0}, Lcom/bbm/ui/c/az;-><init>(Lcom/bbm/ui/c/at;)V

    invoke-virtual {v0, v2}, Landroid/widget/ExpandableListView;->setOnChildClickListener(Landroid/widget/ExpandableListView$OnChildClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020233

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020230

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->h:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02022a

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->i:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02022e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->j:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02022c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->k:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020232

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020229

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02022b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->n:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020228

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->o:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f02022f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->p:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020225

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0201fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->q:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020226

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->t:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020227

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->s:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/bbm/ui/c/at;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f020231

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/c/at;->u:Landroid/graphics/drawable/Drawable;

    new-instance v0, Lcom/bbm/ui/dn;

    const v2, 0x7f100007

    iget-object v3, p0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;

    iget-object v4, p0, Lcom/bbm/ui/c/at;->E:Lcom/bbm/ui/dt;

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/bbm/ui/dn;-><init>(Lcom/bbm/ui/ds;ILandroid/widget/AbsListView;Lcom/bbm/ui/dt;)V

    iput-object v0, p0, Lcom/bbm/ui/c/at;->b:Lcom/bbm/ui/dn;

    iget-object v0, p0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;

    sget v2, Lcom/bbm/ui/c/at;->f:I

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setSelection(I)V

    return-object v1
.end method

.method public onDestroy()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/at;->K:Lcom/bbm/ui/ef;

    invoke-virtual {v0}, Lcom/bbm/ui/ef;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->F:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->H:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->removeAllViewsInLayout()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->clearFocus()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->L:Lcom/bbm/ui/ct;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bbm/ui/c/at;->L:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V

    iput-object v1, p0, Lcom/bbm/ui/c/at;->L:Lcom/bbm/ui/ct;

    :cond_25
    iget-object v0, p0, Lcom/bbm/ui/c/at;->C:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDetach()V
    .registers 3

    const-string v0, "onDetatch"

    const-class v1, Lcom/bbm/ui/c/at;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    sput v0, Lcom/bbm/ui/c/at;->f:I

    iget-object v0, p0, Lcom/bbm/ui/c/at;->b:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->b()V

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/at;->L:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->H:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->F:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->I:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    const-string v0, "onPause"

    const-class v1, Lcom/bbm/ui/c/at;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->g:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->d(Lcom/bbm/c/n;)V

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 5

    const/4 v3, 0x0

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    const-string v0, "onResume"

    const-class v1, Lcom/bbm/ui/c/at;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->g:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->b(Lcom/bbm/c/n;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    const-string v1, "hasNewMessage"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    const-string v1, "hasNewSystemMessage"

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/Boolean;)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    new-instance v1, Lcom/bbm/g/as;

    invoke-direct {v1}, Lcom/bbm/g/as;-><init>()V

    invoke-virtual {v1}, Lcom/bbm/g/as;->a()Lcom/bbm/g/as;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->L:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->H:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->F:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->I:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/c/at;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
