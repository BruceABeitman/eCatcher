.class public Lcom/bbm/ui/SmsActionBarView;
.super Landroid/widget/RelativeLayout;
.source "SmsActionBarView.java"
.field private a:Landroid/widget/RelativeLayout;
.field private b:Landroid/widget/LinearLayout;
.field private c:Lcom/bbm/ui/fy;
.field private final d:Landroid/view/View$OnClickListener;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->c:Lcom/bbm/ui/fy;
new-instance v0, Lcom/bbm/ui/fx;
invoke-direct {v0, p0}, Lcom/bbm/ui/fx;-><init>(Lcom/bbm/ui/SmsActionBarView;)V
iput-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->d:Landroid/view/View$OnClickListener;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030147
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/SmsActionBarView;)Landroid/widget/RelativeLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->a:Landroid/widget/RelativeLayout;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/SmsActionBarView;)Landroid/widget/LinearLayout;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->b:Landroid/widget/LinearLayout;
return-object v0
.end method
.method public final a(I)V
.registers 5
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setActivated(Z)V
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setActivated(Z)V
packed-switch p1, :pswitch_data_22
:goto_f
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->c:Lcom/bbm/ui/fy;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->c:Lcom/bbm/ui/fy;
:cond_15
return-void
:pswitch_16
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->a:Landroid/widget/RelativeLayout;
invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setActivated(Z)V
goto :goto_f
:pswitch_1c
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setActivated(Z)V
goto :goto_f
:pswitch_data_22
.packed-switch 0x0
:pswitch_16
:pswitch_1c
.end packed-switch
.end method
.method protected onFinishInflate()V
.registers 3
const v0, 0x7f0a064a
invoke-virtual {p0, v0}, Lcom/bbm/ui/SmsActionBarView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->a:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->a:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/bbm/ui/SmsActionBarView;->d:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a064c
invoke-virtual {p0, v0}, Lcom/bbm/ui/SmsActionBarView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->b:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/bbm/ui/SmsActionBarView;->b:Landroid/widget/LinearLayout;
iget-object v1, p0, Lcom/bbm/ui/SmsActionBarView;->d:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/bbm/ui/SmsActionBarView;->a(I)V
return-void
.end method
.method public setOnTabClickListener(Lcom/bbm/ui/fy;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/SmsActionBarView;->c:Lcom/bbm/ui/fy;
return-void
.end method