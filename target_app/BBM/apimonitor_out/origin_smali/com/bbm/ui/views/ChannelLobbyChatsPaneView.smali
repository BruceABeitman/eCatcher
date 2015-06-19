.class public Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;
.super Lcom/bbm/ui/views/ShadowFrame;
.source "ChannelLobbyChatsPaneView.java"


# instance fields
.field protected a:Lcom/bbm/d/ec;

.field protected b:Ljava/lang/String;

.field public c:Lcom/bbm/j/k;

.field private d:Lcom/bbm/ui/ObservingImageView;

.field private e:Lcom/bbm/ui/InlineImageTextView;

.field private f:Lcom/bbm/ui/InlineImageTextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Landroid/widget/ImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->h:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->e:Lcom/bbm/ui/InlineImageTextView;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/ObservingImageView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d:Lcom/bbm/ui/ObservingImageView;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Lcom/bbm/ui/InlineImageTextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->f:Lcom/bbm/ui/InlineImageTextView;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->g:Landroid/widget/TextView;

    return-object v0
.end method


# virtual methods
.method protected final a(Landroid/content/Context;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;->a(Landroid/content/Context;)V

    const v0, 0x7f030041

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->setViewStub(I)V

    const v0, 0x7f0a0243

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/ObservingImageView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d:Lcom/bbm/ui/ObservingImageView;

    iget-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->d:Lcom/bbm/ui/ObservingImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V

    const v0, 0x7f0a0247

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->e:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a0248

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/InlineImageTextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->f:Lcom/bbm/ui/InlineImageTextView;

    const v0, 0x7f0a0249

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->g:Landroid/widget/TextView;

    const v0, 0x7f0a0244

    invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->h:Landroid/widget/ImageView;

    return-void
.end method

.method public setChannel(Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->b:Ljava/lang/String;

    new-instance v0, Lcom/bbm/ui/views/g;

    invoke-direct {v0, p0}, Lcom/bbm/ui/views/g;-><init>(Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;)V

    iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyChatsPaneView;->c:Lcom/bbm/j/k;

    return-void
.end method
