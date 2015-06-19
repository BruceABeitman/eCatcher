.class public Lcom/bbm/ui/DateTimePickerView;
.super Lcom/bbm/ui/CustomView;
.source "DateTimePickerView.java"


# instance fields
.field private a:Landroid/widget/TextView;

.field private b:Landroid/widget/TextView;

.field private c:Ljava/util/Date;

.field private d:Ljava/util/Date;

.field private e:Ljava/util/Date;

.field private f:Ljava/text/SimpleDateFormat;

.field private volatile g:Z

.field private h:Lcom/bbm/ui/ba;

.field private i:Landroid/view/View$OnClickListener;

.field private j:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->c:Ljava/util/Date;

    iput-boolean v2, p0, Lcom/bbm/ui/DateTimePickerView;->g:Z

    iput-object v1, p0, Lcom/bbm/ui/DateTimePickerView;->h:Lcom/bbm/ui/ba;

    iput-object v1, p0, Lcom/bbm/ui/DateTimePickerView;->i:Landroid/view/View$OnClickListener;

    iput v2, p0, Lcom/bbm/ui/DateTimePickerView;->j:I

    invoke-direct {p0, v1}, Lcom/bbm/ui/DateTimePickerView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->c:Ljava/util/Date;

    iput-boolean v1, p0, Lcom/bbm/ui/DateTimePickerView;->g:Z

    iput-object v2, p0, Lcom/bbm/ui/DateTimePickerView;->h:Lcom/bbm/ui/ba;

    iput-object v2, p0, Lcom/bbm/ui/DateTimePickerView;->i:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/bbm/ui/DateTimePickerView;->j:I

    invoke-direct {p0, p2}, Lcom/bbm/ui/DateTimePickerView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->c:Ljava/util/Date;

    iput-boolean v1, p0, Lcom/bbm/ui/DateTimePickerView;->g:Z

    iput-object v2, p0, Lcom/bbm/ui/DateTimePickerView;->h:Lcom/bbm/ui/ba;

    iput-object v2, p0, Lcom/bbm/ui/DateTimePickerView;->i:Landroid/view/View$OnClickListener;

    iput v1, p0, Lcom/bbm/ui/DateTimePickerView;->j:I

    invoke-direct {p0, p2}, Lcom/bbm/ui/DateTimePickerView;->a(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/DateTimePickerView;Ljava/util/Date;)Ljava/lang/String;
    .registers 6

    const v3, 0x20011

    iget v0, p0, Lcom/bbm/ui/DateTimePickerView;->j:I

    packed-switch v0, :pswitch_data_48

    invoke-virtual {p0}, Lcom/bbm/ui/DateTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    :goto_14
    return-object v0

    :pswitch_15
    invoke-virtual {p0}, Lcom/bbm/ui/DateTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :pswitch_22
    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->f:Ljava/text/SimpleDateFormat;

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v0, p1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :cond_2d
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const/4 v2, 0x0

    const v3, 0x22010

    invoke-static {v2, v0, v1, v3}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :pswitch_3a
    invoke-virtual {p0}, Lcom/bbm/ui/DateTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/be;->a(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    goto :goto_14

    :pswitch_data_48
    .packed-switch 0x0
        :pswitch_15
        :pswitch_22
        :pswitch_3a
    .end packed-switch
.end method

.method private a()V
    .registers 3

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbm/ui/aw;

    invoke-direct {v1, p0}, Lcom/bbm/ui/aw;-><init>(Lcom/bbm/ui/DateTimePickerView;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/bbm/ui/DateTimePickerView;->setClickable(Z)V

    invoke-virtual {p0}, Lcom/bbm/ui/DateTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030126

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a0181

    invoke-virtual {p0, v0}, Lcom/bbm/ui/DateTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->a:Landroid/widget/TextView;

    const v0, 0x7f0a058a

    invoke-virtual {p0, v0}, Lcom/bbm/ui/DateTimePickerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->b:Landroid/widget/TextView;

    if-eqz p1, :cond_49

    invoke-virtual {p0}, Lcom/bbm/ui/DateTimePickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v2, Lcom/bbm/ad;->DateTimePickerView:[I

    invoke-virtual {v0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {p0, v2}, Lcom/bbm/ui/DateTimePickerView;->setLabel(Ljava/lang/String;)V

    :cond_3f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/bbm/ui/DateTimePickerView;->setMode(I)V

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_49
    new-instance v0, Lcom/bbm/ui/av;

    invoke-direct {v0, p0}, Lcom/bbm/ui/av;-><init>(Lcom/bbm/ui/DateTimePickerView;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/DateTimePickerView;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/DateTimePickerView;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/bbm/ui/DateTimePickerView;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bbm/ui/DateTimePickerView;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/bbm/ui/DateTimePickerView;)Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->d:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/DateTimePickerView;)Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->e:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/DateTimePickerView;)Landroid/view/View$OnClickListener;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->i:Landroid/view/View$OnClickListener;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/DateTimePickerView;)Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->c:Ljava/util/Date;

    return-object v0
.end method

.method static synthetic f(Lcom/bbm/ui/DateTimePickerView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->b:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method public getDate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->c:Ljava/util/Date;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->a:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .registers 2

    iget v0, p0, Lcom/bbm/ui/DateTimePickerView;->j:I

    return v0
.end method

.method public setDate(Ljava/util/Date;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->h:Lcom/bbm/ui/ba;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->h:Lcom/bbm/ui/ba;

    iget-object v1, p0, Lcom/bbm/ui/DateTimePickerView;->c:Ljava/util/Date;

    invoke-interface {v0, v1, p1}, Lcom/bbm/ui/ba;->a(Ljava/util/Date;Ljava/util/Date;)V

    :cond_b
    iput-object p1, p0, Lcom/bbm/ui/DateTimePickerView;->c:Ljava/util/Date;

    invoke-direct {p0}, Lcom/bbm/ui/DateTimePickerView;->a()V

    return-void
.end method

.method public setDateFormat(Ljava/text/SimpleDateFormat;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/DateTimePickerView;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_4

    const-string p1, ""

    :cond_4
    iget-object v0, p0, Lcom/bbm/ui/DateTimePickerView;->a:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setMaxDateTime(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/DateTimePickerView;->e:Ljava/util/Date;

    return-void
.end method

.method public setMinDateTime(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/DateTimePickerView;->d:Ljava/util/Date;

    return-void
.end method

.method public setMode(I)V
    .registers 3

    iget v0, p0, Lcom/bbm/ui/DateTimePickerView;->j:I

    if-eq p1, v0, :cond_7

    invoke-direct {p0}, Lcom/bbm/ui/DateTimePickerView;->a()V

    :cond_7
    iput p1, p0, Lcom/bbm/ui/DateTimePickerView;->j:I

    return-void
.end method

.method public setOnDateTimePickerViewChangeListener(Lcom/bbm/ui/ba;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/DateTimePickerView;->h:Lcom/bbm/ui/ba;

    return-void
.end method

.method public setOnDateTimePickerViewClickListener(Landroid/view/View$OnClickListener;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/DateTimePickerView;->i:Landroid/view/View$OnClickListener;

    return-void
.end method
