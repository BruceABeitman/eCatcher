.class public final Lcom/bbm/ui/widget/i;
.super Landroid/widget/PopupWindow;
.source "TechTipPopupWindow.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .registers 9

    const/4 v3, -0x1

    invoke-direct {p0}, Landroid/widget/PopupWindow;-><init>()V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a065a

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a065b

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(I)V

    const v0, 0x7f0a065c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v0, Lcom/bbm/ui/widget/j;

    invoke-direct {v0, p0}, Lcom/bbm/ui/widget/j;-><init>(Lcom/bbm/ui/widget/i;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-virtual {p0, v1}, Lcom/bbm/ui/widget/i;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0, v3}, Lcom/bbm/ui/widget/i;->setWidth(I)V

    invoke-virtual {p0, v3}, Lcom/bbm/ui/widget/i;->setHeight(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/bbm/ui/widget/i;->setFocusable(Z)V

    const v0, 0x7f0f006e

    invoke-virtual {p0, v0}, Lcom/bbm/ui/widget/i;->setAnimationStyle(I)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/bbm/ui/widget/i;->showAtLocation(Landroid/view/View;III)V

    return-void
.end method
