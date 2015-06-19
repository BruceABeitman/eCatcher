.class public Lcom/bbm/ui/activities/InviteActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "InviteActivity.java"


# static fields
.field private static c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/bbm/ui/activities/fg;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private A:I

.field private B:I

.field private final C:Landroid/graphics/Paint;

.field private E:Ljava/lang/String;

.field private F:Landroid/content/SharedPreferences;

.field private final G:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/gs;",
            ">;"
        }
    .end annotation
.end field

.field private final H:Landroid/view/View$OnTouchListener;

.field private final I:Landroid/text/TextWatcher;

.field private final J:Landroid/widget/TextView$OnEditorActionListener;

.field private final K:Landroid/text/TextWatcher;

.field private final L:Lcom/bbm/j/u;

.field private M:Lcom/bbm/j/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/w",
            "<",
            "Lcom/bbm/d/ea;",
            ">;"
        }
    .end annotation
.end field

.field private final N:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Lcom/bbm/d/ea;",
            ">;"
        }
    .end annotation
.end field

.field private final O:Lcom/bbm/j/k;

.field private final P:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final Q:Lcom/bbm/ui/cj;

.field protected final a:Lcom/bbm/d;

.field final b:Lcom/bbm/d/gp;

.field private d:Landroid/widget/ScrollView;

.field private e:Lcom/bbm/ui/HeaderButtonActionBar;

.field private f:Lcom/bbm/ui/FooterActionBar;

.field private g:Landroid/widget/GridLayout;

.field private h:Lcom/bbm/ui/l;

.field private i:Landroid/widget/Spinner;

.field private j:Lcom/bbm/ui/activities/uz;

.field private k:Landroid/widget/Spinner;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/EditText;

.field private p:Landroid/widget/EditText;

.field private q:Landroid/widget/EditText;

.field private r:Landroid/widget/EditText;

.field private s:Landroid/widget/LinearLayout;

.field private t:Landroid/widget/RelativeLayout;

.field private u:Ljava/lang/Boolean;

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:[Ljava/lang/String;

.field private y:[Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    const-string v0, ""

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->v:Ljava/lang/String;

    iput v1, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    iput v1, p0, Lcom/bbm/ui/activities/InviteActivity;->A:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/bbm/ui/activities/InviteActivity;->B:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->C:Landroid/graphics/Paint;

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->a:Lcom/bbm/d;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->b:Lcom/bbm/d/gp;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->w()Lcom/bbm/j/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->G:Lcom/bbm/j/w;

    new-instance v0, Lcom/bbm/ui/activities/uj;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/uj;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->H:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/bbm/ui/activities/up;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/up;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->I:Landroid/text/TextWatcher;

    new-instance v0, Lcom/bbm/ui/activities/ur;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ur;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->J:Landroid/widget/TextView$OnEditorActionListener;

    new-instance v0, Lcom/bbm/ui/activities/us;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/us;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->K:Landroid/text/TextWatcher;

    new-instance v0, Lcom/bbm/ui/activities/ut;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ut;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->L:Lcom/bbm/j/u;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->N:Ljava/util/Hashtable;

    new-instance v0, Lcom/bbm/ui/activities/uv;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/uv;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->O:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/uw;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/uw;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->P:Landroid/widget/AdapterView$OnItemSelectedListener;

    new-instance v0, Lcom/bbm/ui/activities/uo;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/uo;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->Q:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->a(Lcom/bbm/ui/activities/aka;)V

    new-instance v0, Lcom/bbm/ui/voice/o;

    invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/InviteActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    return p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->l:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a()Ljava/util/ArrayList;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/InviteActivity;->c:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/InviteActivity;Ljava/util/List;)V
    .registers 10

    const-wide/16 v3, -0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    iget-object v1, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/InviteActivity;->N:Ljava/util/Hashtable;

    invoke-virtual {v1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ea;

    if-eqz v0, :cond_22

    iget-wide v3, v0, Lcom/bbm/d/ea;->b:J

    :cond_22
    iget v0, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    if-nez v0, :cond_57

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3e

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/InviteActivity;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->v:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p1}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    :cond_3d
    :goto_3d
    return-void

    :cond_3e
    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/InviteActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lcom/bbm/ui/activities/InviteActivity;->E:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;)V

    goto :goto_3d

    :cond_57
    iget v0, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_ad

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_66
    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3d

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->w:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->v:Ljava/lang/String;

    invoke-virtual {v1, v0, v2, p1}, Lcom/bbm/h/aq;->b(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_92
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/cd;

    invoke-virtual {v0, v6}, Lcom/bbm/g/cd;->c(Ljava/lang/String;)Lcom/bbm/g/cd;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/bbm/g/cd;->d(Ljava/lang/String;)Lcom/bbm/g/cd;

    sget-object v3, Lcom/bbm/h/aq;->b:Lcom/bbm/d;

    iget-object v3, v3, Lcom/bbm/d;->c:Lcom/bbm/g/am;

    invoke-virtual {v3, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_92

    :cond_ad
    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->y:[Ljava/lang/String;

    iget v1, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    aget-object v5, v0, v1

    goto :goto_66

    :cond_b4
    iget-object v0, v1, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    iget-object v1, v1, Lcom/bbm/h/aq;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e047f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    goto/16 :goto_3d

    :cond_c8
    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/InviteActivity;->r:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v7, p0, Lcom/bbm/ui/activities/InviteActivity;->E:Ljava/lang/String;

    move-object v2, p1

    invoke-virtual/range {v0 .. v7}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Ljava/util/List;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3d
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 4

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    sget-object v0, Lcom/bbm/ui/activities/InviteActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/fg;

    iget-object v2, v0, Lcom/bbm/ui/activities/fg;->b:Ljava/lang/String;

    if-eqz v2, :cond_c

    iget-object v0, v0, Lcom/bbm/ui/activities/fg;->b:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    :goto_25
    return v0

    :cond_26
    const/4 v0, 0x0

    goto :goto_25
.end method

.method static synthetic b(Lcom/bbm/ui/activities/InviteActivity;I)I
    .registers 2

    iput p1, p0, Lcom/bbm/ui/activities/InviteActivity;->B:I

    return p1
.end method

.method static synthetic b(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->t:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private b()V
    .registers 13

    const/4 v11, -0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->removeAllViews()V

    sget-object v0, Lcom/bbm/ui/activities/InviteActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_14c

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/fg;

    iget-object v6, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    new-instance v7, Lcom/bbm/ui/activities/vb;

    invoke-direct {v7, p0}, Lcom/bbm/ui/activities/vb;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0300a9

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    invoke-virtual {v1, v3, v4, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    iput-object v8, v7, Lcom/bbm/ui/activities/vb;->a:Landroid/view/View;

    const v1, 0x7f0a040d

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v7, Lcom/bbm/ui/activities/vb;->b:Landroid/widget/ImageView;

    const v1, 0x7f0a040e

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, v7, Lcom/bbm/ui/activities/vb;->c:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a040f

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v7, Lcom/bbm/ui/activities/vb;->d:Landroid/widget/TextView;

    const v1, 0x7f0a0410

    invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v7, Lcom/bbm/ui/activities/vb;->e:Landroid/widget/ImageView;

    invoke-virtual {v8, v7}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, v7, Lcom/bbm/ui/activities/vb;->b:Landroid/widget/ImageView;

    iget v1, v0, Lcom/bbm/ui/activities/fg;->c:I

    if-ne v1, v11, :cond_129

    const v1, 0x7f0203b0

    :goto_67
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v3, v7, Lcom/bbm/ui/activities/vb;->c:Landroid/widget/RelativeLayout;

    iget v1, v0, Lcom/bbm/ui/activities/fg;->c:I

    if-ne v1, v11, :cond_12e

    const v1, 0x7f0203b1

    :goto_73
    invoke-virtual {v3, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, v7, Lcom/bbm/ui/activities/vb;->d:Landroid/widget/TextView;

    iget-object v3, v0, Lcom/bbm/ui/activities/fg;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, v7, Lcom/bbm/ui/activities/vb;->d:Landroid/widget/TextView;

    iget v1, v0, Lcom/bbm/ui/activities/fg;->c:I

    if-ne v1, v11, :cond_133

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0203af

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    :goto_8e
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget v1, p0, Lcom/bbm/ui/activities/InviteActivity;->B:I

    iget-object v3, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ne v1, v3, :cond_140

    const/4 v1, 0x1

    :goto_9c
    invoke-virtual {v8, v1}, Landroid/view/View;->setActivated(Z)V

    iget-object v3, p0, Lcom/bbm/ui/activities/InviteActivity;->C:Landroid/graphics/Paint;

    iget-object v4, v7, Lcom/bbm/ui/activities/vb;->d:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f0b0215

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-static {v3, v4, v9}, Lcom/bbm/util/fb;->a(Landroid/graphics/Paint;Landroid/widget/TextView;I)Z

    move-result v3

    if-eqz v3, :cond_143

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b0212

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    :goto_bf
    iget-object v9, v7, Lcom/bbm/ui/activities/vb;->d:Landroid/widget/TextView;

    if-eqz v1, :cond_146

    move v4, v3

    :goto_c4
    invoke-virtual {v9, v2, v2, v4, v2}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v4, v7, Lcom/bbm/ui/activities/vb;->e:Landroid/widget/ImageView;

    if-eqz v1, :cond_149

    move v1, v2

    :goto_cc
    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v1, v7, Lcom/bbm/ui/activities/vb;->e:Landroid/widget/ImageView;

    new-instance v4, Lcom/bbm/ui/activities/um;

    invoke-direct {v4, p0, v7, v0}, Lcom/bbm/ui/activities/um;-><init>(Lcom/bbm/ui/activities/InviteActivity;Lcom/bbm/ui/activities/vb;Lcom/bbm/ui/activities/fg;)V

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Lcom/bbm/ui/activities/un;

    invoke-direct {v1, p0, v0, v7, v3}, Lcom/bbm/ui/activities/un;-><init>(Lcom/bbm/ui/activities/InviteActivity;ILcom/bbm/ui/activities/vb;I)V

    invoke-virtual {v8, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    int-to-double v3, v0

    iget-object v1, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    invoke-virtual {v1}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v1

    int-to-double v9, v1

    div-double/2addr v3, v9

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v1, v3

    add-int/lit8 v1, v1, -0x1

    iget-object v3, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    invoke-virtual {v3}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v3

    rem-int/2addr v0, v3

    add-int/lit8 v0, v0, -0x1

    if-ne v0, v11, :cond_10c

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    invoke-virtual {v0}, Landroid/widget/GridLayout;->getColumnCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :cond_10c
    new-instance v3, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v3}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    sget-object v4, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v0, v4}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    sget-object v0, Landroid/widget/GridLayout;->CENTER:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v0}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    iput-object v0, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    invoke-virtual {v8, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v6, v8}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto/16 :goto_d

    :cond_129
    const v1, 0x7f0203b4

    goto/16 :goto_67

    :cond_12e
    const v1, 0x7f0203b5

    goto/16 :goto_73

    :cond_133
    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0203b2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    goto/16 :goto_8e

    :cond_140
    move v1, v2

    goto/16 :goto_9c

    :cond_143
    move v3, v2

    goto/16 :goto_bf

    :cond_146
    move v4, v2

    goto/16 :goto_c4

    :cond_149
    const/16 v1, 0x8

    goto :goto_cc

    :cond_14c
    return-void
.end method

.method static synthetic c(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/ScrollView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->d:Landroid/widget/ScrollView;

    return-object v0
.end method

.method private c()V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x1

    iget-object v3, p0, Lcom/bbm/ui/activities/InviteActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    sget-object v2, Lcom/bbm/ui/activities/InviteActivity;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_71

    iget v2, p0, Lcom/bbm/ui/activities/InviteActivity;->A:I

    if-nez v2, :cond_71

    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->F:Landroid/content/SharedPreferences;

    const-string v4, "security_question_invite"

    invoke-interface {v2, v4, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_2c

    move v2, v0

    :goto_1b
    if-eqz v2, :cond_71

    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_53

    move v2, v0

    :goto_26
    if-eqz v2, :cond_71

    :goto_28
    invoke-virtual {v3, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    return-void

    :cond_2c
    iget v2, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    sparse-switch v2, :sswitch_data_74

    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_51

    move v2, v0

    goto :goto_1b

    :sswitch_3b
    move v2, v0

    goto :goto_1b

    :sswitch_3d
    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_4f

    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->length()I

    move-result v2

    if-lez v2, :cond_4f

    move v2, v0

    goto :goto_1b

    :cond_4f
    move v2, v1

    goto :goto_1b

    :cond_51
    move v2, v1

    goto :goto_1b

    :cond_53
    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    invoke-virtual {v2}, Lcom/bbm/ui/l;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    iget v2, v2, Lcom/bbm/ui/l;->a:I

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    invoke-virtual {v4}, Lcom/bbm/ui/l;->getCount()I

    move-result v4

    if-ge v2, v4, :cond_6f

    iget-object v2, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    iget v2, v2, Lcom/bbm/ui/l;->a:I

    if-ltz v2, :cond_6f

    move v2, v0

    goto :goto_26

    :cond_6f
    move v2, v1

    goto :goto_26

    :cond_71
    move v0, v1

    goto :goto_28

    nop

    :sswitch_data_74
    .sparse-switch
        0x0 -> :sswitch_3b
        0x5 -> :sswitch_3d
    .end sparse-switch
.end method

.method static synthetic d(Lcom/bbm/ui/activities/InviteActivity;)I
    .registers 3

    iget v0, p0, Lcom/bbm/ui/activities/InviteActivity;->A:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/bbm/ui/activities/InviteActivity;->A:I

    return v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/InviteActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/InviteActivity;->c()V

    return-void
.end method

.method static synthetic f(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/j/w;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->G:Lcom/bbm/j/w;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/InviteActivity;)Z
    .registers 7

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    iget v0, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3c

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->p:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_12
    iget-object v1, p0, Lcom/bbm/ui/activities/InviteActivity;->q:Landroid/widget/EditText;

    if-nez v1, :cond_43

    const-string v1, ""

    :goto_18
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3b

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v0, v2, :cond_3b

    const v0, 0x7f0e064b

    new-array v1, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-virtual {p0, v0, v1}, Lcom/bbm/ui/activities/InviteActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x10

    move-object v0, p0

    move v4, v3

    invoke-static/range {v0 .. v5}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;IIII)V

    move v5, v3

    :cond_3b
    return v5

    :cond_3c
    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->y:[Ljava/lang/String;

    iget v1, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    aget-object v0, v0, v1

    goto :goto_12

    :cond_43
    iget-object v1, p0, Lcom/bbm/ui/activities/InviteActivity;->q:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_18
.end method

.method static synthetic h(Lcom/bbm/ui/activities/InviteActivity;)Ljava/lang/Boolean;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic i(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/j/w;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->M:Lcom/bbm/j/w;

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->a:Lcom/bbm/d;

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    sget-object v1, Lcom/bbm/d/w;->b:Lcom/bbm/d/w;

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/w;)Lcom/bbm/j/w;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->M:Lcom/bbm/j/w;

    :cond_10
    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->M:Lcom/bbm/j/w;

    return-object v0
.end method

.method static synthetic j(Lcom/bbm/ui/activities/InviteActivity;)Ljava/util/Hashtable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->N:Ljava/util/Hashtable;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/ui/l;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    return-object v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/ui/activities/uz;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->j:Lcom/bbm/ui/activities/uz;

    return-object v0
.end method

.method static synthetic m(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->s:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/activities/InviteActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->y:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic o(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->n:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic p(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->p:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic q(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/j/u;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->L:Lcom/bbm/j/u;

    return-object v0
.end method

.method static synthetic r(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->o:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic s(Lcom/bbm/ui/activities/InviteActivity;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/activities/InviteActivity;->b()V

    return-void
.end method

.method static synthetic t(Lcom/bbm/ui/activities/InviteActivity;)I
    .registers 3

    iget v0, p0, Lcom/bbm/ui/activities/InviteActivity;->A:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/bbm/ui/activities/InviteActivity;->A:I

    return v0
.end method

.method static synthetic u(Lcom/bbm/ui/activities/InviteActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/InviteActivity;->B:I

    return v0
.end method

.method static synthetic v(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/GridLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    return-object v0
.end method

.method static synthetic w(Lcom/bbm/ui/activities/InviteActivity;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->x:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic x(Lcom/bbm/ui/activities/InviteActivity;)I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/activities/InviteActivity;->z:I

    return v0
.end method

.method static synthetic y(Lcom/bbm/ui/activities/InviteActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->v:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic z(Lcom/bbm/ui/activities/InviteActivity;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->w:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .registers 5

    const/4 v0, -0x1

    invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ajy;->onActivityResult(IILandroid/content/Intent;)V

    if-ne p2, v0, :cond_17

    if-nez p1, :cond_17

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    invoke-virtual {v0, p3, p0}, Lcom/bbm/h/aq;->a(Landroid/content/Intent;Landroid/app/Activity;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->finish()V

    :cond_16
    :goto_16
    return-void

    :cond_17
    if-ne p2, v0, :cond_16

    const/4 v0, 0x1

    if-ne p1, v0, :cond_16

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/h/aq;->a(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->finish()V

    goto :goto_16
.end method

.method public onBackPressed()V
    .registers 2

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bbm/ui/activities/InviteActivity;->c:Ljava/util/ArrayList;

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onBackPressed()V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 12

    const v9, 0x7f0a019d

    const/4 v8, -0x1

    const/16 v3, 0x8

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->F:Landroid/content/SharedPreferences;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v4, "group_invite"

    invoke-virtual {v0, v4, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_81

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "group_uri"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->w:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->w:Ljava/lang/String;

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->w:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5d

    move v0, v1

    :goto_54
    const-string v4, "Group InviteActivity invoked without group uri"

    invoke-static {p0, v0, v4}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5f

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    move v0, v2

    goto :goto_54

    :cond_5f
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "InviteActivity: isGroupInvite="

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "group_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->v:Ljava/lang/String;

    :cond_81
    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2dd

    const v0, 0x7f03002b

    :goto_8c
    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0e0480

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0e0173

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0e04ae

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, p0, v4, v5, v6}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v4, Lcom/bbm/ui/activities/ux;

    invoke-direct {v4, p0}, Lcom/bbm/ui/activities/ux;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    invoke-virtual {v0, v4}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v4, Lcom/bbm/ui/activities/uy;

    invoke-direct {v4, p0}, Lcom/bbm/ui/activities/uy;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    invoke-virtual {v0, v4}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v5, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v5, v8, v8}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v4, v5}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v4, 0x10

    invoke-virtual {v0, v4}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2e2

    invoke-virtual {p0, v9}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->m:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->m:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;

    move-result-object v4

    iget-object v5, p0, Lcom/bbm/ui/activities/InviteActivity;->v:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/bbm/h/aq;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_106
    const v0, 0x7f0a019a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->t:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a0616

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->l:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->l:Landroid/widget/TextView;

    new-instance v4, Lcom/bbm/ui/activities/uk;

    invoke-direct {v4, p0}, Lcom/bbm/ui/activities/uk;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0614

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->o:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->o:Landroid/widget/EditText;

    new-instance v4, Lcom/bbm/ui/activities/ul;

    invoke-direct {v4, p0}, Lcom/bbm/ui/activities/ul;-><init>(Lcom/bbm/ui/activities/InviteActivity;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v6}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->o:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->I:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->o:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->J:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_187

    new-instance v0, Lcom/bbm/ui/l;

    const v4, 0x7f0e0481

    invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/InviteActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    const v0, 0x7f0a021e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->i:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->i:Landroid/widget/Spinner;

    new-instance v4, Lcom/bbm/ui/q;

    iget-object v5, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->i:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->h:Lcom/bbm/ui/l;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->i:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->H:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    :cond_187
    const v0, 0x7f0a019f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->k:Landroid/widget/Spinner;

    const v0, 0x7f0a01a0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->s:Landroid/widget/LinearLayout;

    const v0, 0x7f0a01a1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->p:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->p:Landroid/widget/EditText;

    const/16 v4, 0x3f

    invoke-static {v0, v4}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    const v0, 0x7f0a01a3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->q:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->q:Landroid/widget/EditText;

    const/16 v4, 0x20

    invoke-static {v0, v4}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    const v0, 0x7f0a01a2

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->n:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f07000a

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->x:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f070009

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->y:[Ljava/lang/String;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->k:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->F:Landroid/content/SharedPreferences;

    const-string v5, "security_question_invite"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2fb

    move v0, v2

    :goto_1f3
    invoke-virtual {v4, v0}, Landroid/widget/Spinner;->setVisibility(I)V

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->s:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->F:Landroid/content/SharedPreferences;

    const-string v5, "security_question_invite"

    invoke-interface {v0, v5, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2fe

    move v0, v2

    :goto_203
    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->k:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->P:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    new-instance v0, Lcom/bbm/ui/activities/uz;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v0, p0, v4}, Lcom/bbm/ui/activities/uz;-><init>(Lcom/bbm/ui/activities/InviteActivity;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->j:Lcom/bbm/ui/activities/uz;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->k:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->j:Lcom/bbm/ui/activities/uz;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->k:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->H:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v4}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->p:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->K:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->q:Landroid/widget/EditText;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->K:Landroid/text/TextWatcher;

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const v0, 0x7f0a0199

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->d:Landroid/widget/ScrollView;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->d:Landroid/widget/ScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->requestDisallowInterceptTouchEvent(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->d:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->d:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setActivated(Z)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->f:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->f:Lcom/bbm/ui/FooterActionBar;

    new-instance v4, Lcom/bbm/ui/ActionBarItem;

    const v5, 0x7f0202ba

    const v6, 0x7f0e063f

    invoke-direct {v4, p0, v5, v6}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v4, v2}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_28d

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v4, "android.hardware.nfc"

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_28d

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->f:Lcom/bbm/ui/FooterActionBar;

    new-instance v4, Lcom/bbm/ui/ActionBarItem;

    const v5, 0x7f0202c2

    const v6, 0x7f0e06f6

    invoke-direct {v4, p0, v5, v6}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v4, v1}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    :cond_28d
    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->f:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->f:Lcom/bbm/ui/FooterActionBar;

    iget-object v4, p0, Lcom/bbm/ui/activities/InviteActivity;->Q:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v4}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->f:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/bbm/ui/activities/InviteActivity;->c:Ljava/util/ArrayList;

    const v0, 0x7f0a0613

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->g:Landroid/widget/GridLayout;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v3, "extra_user_pin"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5c

    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v4, "extra_display_name"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->E:Ljava/lang/String;

    sget-object v4, Lcom/bbm/ui/activities/InviteActivity;->c:Ljava/util/ArrayList;

    new-instance v5, Lcom/bbm/ui/activities/fg;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->E:Ljava/lang/String;

    if-eqz v0, :cond_301

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->E:Ljava/lang/String;

    :goto_2d2
    invoke-direct {v5, v0, v3, v2}, Lcom/bbm/ui/activities/fg;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/bbm/ui/activities/InviteActivity;->b()V

    goto/16 :goto_5c

    :cond_2dd
    const v0, 0x7f03003a

    goto/16 :goto_8c

    :cond_2e2
    invoke-virtual {p0, v9}, Lcom/bbm/ui/activities/InviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->r:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->r:Landroid/widget/EditText;

    const v4, 0x7f0e04a5

    invoke-virtual {v0, v4}, Landroid/widget/EditText;->setText(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->r:Landroid/widget/EditText;

    const/16 v4, 0x88

    invoke-static {v0, v4}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    goto/16 :goto_106

    :cond_2fb
    move v0, v3

    goto/16 :goto_1f3

    :cond_2fe
    move v0, v3

    goto/16 :goto_203

    :cond_301
    invoke-virtual {p0}, Lcom/bbm/ui/activities/InviteActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0e0487

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2d2
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->O:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    :cond_d
    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->u:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/activities/InviteActivity;->O:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_10
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;Z)V

    const-string v0, "close"

    const-string v1, "Invite"

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/bbm/ui/activities/InviteActivity;->c()V

    return-void
.end method
