.class final Lcom/bbm/ui/cm;
.super Ljava/lang/Object;
.source "GlympseUserSelector.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/GlympseUserSelector;


# direct methods
.method constructor <init>(Lcom/bbm/ui/GlympseUserSelector;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    const/4 v2, 0x1

    const/16 v0, 0x8

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_90

    :goto_b
    :pswitch_b
    return-void

    :pswitch_c
    const-string v3, "Toggle/Selected Clicked"

    const-class v4, Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v3, v4}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v3}, Lcom/bbm/ui/GlympseUserSelector;->a(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v4}, Lcom/bbm/ui/GlympseUserSelector;->a(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/LinearLayout;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v4

    if-nez v4, :cond_54

    :goto_25
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->b(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/ImageButton;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->a(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-nez v0, :cond_56

    move v0, v2

    :goto_3b
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object v0, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v3}, Lcom/bbm/ui/GlympseUserSelector;->a(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v3

    if-nez v3, :cond_58

    :goto_50
    invoke-virtual {v0, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->setExpanded(Z)V

    goto :goto_b

    :cond_54
    move v0, v1

    goto :goto_25

    :cond_56
    move v0, v1

    goto :goto_3b

    :cond_58
    move v2, v1

    goto :goto_50

    :pswitch_5a
    const-string v2, "All Clicked"

    const-class v3, Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v2, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v2, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v2}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(I)V

    iget-object v2, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v2}, Lcom/bbm/ui/GlympseUserSelector;->a(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/LinearLayout;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v2}, Lcom/bbm/ui/GlympseUserSelector;->b(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/ImageButton;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object v1, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v1}, Lcom/bbm/ui/GlympseUserSelector;->d(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/ui/GlympseUserSelectorItem;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/cm;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->e(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/co;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/ui/co;->a()V

    goto/16 :goto_b

    :pswitch_data_90
    .packed-switch 0x7f0a05b2
        :pswitch_c
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_b
        :pswitch_5a
    .end packed-switch
.end method
