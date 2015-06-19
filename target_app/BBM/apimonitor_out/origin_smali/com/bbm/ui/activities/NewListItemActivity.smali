.class public Lcom/bbm/ui/activities/NewListItemActivity;
.super Lcom/bbm/ui/activities/md;
.source "NewListItemActivity.java"


# instance fields
.field private a:Lcom/bbm/ui/FooterActionBar;

.field private b:Landroid/widget/ImageView;

.field protected d:Lcom/bbm/g/am;

.field protected e:Ljava/lang/String;

.field protected f:Lcom/bbm/ui/HeaderButtonActionBar;

.field protected g:Lcom/bbm/ui/InlineImageEditText;

.field protected h:Landroid/widget/Spinner;

.field protected i:Landroid/widget/Spinner;

.field protected j:Landroid/widget/Switch;

.field protected k:Lcom/bbm/ui/DateTimePickerView;

.field protected l:Landroid/widget/Spinner;

.field protected m:J

.field protected n:Lcom/bbm/ui/l;

.field protected o:Lcom/bbm/ui/l;

.field protected p:Lcom/bbm/ui/l;

.field protected final q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected final r:Landroid/view/View$OnTouchListener;

.field private final s:Landroid/text/TextWatcher;

.field private final t:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private final u:Lcom/bbm/ui/ba;

.field private final v:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->q:Ljava/util/HashMap;

    new-instance v0, Lcom/bbm/ui/activities/ze;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ze;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->r:Landroid/view/View$OnTouchListener;

    new-instance v0, Lcom/bbm/ui/activities/zf;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/zf;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->s:Landroid/text/TextWatcher;

    new-instance v0, Lcom/bbm/ui/activities/zg;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/zg;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->t:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    new-instance v0, Lcom/bbm/ui/activities/zh;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/zh;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->u:Lcom/bbm/ui/ba;

    new-instance v0, Lcom/bbm/ui/activities/zi;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/zi;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->v:Lcom/bbm/j/k;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method protected static a(J)J
    .registers 4

    const-wide/16 v0, 0x3e8

    div-long v0, p0, v0

    return-wide v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/NewListItemActivity;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    if-eqz v0, :cond_12

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->length()I

    move-result v0

    if-lez v0, :cond_13

    const/4 v0, 0x1

    :goto_f
    invoke-virtual {v1, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    :cond_12
    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_f
.end method


# virtual methods
.method protected final a(Ljava/lang/String;)V
    .registers 10

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_ee

    invoke-static {}, Lcom/bbm/ui/activities/zt;->values()[Lcom/bbm/ui/activities/zt;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->p:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    aget-object v6, v0, v1

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    iget-object v2, p0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    iget v2, v2, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v1, v2}, Lcom/bbm/ui/l;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/bbm/ui/activities/zs;->b:Lcom/bbm/ui/activities/zs;

    iget v2, v2, Lcom/bbm/ui/activities/zs;->c:I

    invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_f6

    move-object v3, v4

    :goto_46
    sget-object v1, Lcom/bbm/ui/activities/zr;->b:Lcom/bbm/ui/activities/zr;

    iget v1, v1, Lcom/bbm/ui/activities/zr;->c:I

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_cd

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a8

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_66
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_f4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/activities/NewListItemActivity;->q:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_66

    :goto_80
    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v2, v6, Lcom/bbm/ui/activities/zt;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bbm/g/bt;->a(Ljava/lang/String;)Lcom/bbm/g/bt;

    move-result-object v2

    sget-object v4, Lcom/bbm/g/bu;->a:Lcom/bbm/g/bu;

    invoke-static {p1, v5, v2, v4}, Lcom/bbm/g/an;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/g/bt;Lcom/bbm/g/bu;)Lcom/bbm/g/bs;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/g/bs;->a(Ljava/lang/String;)Lcom/bbm/g/bs;

    move-result-object v1

    iget-wide v4, p0, Lcom/bbm/ui/activities/NewListItemActivity;->m:J

    invoke-virtual {v1, v4, v5}, Lcom/bbm/g/bs;->a(J)Lcom/bbm/g/bs;

    move-result-object v1

    if-eqz v3, :cond_a5

    :goto_9a
    invoke-virtual {v1, v3}, Lcom/bbm/g/bs;->c(Ljava/lang/String;)Lcom/bbm/g/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    :goto_a1
    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->finish()V

    :goto_a4
    return-void

    :cond_a5
    const-string v3, ""

    goto :goto_9a

    :cond_a8
    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v2, v6, Lcom/bbm/ui/activities/zt;->e:Ljava/lang/String;

    invoke-static {v2}, Lcom/bbm/g/bt;->a(Ljava/lang/String;)Lcom/bbm/g/bt;

    move-result-object v2

    sget-object v4, Lcom/bbm/g/bu;->a:Lcom/bbm/g/bu;

    invoke-static {p1, v5, v2, v4}, Lcom/bbm/g/an;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/g/bt;Lcom/bbm/g/bu;)Lcom/bbm/g/bs;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/bbm/g/bs;->b(Ljava/lang/String;)Lcom/bbm/g/bs;

    move-result-object v0

    iget-wide v4, p0, Lcom/bbm/ui/activities/NewListItemActivity;->m:J

    invoke-virtual {v0, v4, v5}, Lcom/bbm/g/bs;->a(J)Lcom/bbm/g/bs;

    move-result-object v0

    if-eqz v3, :cond_ca

    :goto_c2
    invoke-virtual {v0, v3}, Lcom/bbm/g/bs;->c(Ljava/lang/String;)Lcom/bbm/g/bs;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_a1

    :cond_ca
    const-string v3, ""

    goto :goto_c2

    :cond_cd
    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, v6, Lcom/bbm/ui/activities/zt;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/bbm/g/bt;->a(Ljava/lang/String;)Lcom/bbm/g/bt;

    move-result-object v1

    sget-object v2, Lcom/bbm/g/bu;->a:Lcom/bbm/g/bu;

    invoke-static {p1, v5, v1, v2}, Lcom/bbm/g/an;->a(Ljava/lang/String;Ljava/lang/String;Lcom/bbm/g/bt;Lcom/bbm/g/bu;)Lcom/bbm/g/bs;

    move-result-object v1

    iget-wide v4, p0, Lcom/bbm/ui/activities/NewListItemActivity;->m:J

    invoke-virtual {v1, v4, v5}, Lcom/bbm/g/bs;->a(J)Lcom/bbm/g/bs;

    move-result-object v1

    if-eqz v3, :cond_eb

    :goto_e3
    invoke-virtual {v1, v3}, Lcom/bbm/g/bs;->c(Ljava/lang/String;)Lcom/bbm/g/bs;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->a(Lcom/bbm/g/ct;)V

    goto :goto_a1

    :cond_eb
    const-string v3, ""

    goto :goto_e3

    :cond_ee
    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/InlineImageEditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a4

    :cond_f4
    move-object v1, v4

    goto :goto_80

    :cond_f6
    move-object v3, v1

    goto/16 :goto_46
.end method

.method protected final a(Z)V
    .registers 6

    const/16 v2, 0x8

    const/4 v1, 0x0

    iget-object v3, p0, Lcom/bbm/ui/activities/NewListItemActivity;->a:Lcom/bbm/ui/FooterActionBar;

    if-eqz p1, :cond_13

    move v0, v1

    :goto_8
    invoke-virtual {v3, v0}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->b:Landroid/widget/ImageView;

    if-eqz p1, :cond_15

    :goto_f
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_13
    move v0, v2

    goto :goto_8

    :cond_15
    move v1, v2

    goto :goto_f
.end method

.method protected b()V
    .registers 12

    const/4 v10, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->h(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v2

    :goto_23
    invoke-interface {v3}, Lcom/bbm/j/w;->d()I

    move-result v0

    if-ge v1, v0, :cond_48

    invoke-interface {v3, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/y;

    iget-object v6, v0, Lcom/bbm/g/y;->c:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_44

    iget-object v6, v0, Lcom/bbm/g/y;->c:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_44

    iget-object v0, v0, Lcom/bbm/g/y;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_44
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_23

    :cond_48
    sget-object v0, Lcom/bbm/ui/activities/zs;->a:Lcom/bbm/ui/activities/zs;

    iget v0, v0, Lcom/bbm/ui/activities/zs;->c:I

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/bbm/ui/activities/zs;->b:Lcom/bbm/ui/activities/zs;

    iget v0, v0, Lcom/bbm/ui/activities/zs;->c:I

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    invoke-virtual {v0, v5, v4}, Lcom/bbm/ui/l;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    sget-object v1, Lcom/bbm/ui/activities/zs;->b:Lcom/bbm/ui/activities/zs;

    iget v1, v1, Lcom/bbm/ui/activities/zs;->c:I

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->h:Landroid/widget/Spinner;

    new-instance v1, Lcom/bbm/ui/q;

    iget-object v5, p0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    new-instance v6, Lcom/bbm/ui/activities/zl;

    invoke-direct {v6, p0}, Lcom/bbm/ui/activities/zl;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    invoke-direct {v1, v5, v6}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->h:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->h:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v1, p0, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/g/am;->g(Ljava/lang/String;)Lcom/bbm/j/w;

    move-result-object v6

    move v1, v2

    :goto_9f
    invoke-interface {v6}, Lcom/bbm/j/w;->d()I

    move-result v0

    if-ge v1, v0, :cond_cb

    invoke-interface {v6, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ac;

    iget-object v7, p0, Lcom/bbm/ui/activities/NewListItemActivity;->d:Lcom/bbm/g/am;

    iget-object v8, v0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    invoke-virtual {v7, v8}, Lcom/bbm/g/am;->q(Ljava/lang/String;)Lcom/bbm/g/o;

    move-result-object v7

    iget-object v8, v0, Lcom/bbm/g/ac;->d:Lcom/bbm/util/bh;

    sget-object v9, Lcom/bbm/util/bh;->b:Lcom/bbm/util/bh;

    if-eq v8, v9, :cond_c7

    iget-object v8, p0, Lcom/bbm/ui/activities/NewListItemActivity;->q:Ljava/util/HashMap;

    iget-object v0, v0, Lcom/bbm/g/ac;->c:Ljava/lang/String;

    iget-object v9, v7, Lcom/bbm/g/o;->c:Ljava/lang/String;

    invoke-virtual {v8, v0, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v7, Lcom/bbm/g/o;->c:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_c7
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_9f

    :cond_cb
    move v1, v2

    :goto_cc
    invoke-interface {v3}, Lcom/bbm/j/w;->d()I

    move-result v0

    if-ge v1, v0, :cond_f1

    invoke-interface {v3, v1}, Lcom/bbm/j/w;->a(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/y;

    iget-object v6, v0, Lcom/bbm/g/y;->b:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_ed

    iget-object v6, v0, Lcom/bbm/g/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_ed

    iget-object v0, v0, Lcom/bbm/g/y;->b:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_ed
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_cc

    :cond_f1
    sget-object v0, Lcom/bbm/ui/activities/zr;->a:Lcom/bbm/ui/activities/zr;

    iget v0, v0, Lcom/bbm/ui/activities/zr;->c:I

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v2, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-object v0, Lcom/bbm/ui/activities/zr;->b:Lcom/bbm/ui/activities/zr;

    iget v0, v0, Lcom/bbm/ui/activities/zr;->c:I

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v10, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    invoke-virtual {v0, v5, v4}, Lcom/bbm/ui/l;->a(Ljava/util/List;Ljava/util/List;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    sget-object v1, Lcom/bbm/ui/activities/zr;->b:Lcom/bbm/ui/activities/zr;

    iget v1, v1, Lcom/bbm/ui/activities/zr;->c:I

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->i:Landroid/widget/Spinner;

    new-instance v1, Lcom/bbm/ui/q;

    iget-object v2, p0, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    new-instance v3, Lcom/bbm/ui/activities/zo;

    invoke-direct {v3, p0}, Lcom/bbm/ui/activities/zo;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    invoke-direct {v1, v2, v3}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->i:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->i:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    return-void
.end method

.method protected f()V
    .registers 3

    const v0, 0x7f0a0169

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageEditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->s:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->g:Lcom/bbm/ui/InlineImageEditText;

    const/16 v1, 0x200

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    const v0, 0x7f0a016a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->h:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->h:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a016b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->i:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->i:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v0, 0x7f0a016c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->j:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->j:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->t:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    const v0, 0x7f0a016d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/DateTimePickerView;

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->k:Lcom/bbm/ui/DateTimePickerView;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->k:Lcom/bbm/ui/DateTimePickerView;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->u:Lcom/bbm/ui/ba;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/DateTimePickerView;->setOnDateTimePickerViewChangeListener(Lcom/bbm/ui/ba;)V

    const v0, 0x7f0a016e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->l:Landroid/widget/Spinner;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->l:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->r:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method protected k()V
    .registers 7

    const/4 v5, -0x1

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e03b2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00f4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/zj;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/zj;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/zk;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/zk;-><init>(Lcom/bbm/ui/activities/NewListItemActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->f:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "listUri"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->e:Ljava/lang/String;

    if-eqz v0, :cond_26

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->e:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_26

    const/4 v0, 0x1

    :goto_1d
    const-string v2, "No List URI specified in Intent"

    invoke-static {p0, v0, v2}, Lcom/bbm/util/fb;->a(Landroid/app/Activity;ZLjava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28

    :goto_25
    return-void

    :cond_26
    move v0, v1

    goto :goto_1d

    :cond_28
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->setContentView(I)V

    iput-boolean v1, p0, Lcom/bbm/ui/activities/ev;->y:Z

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->a:Lcom/bbm/ui/FooterActionBar;

    const v0, 0x7f0a0136

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/NewListItemActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->a(Z)V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->d:Lcom/bbm/g/am;

    new-instance v0, Lcom/bbm/ui/l;

    const v1, 0x7f0e03b3

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->n:Lcom/bbm/ui/l;

    new-instance v0, Lcom/bbm/ui/l;

    const v1, 0x7f0e03b1

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->o:Lcom/bbm/ui/l;

    new-instance v0, Lcom/bbm/ui/l;

    const v1, 0x7f0e03b7

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->p:Lcom/bbm/ui/l;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->f()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/bbm/ui/activities/zt;->a:Lcom/bbm/ui/activities/zt;

    iget v1, v1, Lcom/bbm/ui/activities/zt;->d:I

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bbm/ui/activities/zt;->b:Lcom/bbm/ui/activities/zt;

    iget v1, v1, Lcom/bbm/ui/activities/zt;->d:I

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/bbm/ui/activities/zt;->c:Lcom/bbm/ui/activities/zt;

    iget v1, v1, Lcom/bbm/ui/activities/zt;->d:I

    invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/NewListItemActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->p:Lcom/bbm/ui/l;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/l;->a(Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->p:Lcom/bbm/ui/l;

    sget-object v1, Lcom/bbm/ui/activities/zt;->b:Lcom/bbm/ui/activities/zt;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/zt;->ordinal()I

    move-result v1

    iput v1, v0, Lcom/bbm/ui/l;->a:I

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->l:Landroid/widget/Spinner;

    new-instance v1, Lcom/bbm/ui/q;

    iget-object v2, p0, Lcom/bbm/ui/activities/NewListItemActivity;->p:Lcom/bbm/ui/l;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->l:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->p:Lcom/bbm/ui/l;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->l:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/bbm/ui/activities/NewListItemActivity;->p:Lcom/bbm/ui/l;

    iget v1, v1, Lcom/bbm/ui/l;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->b()V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/NewListItemActivity;->k()V

    goto/16 :goto_25
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->v:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/NewListItemActivity;->v:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
