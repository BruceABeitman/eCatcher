.class public Lcom/bbm/ui/StickerPicker;
.super Landroid/widget/FrameLayout;
.source "StickerPicker.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/bbm/ui/gh;

.field private final c:Lcom/bbm/d/a;

.field private final d:Landroid/widget/GridView;

.field private final e:Landroid/widget/ImageView;

.field private final f:Landroid/view/View;

.field private g:Lcom/bbm/ui/gi;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/StickerPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/StickerPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/StickerPicker;->a:Ljava/lang/String;

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/StickerPicker;->c:Lcom/bbm/d/a;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030148

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const v0, 0x7f0a064e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridView;

    iput-object v0, p0, Lcom/bbm/ui/StickerPicker;->d:Landroid/widget/GridView;

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->d:Landroid/widget/GridView;

    new-instance v2, Lcom/bbm/ui/gc;

    invoke-direct {v2, p0}, Lcom/bbm/ui/gc;-><init>(Lcom/bbm/ui/StickerPicker;)V

    invoke-virtual {v0, v2}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const v0, 0x7f0a0651

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/bbm/ui/StickerPicker;->e:Landroid/widget/ImageView;

    const v0, 0x7f0a064f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/StickerPicker;->f:Landroid/view/View;

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/gi;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->g:Lcom/bbm/ui/gi;

    return-object v0
.end method

.method static synthetic b(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/gh;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->b:Lcom/bbm/ui/gh;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/StickerPicker;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->a:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/d/a;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->c:Lcom/bbm/d/a;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/StickerPicker;)Landroid/widget/GridView;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->d:Landroid/widget/GridView;

    return-object v0
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    const/4 v0, 0x0

    return v0
.end method

.method public setMonitorState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->b:Lcom/bbm/ui/gh;

    if-nez v0, :cond_5

    :goto_4
    return-void

    :cond_5
    if-eqz p1, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->b:Lcom/bbm/ui/gh;

    invoke-virtual {v0}, Lcom/bbm/ui/gh;->c()V

    goto :goto_4

    :cond_d
    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->b:Lcom/bbm/ui/gh;

    invoke-virtual {v0}, Lcom/bbm/ui/gh;->b()V

    goto :goto_4
.end method

.method public setOnCartClickedListener(Landroid/view/View$OnClickListener;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->e:Landroid/widget/ImageView;

    new-instance v1, Lcom/bbm/ui/gg;

    invoke-direct {v1, p0, p1}, Lcom/bbm/ui/gg;-><init>(Lcom/bbm/ui/StickerPicker;Landroid/view/View$OnClickListener;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setStickerPackId(Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/StickerPicker;->a:Ljava/lang/String;

    new-instance v0, Lcom/bbm/ui/gh;

    new-instance v1, Lcom/bbm/ui/gd;

    invoke-direct {v1, p0}, Lcom/bbm/ui/gd;-><init>(Lcom/bbm/ui/StickerPicker;)V

    invoke-direct {v0, p0, v1}, Lcom/bbm/ui/gh;-><init>(Lcom/bbm/ui/StickerPicker;Lcom/bbm/j/r;)V

    iput-object v0, p0, Lcom/bbm/ui/StickerPicker;->b:Lcom/bbm/ui/gh;

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->d:Landroid/widget/GridView;

    iget-object v1, p0, Lcom/bbm/ui/StickerPicker;->b:Lcom/bbm/ui/gh;

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->d:Landroid/widget/GridView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->f:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setStickerPickerListener(Lcom/bbm/ui/gi;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/StickerPicker;->g:Lcom/bbm/ui/gi;

    return-void
.end method

.method public setStickerPreviewListener(Lcom/bbm/ui/gj;)V
    .registers 4

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/bbm/ui/StickerPicker;->d:Landroid/widget/GridView;

    new-instance v1, Lcom/bbm/ui/ge;

    invoke-direct {v1, p0, p1}, Lcom/bbm/ui/ge;-><init>(Lcom/bbm/ui/StickerPicker;Lcom/bbm/ui/gj;)V

    invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    goto :goto_2
.end method
