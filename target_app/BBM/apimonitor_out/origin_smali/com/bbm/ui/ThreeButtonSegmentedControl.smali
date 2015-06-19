.class public Lcom/bbm/ui/ThreeButtonSegmentedControl;
.super Landroid/widget/RelativeLayout;
.source "ThreeButtonSegmentedControl.java"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/LinearLayout;

.field private c:Landroid/widget/LinearLayout;

.field private d:I

.field private e:Lcom/bbm/ui/gy;

.field private final f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 10

    const/4 v2, 0x1

    const/4 v5, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v5, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->e:Lcom/bbm/ui/gy;

    new-instance v0, Lcom/bbm/ui/gx;

    invoke-direct {v0, p0}, Lcom/bbm/ui/gx;-><init>(Lcom/bbm/ui/ThreeButtonSegmentedControl;)V

    iput-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->f:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03014b

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0643

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f0a065e

    invoke-virtual {p0, v1}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a0645

    invoke-virtual {p0, v2}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget-object v4, Lcom/bbm/ad;->ThreeButtonSegmentControl:[I

    invoke-virtual {v3, p2, v4, p3, v5}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x0

    :try_start_41
    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-virtual {v3, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_58
    .catchall {:try_start_41 .. :try_end_58} :catchall_75

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b030e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0b0319

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {p0, v0, v1, v0, v1}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->setPadding(IIII)V

    return-void

    :catchall_75
    move-exception v0

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic a(Lcom/bbm/ui/ThreeButtonSegmentedControl;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->a:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/ThreeButtonSegmentedControl;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->b:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/ThreeButtonSegmentedControl;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->c:Landroid/widget/LinearLayout;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    iput p1, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->d:I

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V

    packed-switch p1, :pswitch_data_32

    :goto_16
    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->e:Lcom/bbm/ui/gy;

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->e:Lcom/bbm/ui/gy;

    invoke-interface {v0, p1}, Lcom/bbm/ui/gy;->a(I)V

    :cond_1f
    return-void

    :pswitch_20
    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V

    goto :goto_16

    :pswitch_26
    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V

    goto :goto_16

    :pswitch_2c
    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->c:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V

    goto :goto_16

    :pswitch_data_32
    .packed-switch 0x0
        :pswitch_20
        :pswitch_26
        :pswitch_2c
    .end packed-switch
.end method

.method public getSelectedOption()I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->d:I

    return v0
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0642

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->a:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->a:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a065d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->b:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->b:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0644

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->c:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->c:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ThreeButtonSegmentedControl;->a(I)V

    return-void
.end method

.method public setOnOptionSelectedListener(Lcom/bbm/ui/gy;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ThreeButtonSegmentedControl;->e:Lcom/bbm/ui/gy;

    return-void
.end method
