.class public Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;
.super Lcom/bbm/ui/activities/md;
.source "GroupAdminValidatePasswordActivity.java"


# instance fields
.field private final a:Lcom/bbm/g/am;

.field private b:Lcom/bbm/ui/HeaderButtonActionBar;

.field private d:Landroid/widget/EditText;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/ui/activities/md;-><init>()V

    invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->a:Lcom/bbm/g/am;

    new-instance v0, Lcom/bbm/ui/fv;

    invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->a(Lcom/bbm/ui/activities/aka;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Lcom/bbm/g/am;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->a:Lcom/bbm/g/am;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Landroid/widget/EditText;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->d:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;

    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 8

    const/4 v5, -0x1

    invoke-super {p0, p1}, Lcom/bbm/ui/activities/md;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030004

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->setContentView(I)V

    new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0437

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e030b

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/lg;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/lg;-><init>(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v1, Lcom/bbm/ui/activities/lh;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/lh;-><init>(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->b:Lcom/bbm/ui/HeaderButtonActionBar;

    new-instance v2, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {v2, v5, v5}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V

    const v0, 0x7f0a00b9

    invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->d:Landroid/widget/EditText;

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->d:Landroid/widget/EditText;

    new-instance v1, Lcom/bbm/ui/activities/lj;

    invoke-direct {v1, p0}, Lcom/bbm/ui/activities/lj;-><init>(Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/GroupAdminValidatePasswordActivity;->d:Landroid/widget/EditText;

    const/16 v1, 0x20

    invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;

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
