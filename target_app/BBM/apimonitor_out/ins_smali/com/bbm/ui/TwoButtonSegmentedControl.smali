.class public Lcom/bbm/ui/TwoButtonSegmentedControl;
.super Landroid/widget/RelativeLayout;
.source "TwoButtonSegmentedControl.java"
.field private a:Landroid/widget/LinearLayout;
.field private b:Landroid/widget/LinearLayout;
.field private c:Lcom/bbm/ui/hc;
.field private final d:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/TwoButtonSegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/TwoButtonSegmentedControl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 9
invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->c:Lcom/bbm/ui/hc;
new-instance v0, Lcom/bbm/ui/hb;
invoke-direct {v0, p0}, Lcom/bbm/ui/hb;-><init>(Lcom/bbm/ui/TwoButtonSegmentedControl;)V
iput-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->d:Landroid/view/View$OnClickListener;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03014c
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a0643
invoke-virtual {p0, v0}, Lcom/bbm/ui/TwoButtonSegmentedControl;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0a0645
invoke-virtual {p0, v1}, Lcom/bbm/ui/TwoButtonSegmentedControl;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;
move-result-object v2
sget-object v3, Lcom/bbm/ad;->ThreeButtonSegmentControl:[I
const/4 v4, 0x0
invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;
move-result-object v2
:try_start_35
const-string v3, "Preview"
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const/4 v0, 0x2
invoke-virtual {v2, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;
const-string v0, "Channel"
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:try_end_43
.catchall {:try_start_35 .. :try_end_43} :catchall_60
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {p0}, Lcom/bbm/ui/TwoButtonSegmentedControl;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b030e
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
invoke-virtual {p0}, Lcom/bbm/ui/TwoButtonSegmentedControl;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b0319
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {p0, v0, v1, v0, v1}, Lcom/bbm/ui/TwoButtonSegmentedControl;->setPadding(IIII)V
return-void
:catchall_60
move-exception v0
invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V
throw v0
.end method
.method static synthetic a(Lcom/bbm/ui/TwoButtonSegmentedControl;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->a:Landroid/widget/LinearLayout;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/TwoButtonSegmentedControl;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->b:Landroid/widget/LinearLayout;
return-object v0
.end method
.method public final a(I)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->a:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V
if-nez p1, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->a:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V
:goto_13
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->c:Lcom/bbm/ui/hc;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->c:Lcom/bbm/ui/hc;
:cond_19
return-void
:cond_1a
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V
goto :goto_13
.end method
.method protected onFinishInflate()V
.registers 3
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a0642
invoke-virtual {p0, v0}, Lcom/bbm/ui/TwoButtonSegmentedControl;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->a:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->a:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->d:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0644
invoke-virtual {p0, v0}, Lcom/bbm/ui/TwoButtonSegmentedControl;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->b:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->b:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->d:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/bbm/ui/TwoButtonSegmentedControl;->a(I)V
return-void
.end method
.method public setOnOptionSelectedListener(Lcom/bbm/ui/hc;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/TwoButtonSegmentedControl;->c:Lcom/bbm/ui/hc;
return-void
.end method