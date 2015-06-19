.class final Lcom/bbm/ui/activities/uw;
.super Ljava/lang/Object;
.source "InviteActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/InviteActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/InviteActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/16 v1, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0, p3}, Lcom/bbm/ui/activities/InviteActivity;->a(Lcom/bbm/ui/activities/InviteActivity;I)I

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->m(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/LinearLayout;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->l(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/ui/activities/uz;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/uz;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "None"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_72

    move v0, v1

    :goto_21
    invoke-virtual {v3, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->o(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/InviteActivity;->n(Lcom/bbm/ui/activities/InviteActivity;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, p3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->o(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/TextView;

    move-result-object v3

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->l(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/ui/activities/uz;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/activities/uz;->a(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "None"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_74

    move v0, v1

    :goto_4e
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->p(Lcom/bbm/ui/activities/InviteActivity;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/InviteActivity;->l(Lcom/bbm/ui/activities/InviteActivity;)Lcom/bbm/ui/activities/uz;

    move-result-object v3

    invoke-virtual {v3, p3}, Lcom/bbm/ui/activities/uz;->a(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Custom"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_76

    :goto_69
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->e(Lcom/bbm/ui/activities/InviteActivity;)V

    return-void

    :cond_72
    move v0, v2

    goto :goto_21

    :cond_74
    move v0, v2

    goto :goto_4e

    :cond_76
    move v2, v1

    goto :goto_69
.end method

.method public final onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/InviteActivity;->a(Lcom/bbm/ui/activities/InviteActivity;I)I

    iget-object v0, p0, Lcom/bbm/ui/activities/uw;->a:Lcom/bbm/ui/activities/InviteActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/InviteActivity;->e(Lcom/bbm/ui/activities/InviteActivity;)V

    return-void
.end method
