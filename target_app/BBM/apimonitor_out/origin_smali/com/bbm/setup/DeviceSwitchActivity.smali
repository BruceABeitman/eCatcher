.class public Lcom/bbm/setup/DeviceSwitchActivity;
.super Lcom/bbm/setup/r;
.source "DeviceSwitchActivity.java"


# instance fields
.field private a:Lcom/bbm/d/a;

.field private b:Lcom/bbm/setup/aa;

.field private c:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/bbm/setup/r;-><init>()V

    new-instance v0, Lcom/bbm/setup/d;

    invoke-direct {v0, p0}, Lcom/bbm/setup/d;-><init>(Lcom/bbm/setup/DeviceSwitchActivity;)V

    iput-object v0, p0, Lcom/bbm/setup/DeviceSwitchActivity;->c:Lcom/bbm/j/k;

    return-void
.end method

.method static synthetic a(Lcom/bbm/setup/DeviceSwitchActivity;)Lcom/bbm/setup/aa;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/DeviceSwitchActivity;->b:Lcom/bbm/setup/aa;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/setup/DeviceSwitchActivity;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/setup/DeviceSwitchActivity;->a:Lcom/bbm/d/a;

    return-object v0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/setup/r;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/setup/DeviceSwitchActivity;->a:Lcom/bbm/d/a;

    invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;

    sget-object v0, Lcom/bbm/Alaska;->b:Lcom/bbm/setup/aa;

    iput-object v0, p0, Lcom/bbm/setup/DeviceSwitchActivity;->b:Lcom/bbm/setup/aa;

    const v0, 0x7f0e06a1

    invoke-virtual {p0, v0}, Lcom/bbm/setup/DeviceSwitchActivity;->setTitle(I)V

    const v0, 0x7f03005b

    invoke-virtual {p0, v0}, Lcom/bbm/setup/DeviceSwitchActivity;->setContentView(I)V

    const v0, 0x7f0a02f6

    invoke-virtual {p0, v0}, Lcom/bbm/setup/DeviceSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/setup/e;

    invoke-direct {v1, p0}, Lcom/bbm/setup/e;-><init>(Lcom/bbm/setup/DeviceSwitchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02f7

    invoke-virtual {p0, v0}, Lcom/bbm/setup/DeviceSwitchActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/setup/f;

    invoke-direct {v1, p0}, Lcom/bbm/setup/f;-><init>(Lcom/bbm/setup/DeviceSwitchActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onPause()V
    .registers 3

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->an:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->c(Lcom/bbm/c/n;)V

    invoke-super {p0}, Lcom/bbm/setup/r;->onPause()V

    iget-object v0, p0, Lcom/bbm/setup/DeviceSwitchActivity;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->e()V

    return-void
.end method

.method protected onResume()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/setup/r;->onResume()V

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    sget-object v1, Lcom/bbm/c/n;->an:Lcom/bbm/c/n;

    invoke-virtual {v0, v1}, Lcom/bbm/c/c;->a(Lcom/bbm/c/n;)V

    iget-object v0, p0, Lcom/bbm/setup/DeviceSwitchActivity;->c:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    return-void
.end method
