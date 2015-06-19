.class public Lcom/bbm/ui/activities/ChangeStatusActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "ChangeStatusActivity.java"


# instance fields
.field private a:Landroid/widget/ListView;

.field private b:Landroid/widget/RelativeLayout;

.field private c:Landroid/widget/RelativeLayout;

.field private d:Landroid/widget/EditText;

.field private e:Landroid/view/ActionMode;

.field private f:Lcom/bbm/ui/activities/by;

.field private g:Lcom/bbm/j/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/j",
            "<",
            "Lcom/bbm/d/ge;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/bbm/ui/FooterActionBar;

.field private final i:Lcom/bbm/d/a;

.field private j:J

.field private k:J

.field private l:J

.field private final m:Landroid/widget/AdapterView$OnItemLongClickListener;

.field private final n:Landroid/view/View$OnClickListener;

.field private final o:Landroid/view/View$OnKeyListener;

.field private final p:Landroid/view/View$OnFocusChangeListener;

.field private final q:Lcom/bbm/ui/cj;

.field private final r:Lcom/bbm/j/k;

.field private final s:Landroid/view/ActionMode$Callback;


# direct methods
.method public constructor <init>()V
    .registers 5

    const-wide/16 v2, -0x1

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->i:Lcom/bbm/d/a;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->j:J

    iput-wide v2, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->k:J

    iput-wide v2, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->l:J

    new-instance v0, Lcom/bbm/ui/activities/bo;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bo;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->m:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Lcom/bbm/ui/activities/bp;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bp;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->n:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/bbm/ui/activities/bq;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bq;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->o:Landroid/view/View$OnKeyListener;

    new-instance v0, Lcom/bbm/ui/activities/br;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/br;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->p:Landroid/view/View$OnFocusChangeListener;

    new-instance v0, Lcom/bbm/ui/activities/bs;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bs;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->q:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/activities/bt;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bt;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->r:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/activities/bx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/bx;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->s:Landroid/view/ActionMode$Callback;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/aka;)V

    new-instance v0, Lcom/bbm/ui/voice/o;

    invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->k:J

    return-wide p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChangeStatusActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->e:Landroid/view/ActionMode;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChangeStatusActivity;Lcom/bbm/j/j;)Lcom/bbm/j/j;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->g:Lcom/bbm/j/j;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/activities/by;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->f:Lcom/bbm/ui/activities/by;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChangeStatusActivity;Lcom/bbm/d/ge;Ljava/lang/String;)V
    .registers 8

    iget-wide v0, p1, Lcom/bbm/d/ge;->a:J

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    invoke-direct {p0, p2}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3c

    new-instance v3, Ljava/util/LinkedList;

    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    :try_start_12
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3c

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_3c

    const-string v4, "id"

    invoke-virtual {v2, v4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "status"

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->i:Lcom/bbm/d/a;

    const-string v1, "status"

    invoke-static {v3, v1}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_3c
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_3c} :catch_42

    :cond_3c
    :goto_3c
    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->f:Lcom/bbm/ui/activities/by;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/by;->notifyDataSetChanged()V

    return-void

    :catch_42
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_3c
.end method

.method private a(Z)V
    .registers 9

    const/16 v6, 0x8

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->d:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_60

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_60

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_60

    iget-wide v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->j:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :try_start_31
    const-string v5, "status"

    invoke-virtual {v3, v5, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "showBusy"

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v3, "id"

    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->i:Lcom/bbm/d/a;

    const-string v1, "status"

    invoke-static {v4, v1}, Lcom/bbm/d/z;->a(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cy;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    if-eqz p1, :cond_5b

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->b:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :cond_5b
    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->f:Lcom/bbm/ui/activities/by;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/by;->notifyDataSetChanged()V
    :try_end_60
    .catch Lorg/json/JSONException; {:try_start_31 .. :try_end_60} :catch_6f

    :cond_60
    :goto_60
    if-eqz p1, :cond_74

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->b:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_67
    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->d:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void

    :catch_6f
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_60

    :cond_74
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->l:J

    goto :goto_67
.end method

.method static synthetic a(Lcom/bbm/ui/activities/ChangeStatusActivity;Ljava/lang/String;)Z
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private a(Ljava/lang/String;)Z
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04db

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e04dc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26

    :cond_24
    move v2, v3

    :cond_25
    :goto_25
    return v2

    :cond_26
    move v1, v2

    :goto_27
    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->f:Lcom/bbm/ui/activities/by;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/by;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_25

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->f:Lcom/bbm/ui/activities/by;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/by;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ge;

    iget-object v0, v0, Lcom/bbm/d/ge;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_41

    move v2, v3

    goto :goto_25

    :cond_41
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_27
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->l:J

    return-wide p1
.end method

.method static synthetic b(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->e:Landroid/view/ActionMode;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ChangeStatusActivity;J)J
    .registers 3

    iput-wide p1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->j:J

    return-wide p1
.end method

.method static synthetic c(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/view/ActionMode$Callback;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->s:Landroid/view/ActionMode$Callback;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->c:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->a:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic g(Lcom/bbm/ui/activities/ChangeStatusActivity;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->b:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic h(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
    .registers 2

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Z)V

    return-void
.end method

.method static synthetic i(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->a(Z)V

    return-void
.end method

.method static synthetic j(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->i:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic k(Lcom/bbm/ui/activities/ChangeStatusActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->j:J

    return-wide v0
.end method

.method static synthetic l(Lcom/bbm/ui/activities/ChangeStatusActivity;)J
    .registers 3

    iget-wide v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->l:J

    return-wide v0
.end method

.method static synthetic m(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/FooterActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->h:Lcom/bbm/ui/FooterActionBar;

    return-object v0
.end method

.method static synthetic n(Lcom/bbm/ui/activities/ChangeStatusActivity;)V
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :try_start_a
    const-string v2, "id"

    iget-wide v3, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->k:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->i:Lcom/bbm/d/a;

    const-string v2, "status"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->f:Lcom/bbm/ui/activities/by;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/by;->notifyDataSetChanged()V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_25} :catch_26

    :goto_25
    return-void

    :catch_26
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_25
.end method

.method static synthetic o(Lcom/bbm/ui/activities/ChangeStatusActivity;)Lcom/bbm/ui/cj;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->q:Lcom/bbm/ui/cj;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f03000b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    const v1, 0x7f0e05e1

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0e0302

    invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/activities/bv;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/bv;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f0a00ef

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->c:Landroid/widget/RelativeLayout;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->n:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a00f0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->b:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a00f2

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->p:Landroid/view/View$OnFocusChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->d:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->o:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->d:Landroid/widget/EditText;

    const/16 v1, 0x100

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    new-instance v0, Lcom/bbm/ui/activities/bw;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->i:Lcom/bbm/d/a;

    invoke-virtual {v1}, Lcom/bbm/d/a;->E()Lcom/bbm/j/w;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/bw;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;Lcom/bbm/j/r;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->g:Lcom/bbm/j/j;

    const v0, 0x7f0a00f3

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->a:Landroid/widget/ListView;

    new-instance v0, Lcom/bbm/ui/activities/by;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->g:Lcom/bbm/j/j;

    invoke-direct {v0, p0, v1, p0}, Lcom/bbm/ui/activities/by;-><init>(Lcom/bbm/ui/activities/ChangeStatusActivity;Lcom/bbm/j/r;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->f:Lcom/bbm/ui/activities/by;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->f:Lcom/bbm/ui/activities/by;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->a:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->m:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->h:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->h:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f0202ac

    const v3, 0x7f0e0100

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->h:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->a:Landroid/widget/ListView;

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ChangeStatusActivity;->registerForContextMenu(Landroid/view/View;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->r:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->r:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    iget-object v0, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->h:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/ChangeStatusActivity;->q:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    return-void
.end method
