.class public Lcom/bbm/ui/activities/GroupAdminAddActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupAdminAddActivity.java"


# instance fields
.field a:Lcom/bbm/ui/ct;

.field private final b:Lcom/bbm/g/am;

.field private d:Landroid/widget/ListView;

.field private e:Lcom/bbm/ui/HeaderButtonActionBar;

.field private final f:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final g:Lcom/bbm/j/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/j",
            "<",
            "Lcom/bbm/g/ac;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->b:Lcom/bbm/g/am;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->f:Ljava/util/ArrayList;

    new-instance v0, Lcom/bbm/ui/activities/ku;

    invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ku;-><init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->g:Lcom/bbm/j/j;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->f:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Lcom/bbm/g/am;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->b:Lcom/bbm/g/am;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupAdminAddActivity;)Landroid/widget/ListView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->d:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V
    .registers 7

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_34

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0424

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->f:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitle(Ljava/lang/String;)V

    :goto_33
    return-void

    :cond_34
    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e043c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setTitle(Ljava/lang/String;)V

    goto :goto_33
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, -0x1

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030001

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e043c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e03df

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/kr;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/kr;-><init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/ks;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ks;-><init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    new-instance v0, Lcom/bbm/ui/ct;

    new-instance v1, Lcom/bbm/ui/activities/kv;

    iget-object v2, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->g:Lcom/bbm/j/j;

    invoke-direct {v1, p0, v2}, Lcom/bbm/ui/activities/kv;-><init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;Lcom/bbm/j/j;)V

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a:Lcom/bbm/ui/ct;

    const v0, 0x7f0a00b5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminAddActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->d:Landroid/widget/ListView;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->d:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a:Lcom/bbm/ui/ct;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->d:Landroid/widget/ListView;

    new-instance v1, Lcom/bbm/ui/activities/kt;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/kt;-><init>(Lcom/bbm/ui/activities/GroupAdminAddActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method protected onPause()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 2

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminAddActivity;->a:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->c()V

    return-void
.end method
