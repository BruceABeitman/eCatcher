.class public Lcom/bbm/ui/activities/SelectCategoryActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "SelectCategoryActivity.java"


# static fields
.field private static final a:Lcom/bbm/d/a;


# instance fields
.field private b:Lcom/bbm/ui/FooterActionBar;

.field private c:Landroid/widget/ListView;

.field private d:Lcom/bbm/ui/activities/aei;

.field private e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Landroid/widget/AdapterView$OnItemClickListener;

.field private final g:Lcom/bbm/ui/cj;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    sput-object v0, Lcom/bbm/ui/activities/SelectCategoryActivity;->a:Lcom/bbm/d/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->e:Ljava/util/ArrayList;

    new-instance v0, Lcom/bbm/ui/activities/aeb;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aeb;-><init>(Lcom/bbm/ui/activities/SelectCategoryActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->f:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/bbm/ui/activities/aec;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/aec;-><init>(Lcom/bbm/ui/activities/SelectCategoryActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->g:Lcom/bbm/ui/cj;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Lcom/bbm/ui/activities/aka;)V

    new-instance v0, Lcom/bbm/ui/voice/o;

    invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a()Lcom/bbm/d/a;
    .registers 1

    sget-object v0, Lcom/bbm/ui/activities/SelectCategoryActivity;->a:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/ui/activities/SelectCategoryActivity;)Lcom/bbm/ui/activities/aei;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->d:Lcom/bbm/ui/activities/aei;

    return-object v0
.end method

.method public static a(Landroid/content/Context;Landroid/content/DialogInterface$OnDismissListener;Lcom/bbm/ui/activities/aek;)V
    .registers 5

    new-instance v0, Lcom/bbm/ui/b/k;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/k;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0260

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->setTitle(I)V

    const v1, 0x7f0e0262

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->c(I)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->d(I)V

    invoke-virtual {v0, p1}, Lcom/bbm/ui/b/k;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->b(I)V

    const v1, 0x7f0e00f4

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(I)V

    new-instance v1, Lcom/bbm/ui/activities/aef;

    invoke-direct {v1, v0, p0, p2}, Lcom/bbm/ui/activities/aef;-><init>(Lcom/bbm/ui/b/k;Landroid/content/Context;Lcom/bbm/ui/activities/aek;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->show()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/bbm/d/ea;Landroid/content/DialogInterface$OnDismissListener;)V
    .registers 5

    new-instance v0, Lcom/bbm/ui/b/k;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/k;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e0268

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->setTitle(I)V

    iget-object v1, p1, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->d(Ljava/lang/String;)V

    const v1, 0x7f0e0262

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->c(I)V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->d(I)V

    invoke-virtual {v0, p2}, Lcom/bbm/ui/b/k;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    const v1, 0x7f0e0171

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->b(I)V

    const v1, 0x7f0e0638

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(I)V

    new-instance v1, Lcom/bbm/ui/activities/aeg;

    invoke-direct {v1, v0, p0, p1}, Lcom/bbm/ui/activities/aeg;-><init>(Lcom/bbm/ui/b/k;Landroid/content/Context;Lcom/bbm/d/ea;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/b/k;->a(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0}, Lcom/bbm/ui/b/k;->show()V

    return-void
.end method

.method public static a(Lcom/bbm/d/ea;)V
    .registers 6

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    :try_start_a
    const-string v2, "id"

    iget-wide v3, p0, Lcom/bbm/d/ea;->b:J

    invoke-virtual {v0, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/bbm/ui/activities/SelectCategoryActivity;->a:Lcom/bbm/d/a;

    const-string v2, "category"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_20} :catch_21

    :goto_20
    return-void

    :catch_21
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    goto :goto_20
.end method

.method static synthetic a(Ljava/lang/String;)Z
    .registers 5

    const/4 v1, 0x0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    :goto_7
    return v1

    :cond_8
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lcom/bbm/ui/activities/SelectCategoryActivity;->a:Lcom/bbm/d/a;

    invoke-virtual {v0}, Lcom/bbm/d/a;->P()Lcom/bbm/j/w;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_37

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ea;

    iget-object v0, v0, Lcom/bbm/d/ea;->c:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    const/4 v0, 0x1

    :goto_35
    move v1, v0

    goto :goto_7

    :cond_37
    move v0, v1

    goto :goto_35
.end method

.method static synthetic a(Ljava/util/Collection;Ljava/util/Collection;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v2

    if-le v1, v2, :cond_c

    :goto_b
    return v0

    :cond_c
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_15
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_15

    goto :goto_b

    :cond_26
    const/4 v0, 0x1

    goto :goto_b
.end method

.method static synthetic b()J
    .registers 6

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->P()Lcom/bbm/j/w;

    move-result-object v0

    const-wide/16 v1, 0x0

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_14
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_28

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/ea;

    iget-wide v4, v0, Lcom/bbm/d/ea;->b:J

    invoke-static {v1, v2, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    move-wide v1, v0

    goto :goto_14

    :cond_28
    const-wide/16 v3, 0x1

    add-long v0, v1, v3

    return-wide v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/SelectCategoryActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->e:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030050

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    const v0, 0x7f0a00be

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/FooterActionBar;

    iput-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->b:Lcom/bbm/ui/FooterActionBar;

    new-instance v1, Lcom/bbm/ui/ActionBarItem;

    const v2, 0x7f020013

    const v3, 0x7f0e0260

    invoke-direct {v1, p0, v2, v3}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V

    invoke-virtual {v0, v1, v5}, Lcom/bbm/ui/FooterActionBar;->a(Lcom/bbm/ui/ActionBarItem;I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->b:Lcom/bbm/ui/FooterActionBar;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/FooterActionBar;->setBackActionAndOverflowEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->b:Lcom/bbm/ui/FooterActionBar;

    iget-object v1, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->g:Lcom/bbm/ui/cj;

    invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V

    const v0, 0x7f0a029e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->c:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_uri_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "user_uri_list"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->e:Ljava/util/ArrayList;

    :cond_5d
    :goto_5d
    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/bbm/ui/activities/aeh;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aeh;-><init>(Lcom/bbm/ui/activities/SelectCategoryActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/SelectCategoryActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v0, 0x10

    invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v0, Lcom/bbm/ui/activities/aei;

    sget-object v1, Lcom/bbm/ui/activities/SelectCategoryActivity;->a:Lcom/bbm/d/a;

    sget-object v2, Lcom/bbm/d/w;->c:Lcom/bbm/d/w;

    invoke-virtual {v1, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/w;)Lcom/bbm/j/w;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/aei;-><init>(Lcom/bbm/ui/activities/SelectCategoryActivity;Lcom/bbm/j/r;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->d:Lcom/bbm/ui/activities/aei;

    iget-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->d:Lcom/bbm/ui/activities/aei;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->c:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->f:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void

    :cond_ac
    if-eqz p1, :cond_5d

    const-string v0, "user_uri_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5d

    const-string v0, "user_uri_list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->e:Ljava/util/ArrayList;

    goto :goto_5d
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/ajy;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "user_uri_list"

    iget-object v1, p0, Lcom/bbm/ui/activities/SelectCategoryActivity;->e:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
