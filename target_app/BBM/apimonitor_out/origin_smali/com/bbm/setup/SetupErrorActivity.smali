.class public Lcom/bbm/setup/SetupErrorActivity;
.super Lcom/bbm/setup/r;
.source "SetupErrorActivity.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/Button;

.field private d:Lcom/bbm/al;

.field private e:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V

    new-instance v0, Lcom/bbm/setup/x;

    invoke-direct {v0, p0}, Lcom/bbm/setup/x;-><init>(Lcom/bbm/setup/SetupErrorActivity;)V

    iput-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->e:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/setup/SetupErrorActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->a:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic a(Lcom/bbm/setup/SetupErrorActivity;Lcom/bbm/al;)Lcom/bbm/al;
    .registers 2

    iput-object p1, p0, Lcom/bbm/setup/SetupErrorActivity;->d:Lcom/bbm/al;

    return-object p1
.end method

.method static synthetic b(Lcom/bbm/setup/SetupErrorActivity;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->b:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/setup/SetupErrorActivity;)Lcom/bbm/al;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->d:Lcom/bbm/al;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/setup/r;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030056

    invoke-virtual {p0, v0}, Lcom/bbm/setup/SetupErrorActivity;->setContentView(I)V

    const v0, 0x7f0a02e1

    invoke-virtual {p0, v0}, Lcom/bbm/setup/SetupErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->a:Landroid/widget/TextView;

    const v0, 0x7f0a02e2

    invoke-virtual {p0, v0}, Lcom/bbm/setup/SetupErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->b:Landroid/widget/TextView;

    const v0, 0x7f0a02e4

    invoke-virtual {p0, v0}, Lcom/bbm/setup/SetupErrorActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->c:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->c:Landroid/widget/Button;

    new-instance v1, Lcom/bbm/setup/y;

    invoke-direct {v1, p0}, Lcom/bbm/setup/y;-><init>(Lcom/bbm/setup/SetupErrorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->aq:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V

    invoke-super {p0}, Lcom/bbm/setup/r;->onPause()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->aq:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V

    iget-object v0, p0, Lcom/bbm/setup/SetupErrorActivity;->e:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
