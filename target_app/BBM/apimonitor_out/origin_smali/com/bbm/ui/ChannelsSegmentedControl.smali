.class public Lcom/bbm/ui/ChannelsSegmentedControl;
.super Landroid/widget/RelativeLayout;
.source "ChannelsSegmentedControl.java"


# instance fields
.field public a:Landroid/widget/ImageView;

.field private b:Landroid/widget/ImageView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ImageView;

.field private e:Lcom/bbm/ui/ad;

.field private final f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/ChannelsSegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/ChannelsSegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->e:Lcom/bbm/ui/ad;

    new-instance v0, Lcom/bbm/ui/ac;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ac;-><init>(Lcom/bbm/ui/ChannelsSegmentedControl;)V

    iput-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->f:Landroid/view/View$OnClickListener;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03006f

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->b:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->c:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/ChannelsSegmentedControl;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->d:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public final a(I)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->b:Landroid/widget/ImageView;

    const v1, 0x7f020204

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->c:Landroid/widget/ImageView;

    const v1, 0x7f02024a

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->d:Landroid/widget/ImageView;

    const v1, 0x7f02025f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    sparse-switch p1, :sswitch_data_44

    :goto_1b
    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->e:Lcom/bbm/ui/ad;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->e:Lcom/bbm/ui/ad;

    invoke-interface {v0, p1}, Lcom/bbm/ui/ad;->a(I)V

    :cond_24
    return-void

    :sswitch_25
    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->b:Landroid/widget/ImageView;

    const v1, 0x7f020203

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b

    :sswitch_2e
    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->c:Landroid/widget/ImageView;

    const v1, 0x7f020249

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1b

    :sswitch_37
    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->d:Landroid/widget/ImageView;

    const v1, 0x7f02025e

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->setNotificationSplatVisibility(Z)V

    goto :goto_1b

    :sswitch_data_44
    .sparse-switch
        0x7f0a0078 -> :sswitch_37
        0x7f0a007d -> :sswitch_25
        0x7f0a0080 -> :sswitch_2e
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .registers 3

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0330

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0331

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->c:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->c:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0333

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->d:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->d:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0334

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->a:Landroid/widget/ImageView;

    const v0, 0x7f0a007d

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(I)V

    return-void
.end method

.method public setNotificationSplatVisibility(Z)V
    .registers 4

    iget-object v1, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->a:Landroid/widget/ImageView;

    if-eqz p1, :cond_9

    const/4 v0, 0x0

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void

    :cond_9
    const/16 v0, 0x8

    goto :goto_5
.end method

.method public setOnOptionSelectedListener(Lcom/bbm/ui/ad;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ChannelsSegmentedControl;->e:Lcom/bbm/ui/ad;

    return-void
.end method
