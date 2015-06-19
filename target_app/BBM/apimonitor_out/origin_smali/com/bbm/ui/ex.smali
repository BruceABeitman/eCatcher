.class final Lcom/bbm/ui/ex;
.super Ljava/lang/Object;
.source "QuickShareGlympseView.java"

# interfaces
.implements Lcom/bbm/ui/ez;


# instance fields
.field final synthetic a:Lcom/bbm/ui/QuickShareGlympseView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/QuickShareGlympseView;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ex;->a:Lcom/bbm/ui/QuickShareGlympseView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 7

    const/4 v4, 0x1

    iget-object v2, p0, Lcom/bbm/ui/ex;->a:Lcom/bbm/ui/QuickShareGlympseView;

    iget-object v0, v2, Lcom/bbm/ui/QuickShareGlympseView;->c:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, v2, Lcom/bbm/ui/QuickShareGlympseView;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    const-string v0, "glympse_first_experience"

    invoke-interface {v3, v0, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_45

    const v0, 0x7f0a062c

    invoke-virtual {v2, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0a0630

    invoke-virtual {v2, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    const v1, 0x7f0a062f

    invoke-virtual {v2, v1}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    new-instance v1, Lcom/bbm/ui/ev;

    invoke-direct {v1, v2, v4, v3}, Lcom/bbm/ui/ev;-><init>(Lcom/bbm/ui/QuickShareGlympseView;Landroid/view/View;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/view/View;->setVisibility(I)V

    :goto_44
    return-void

    :cond_45
    invoke-virtual {v2, v4}, Lcom/bbm/ui/QuickShareGlympseView;->a(Z)V

    goto :goto_44
.end method
