.class public Lcom/twidroid/activity/PremiumThemeFoundActivity;
.super Landroid/support/v7/app/ActionBarActivity;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v7/app/ActionBarActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .registers 11

    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarActivity;->onCreate(Landroid/os/Bundle;)V

    const v1, 0x7f030073

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    if-eqz v1, :cond_19

    invoke-virtual {p0}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->a()Landroid/support/v7/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/app/ActionBar;->n()V

    :cond_19
    invoke-static {p0}, Lcom/twidroid/UberSocialApplication;->a(Landroid/app/Activity;)Lcom/twidroid/UberSocialApplication;

    move-result-object v1

    if-eqz v1, :cond_c0

    invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v1

    :goto_23
    if-eqz v1, :cond_c3

    const-string v0, "themeNameForWarnDialog"

    invoke-virtual {v1, v0}, Lcom/twidroid/d/v;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_2c
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c6

    const-string v0, "uber50deluxe"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c6

    move v3, v4

    :goto_3b
    if-eqz v3, :cond_c9

    const v0, 0x7f0c01e1

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    :goto_45
    const v0, 0x7f09017b

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v6, 0x7f0c01e0

    invoke-virtual {p0, v6}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_ce

    :goto_5e
    aput-object v1, v7, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v4

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    if-eqz v3, :cond_d1

    const-string v2, "official app"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v3, v2, 0xb

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    sget-object v4, Landroid/widget/TextView$BufferType;->SPANNABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {v0, v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Spannable;

    new-instance v1, Lcom/twidroid/activity/PremiumThemeFoundActivity$1;

    invoke-direct {v1, p0}, Lcom/twidroid/activity/PremiumThemeFoundActivity$1;-><init>(Lcom/twidroid/activity/PremiumThemeFoundActivity;)V

    add-int/lit8 v3, v3, 0x1

    const/16 v4, 0x21

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :goto_a1
    const v0, 0x7f09017c

    invoke-virtual {p0, v0}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f09017d

    invoke-virtual {p0, v1}, Lcom/twidroid/activity/PremiumThemeFoundActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/twidroid/activity/PremiumThemeFoundActivity$2;

    invoke-direct {v2, p0}, Lcom/twidroid/activity/PremiumThemeFoundActivity$2;-><init>(Lcom/twidroid/activity/PremiumThemeFoundActivity;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/twidroid/activity/PremiumThemeFoundActivity$3;

    invoke-direct {v0, p0}, Lcom/twidroid/activity/PremiumThemeFoundActivity$3;-><init>(Lcom/twidroid/activity/PremiumThemeFoundActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_c0
    move-object v1, v0

    goto/16 :goto_23

    :cond_c3
    move-object v1, v0

    goto/16 :goto_2c

    :cond_c6
    move v3, v5

    goto/16 :goto_3b

    :cond_c9
    const-string v0, ""

    move-object v2, v0

    goto/16 :goto_45

    :cond_ce
    const-string v1, "unknown"

    goto :goto_5e

    :cond_d1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_a1
.end method
