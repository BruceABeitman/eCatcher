.class public Lcom/bbm/ui/views/EphemeralPickerPin;
.super Landroid/widget/FrameLayout;
.source "EphemeralPickerPin.java"


# instance fields
.field private a:I

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bbm/ui/views/EphemeralPickerPin;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-direct {p0, p2, p3}, Lcom/bbm/ui/views/EphemeralPickerPin;->a(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/views/EphemeralPickerPin;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method private a(Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03012a

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a05a5

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->b:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const v0, 0x7f0a05a4

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->c:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbm/ui/views/t;

    invoke-direct {v1, p0}, Lcom/bbm/ui/views/t;-><init>(Lcom/bbm/ui/views/EphemeralPickerPin;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/bbm/ad;->EphemeralPickerPin:[I

    invoke-virtual {v0, p1, v1, p2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    const/4 v0, 0x3

    const/4 v2, -0x1

    :try_start_46
    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    if-eq v0, v3, :cond_4f

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/EphemeralPickerPin;->setValue(I)V

    :cond_4f
    const/4 v0, 0x2

    const/4 v2, -0x1

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iget-object v2, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->b:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v0, 0x0

    const v2, 0x7f0203a7

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iget-object v2, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->c:Landroid/widget/ImageView;

    invoke-virtual {v2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p0}, Lcom/bbm/ui/views/EphemeralPickerPin;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0b0197

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iget-object v2, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->b:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_81
    .catchall {:try_start_46 .. :try_end_81} :catchall_85

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_85
    move-exception v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    throw v0
.end method

.method static synthetic b(Lcom/bbm/ui/views/EphemeralPickerPin;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->d:Landroid/view/View$OnClickListener;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->a:I

    return v0
.end method

.method public setImageResrouce(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->d:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setSelected(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    return-void
.end method

.method public setValue(I)V
    .registers 4

    iput p1, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->a:I

    const/4 v0, -0x1

    if-ne p1, v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->b:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_c
    return-void

    :cond_d
    iget-object v0, p0, Lcom/bbm/ui/views/EphemeralPickerPin;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_c
.end method
