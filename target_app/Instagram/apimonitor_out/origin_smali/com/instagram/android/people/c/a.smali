.class public final Lcom/instagram/android/people/c/a;
.super Ljava/lang/Object;
.source "ModifyPhotosOfYouHelper.java"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/support/v4/app/an;

.field private c:Landroid/app/Dialog;

.field private d:Lcom/instagram/android/widget/IndeterminateCheckBox;

.field private e:Lcom/instagram/android/widget/IndeterminateCheckBox;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/people/c/a;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/people/c/a;->b:Landroid/support/v4/app/an;

    return-void
.end method

.method static synthetic a(Lcom/instagram/android/people/c/a;)Landroid/app/Dialog;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/c/a;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method private a(Landroid/app/Dialog;Lcom/instagram/feed/d/l;)V
    .registers 5

    sget v0, Lcom/facebook/av;->photos_of_you_radio_show:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/c/a;->d:Lcom/instagram/android/widget/IndeterminateCheckBox;

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->d:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->X()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    sget v0, Lcom/facebook/av;->photos_of_you_show:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/c/c;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/people/c/c;-><init>(Lcom/instagram/android/people/c/a;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->photos_of_you_radio_hide:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/widget/IndeterminateCheckBox;

    iput-object v0, p0, Lcom/instagram/android/people/c/a;->e:Lcom/instagram/android/widget/IndeterminateCheckBox;

    iget-object v1, p0, Lcom/instagram/android/people/c/a;->e:Lcom/instagram/android/widget/IndeterminateCheckBox;

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->X()Z

    move-result v0

    if-nez v0, :cond_9f

    const/4 v0, 0x1

    :goto_38
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/android/widget/IndeterminateCheckBox;->setChecked(Ljava/lang/Boolean;)V

    sget v0, Lcom/facebook/av;->photos_of_you_hide:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/c/d;

    invoke-direct {v1, p0, p2}, Lcom/instagram/android/people/c/d;-><init>(Lcom/instagram/android/people/c/a;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->more_options_button:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/c/e;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/people/c/e;-><init>(Lcom/instagram/android/people/c/a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->remove_me:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/c/f;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/people/c/f;-><init>(Lcom/instagram/android/people/c/a;Landroid/app/Dialog;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->report_inappropriate:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/c/i;

    invoke-direct {v1, p0, p1, p2}, Lcom/instagram/android/people/c/i;-><init>(Lcom/instagram/android/people/c/a;Landroid/app/Dialog;Lcom/instagram/feed/d/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->button_cancel:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/instagram/android/people/c/j;

    invoke-direct {v1, p0, p1}, Lcom/instagram/android/people/c/j;-><init>(Lcom/instagram/android/people/c/a;Landroid/app/Dialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/facebook/av;->learn_more:I

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaintFlags()I

    move-result v1

    or-int/lit8 v1, v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPaintFlags(I)V

    new-instance v1, Lcom/instagram/android/people/c/k;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/c/k;-><init>(Lcom/instagram/android/people/c/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_9f
    const/4 v0, 0x0

    goto :goto_38
.end method

.method public static a(Landroid/content/Context;Landroid/support/v4/app/an;Lcom/instagram/feed/d/l;)V
    .registers 4

    new-instance v0, Lcom/instagram/android/people/c/a;

    invoke-direct {v0, p0, p1}, Lcom/instagram/android/people/c/a;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;)V

    invoke-direct {v0, p2}, Lcom/instagram/android/people/c/a;->a(Lcom/instagram/feed/d/l;)V

    return-void
.end method

.method private a(Lcom/instagram/feed/d/l;)V
    .registers 6

    new-instance v0, Lcom/instagram/ui/dialog/b;

    iget-object v1, p0, Lcom/instagram/android/people/c/a;->a:Landroid/content/Context;

    sget v2, Lcom/facebook/aw;->dialog_modify_photos_of_you:I

    sget v3, Lcom/facebook/ba;->IgDialogActionBar:I

    invoke-direct {v0, v1, v2, v3}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;II)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Z)Lcom/instagram/ui/dialog/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/people/c/a;->c:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->c:Landroid/app/Dialog;

    invoke-direct {p0, v0, p1}, Lcom/instagram/android/people/c/a;->a(Landroid/app/Dialog;Lcom/instagram/feed/d/l;)V

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->c:Landroid/app/Dialog;

    new-instance v1, Lcom/instagram/android/people/c/b;

    invoke-direct {v1, p0}, Lcom/instagram/android/people/c/b;-><init>(Lcom/instagram/android/people/c/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->c:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method static synthetic b(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/android/people/c/a;->d:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method static synthetic c(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->d:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method static synthetic d(Lcom/instagram/android/people/c/a;)Lcom/instagram/android/widget/IndeterminateCheckBox;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->e:Lcom/instagram/android/widget/IndeterminateCheckBox;

    return-object v0
.end method

.method static synthetic e(Lcom/instagram/android/people/c/a;)Landroid/app/Dialog;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->c:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic f(Lcom/instagram/android/people/c/a;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->a:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic g(Lcom/instagram/android/people/c/a;)Landroid/support/v4/app/an;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/c/a;->b:Landroid/support/v4/app/an;

    return-object v0
.end method
