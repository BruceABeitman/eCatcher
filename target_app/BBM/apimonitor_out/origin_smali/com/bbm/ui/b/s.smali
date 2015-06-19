.class public final Lcom/bbm/ui/b/s;
.super Landroid/app/Dialog;
.source "FirstTimeSetAvatarDialog.java"


# instance fields
.field private final a:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/bbm/ui/b/s;->a:Lcom/bbm/ui/activities/MainActivity;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/b/s;)Lcom/bbm/ui/activities/MainActivity;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/b/s;->a:Lcom/bbm/ui/activities/MainActivity;

    return-object v0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f030073

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/s;->setContentView(I)V

    const v0, 0x7f0e058a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/s;->setTitle(I)V

    const v0, 0x7f0a034b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/b/t;

    invoke-direct {v1, p0}, Lcom/bbm/ui/b/t;-><init>(Lcom/bbm/ui/b/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a034c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/s;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/bbm/ui/b/u;

    invoke-direct {v1, p0}, Lcom/bbm/ui/b/u;-><init>(Lcom/bbm/ui/b/s;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/bbm/ui/b/v;

    invoke-direct {v0, p0}, Lcom/bbm/ui/b/v;-><init>(Lcom/bbm/ui/b/s;)V

    invoke-virtual {p0, v0}, Lcom/bbm/ui/b/s;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    return-void
.end method
