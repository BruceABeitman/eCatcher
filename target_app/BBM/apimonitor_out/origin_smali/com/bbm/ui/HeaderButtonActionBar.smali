.class public Lcom/bbm/ui/HeaderButtonActionBar;
.super Lcom/bbm/ui/CustomView;
.source "HeaderButtonActionBar.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/Button;

.field private c:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0}, Lcom/bbm/ui/HeaderButtonActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0173

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/bbm/ui/HeaderButtonActionBar;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p1}, Lcom/bbm/ui/HeaderButtonActionBar;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    if-eqz p3, :cond_1b

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030115

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    invoke-direct {p0, p2, p3, p1, p4}, Lcom/bbm/ui/HeaderButtonActionBar;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1a
    :goto_1a
    return-void

    :cond_1b
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030111

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a054c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a054d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    if-eqz p4, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1a
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .registers 8

    const/4 v2, 0x1

    if-eqz p4, :cond_42

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030115

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a054d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    invoke-virtual {v0, p4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_1d
    const v0, 0x7f0a054c

    invoke-virtual {p0, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a054b

    invoke-virtual {p0, v0}, Lcom/bbm/ui/HeaderButtonActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    if-eqz v0, :cond_41

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_41
    return-void

    :cond_42
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030110

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto :goto_1d
.end method


# virtual methods
.method public setNegativeButtonEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setNegativeButtonLabel(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public setPositiveButtonEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    :cond_9
    return-void
.end method

.method public setPositiveButtonLabel(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    return-void
.end method

.method public setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->b:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_9
    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitleFontSize(F)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextSize(F)V

    return-void
.end method

.method public setTitleTextStyle(I)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/bbm/ui/HeaderButtonActionBar;->c:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    :cond_f
    return-void
.end method
