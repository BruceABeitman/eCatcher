.class public Lcom/bbm/ui/QuickShareCameraView;
.super Lcom/bbm/ui/QuickShareBaseView;
.source "QuickShareCameraView.java"


# instance fields
.field private final a:Landroid/widget/ImageButton;

.field private b:Lcom/bbm/ui/ep;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/bbm/ui/QuickShareCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/QuickShareCameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7

    invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/QuickShareBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03013d

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    const v0, 0x7f0a0624

    invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareCameraView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/bbm/ui/QuickShareCameraView;->a:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/bbm/ui/QuickShareCameraView;->a:Landroid/widget/ImageButton;

    new-instance v1, Lcom/bbm/ui/eo;

    invoke-direct {v1, p0}, Lcom/bbm/ui/eo;-><init>(Lcom/bbm/ui/QuickShareCameraView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/QuickShareCameraView;)Lcom/bbm/ui/ep;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/QuickShareCameraView;->b:Lcom/bbm/ui/ep;

    return-object v0
.end method


# virtual methods
.method public final a()V
    .registers 3

    invoke-super {p0}, Lcom/bbm/ui/QuickShareBaseView;->a()V

    iget-object v0, p0, Lcom/bbm/ui/QuickShareCameraView;->b:Lcom/bbm/ui/ep;

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/QuickShareCameraView;->b:Lcom/bbm/ui/ep;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/bbm/ui/ep;->a(Z)V

    :cond_d
    return-void
.end method

.method public setOnQuickShareCameraListener(Lcom/bbm/ui/ep;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/QuickShareCameraView;->b:Lcom/bbm/ui/ep;

    return-void
.end method
