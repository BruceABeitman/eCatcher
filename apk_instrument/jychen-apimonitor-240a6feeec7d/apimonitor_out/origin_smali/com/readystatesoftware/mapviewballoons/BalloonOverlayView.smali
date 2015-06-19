.class public Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;
.super Landroid/widget/FrameLayout;
.source "BalloonOverlayView.java"


# instance fields
.field private layout:Landroid/widget/LinearLayout;

.field private snippet:Landroid/widget/TextView;

.field private title:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .registers 10

    const/16 v3, 0xa

    const/4 v6, -0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v3, v5, v3, p2}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->setPadding(IIII)V

    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const-string v3, "layout_inflater"

    invoke-virtual {p1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const/high16 v3, 0x7f03

    iget-object v4, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f090001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    const v3, 0x7f090002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v6, v6}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v5, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object v3, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v3, v1}, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public setData(Lcom/google/android/maps/OverlayItem;)V
    .registers 6

    const/16 v3, 0x8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->layout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1c
    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_37

    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/google/android/maps/OverlayItem;->getSnippet()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_30
    return-void

    :cond_31
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->title:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1c

    :cond_37
    iget-object v0, p0, Lcom/readystatesoftware/mapviewballoons/BalloonOverlayView;->snippet:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_30
.end method
