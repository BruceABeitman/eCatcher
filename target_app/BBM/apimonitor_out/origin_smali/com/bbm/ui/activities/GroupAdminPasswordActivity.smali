.class public Lcom/bbm/ui/activities/GroupAdminPasswordActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupAdminPasswordActivity.java"


# instance fields
.field private final a:I

.field private final b:Lcom/bbm/g/am;

.field private d:Lcom/bbm/ui/HeaderButtonActionBar;

.field private e:Landroid/widget/EditText;

.field private f:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V

    const/4 v0, 0x4

    iput v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->a:I

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->b:Lcom/bbm/g/am;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->e:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->f:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)Lcom/bbm/g/am;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->b:Lcom/bbm/g/am;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/16 v6, 0x20

    const/4 v5, -0x1

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030003

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e042e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e0638

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/ld;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/ld;-><init>(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/le;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/le;-><init>(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->d:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->e:Landroid/widget/EditText;

    const v0, 0x7f0a00bb

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->f:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->e:Landroid/widget/EditText;

    new-instance v1, Lcom/bbm/ui/activities/lf;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/lf;-><init>(Lcom/bbm/ui/activities/GroupAdminPasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->e:Landroid/widget/EditText;

    invoke-static {v0, v6}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminPasswordActivity;->f:Landroid/widget/EditText;

    invoke-static {v0, v6}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

    return-void
.end method

.method protected onPause()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Lcom/bbm/ui/activities/md;->onResume()V

    return-void
.end method
