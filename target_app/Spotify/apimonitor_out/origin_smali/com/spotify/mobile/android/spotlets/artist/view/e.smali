.class public final Lcom/spotify/mobile/android/spotlets/artist/view/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/view/View$OnClickListener;

.field private final c:Lcom/spotify/mobile/android/ui/cell/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/spotify/mobile/android/ui/cell/c;

    invoke-direct {v0}, Lcom/spotify/mobile/android/ui/cell/c;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->c:Lcom/spotify/mobile/android/ui/cell/c;

    return-void
.end method

.method private static a(Lcom/spotify/android/paste/widget/ListItemView;)V
    .registers 6

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getPaddingBottom()I

    move-result v0

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getPaddingRight()I

    move-result v2

    invoke-virtual {p0}, Lcom/spotify/android/paste/widget/ListItemView;->getPaddingLeft()I

    move-result v3

    const v4, 0x7f0200e0

    invoke-virtual {p0, v4}, Lcom/spotify/android/paste/widget/ListItemView;->setBackgroundResource(I)V

    invoke-virtual {p0, v3, v1, v2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->setPadding(IIII)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/spotify/android/paste/widget/ListItemView;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a(Lcom/spotify/android/paste/widget/ListItemView;)V

    return-object v0
.end method

.method public final a(I)Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;
    .registers 5

    new-instance v0, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b:Landroid/view/View$OnClickListener;

    invoke-direct {v0, v1, p1, v2}, Lcom/spotify/mobile/android/spotlets/artist/view/CardRow;-><init>(Landroid/content/Context;ILandroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public final b()Lcom/spotify/android/paste/widget/ListItemView;
    .registers 3

    new-instance v0, Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a(Lcom/spotify/android/paste/widget/ListItemView;)V

    return-object v0
.end method

.method public final c()Lcom/spotify/android/paste/widget/ListItemView;
    .registers 6

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->c:Lcom/spotify/mobile/android/ui/cell/c;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/spotify/mobile/android/ui/cell/c;->a(Landroid/content/Context;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->c()Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    new-instance v2, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a:Landroid/content/Context;

    const v4, 0x7f010194

    invoke-static {v3, v2, v4}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V

    invoke-virtual {v2, v1}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->setTextColor(Landroid/content/res/ColorStateList;)V

    invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/view/TopHitNumberView;->a()V

    invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/ListItemView;->a(Landroid/view/View;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/e;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/artist/view/e;->a(Lcom/spotify/android/paste/widget/ListItemView;)V

    return-object v0
.end method
