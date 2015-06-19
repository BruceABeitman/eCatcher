.class public Lcom/google/zxing/client/android/HeaderButtonActionBar;
.super Lcom/google/zxing/client/android/CustomView;
.source "HeaderButtonActionBar.java"


# instance fields
.field private a:Landroid/widget/Button;

.field private b:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/CustomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->b:Landroid/widget/TextView;

    const-string v0, ""

    invoke-virtual {p0}, Lcom/google/zxing/client/android/HeaderButtonActionBar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/google/zxing/client/android/y;->cancel_narrowbutton:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/google/zxing/client/android/CustomView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a:Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->b:Landroid/widget/TextView;

    invoke-direct {p0, p2, p3, p1}, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 7

    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/zxing/client/android/x;->view_actionbar_single_button:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget v0, Lcom/google/zxing/client/android/w;->header_action_bar_title:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/HeaderButtonActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget v0, Lcom/google/zxing/client/android/w;->header_action_bar_negative_button:I

    invoke-virtual {p0, v0}, Lcom/google/zxing/client/android/HeaderButtonActionBar;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a:Landroid/widget/Button;

    iget-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public setNegativeButtonEnabled(Z)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method

.method public setNegativeButtonLabel(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->a:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setTitle(I)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/google/zxing/client/android/HeaderButtonActionBar;->b:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
