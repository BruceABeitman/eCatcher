.class public final Lcom/instagram/creation/video/ui/r;
.super Landroid/widget/PopupWindow;
.source "TooltipPopup.java"
.field private a:Lcom/instagram/creation/video/ui/s;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)V
.registers 6
const/4 v2, -0x2
invoke-static {p1, p2}, Lcom/instagram/creation/video/ui/r;->a(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-direct {p0, v0, v2, v2, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;IIZ)V
iput-object p2, p0, Lcom/instagram/creation/video/ui/r;->a:Lcom/instagram/creation/video/ui/s;
return-void
.end method
.method private static a(Landroid/content/Context;Lcom/instagram/creation/video/ui/s;)Landroid/view/View;
.registers 7
const/16 v4, 0x8
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->tooltip_popup_window:I
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
sget v0, Lcom/facebook/av;->tooltip_popup_window_container:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->a(Lcom/instagram/creation/video/ui/s;)I
move-result v2
invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V
sget v0, Lcom/facebook/av;->tooltip_bold_text:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->b(Lcom/instagram/creation/video/ui/s;)I
move-result v2
if-eqz v2, :cond_46
invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->b(Lcom/instagram/creation/video/ui/s;)I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
:goto_30
sget v0, Lcom/facebook/av;->tooltip_plain_text:I
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->c(Lcom/instagram/creation/video/ui/s;)I
move-result v2
if-eqz v2, :cond_4a
invoke-static {p1}, Lcom/instagram/creation/video/ui/s;->c(Lcom/instagram/creation/video/ui/s;)I
move-result v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
:goto_45
return-object v1
:cond_46
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_30
:cond_4a
invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_45
.end method
.method public final a()Lcom/instagram/creation/video/ui/s;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/video/ui/r;->a:Lcom/instagram/creation/video/ui/s;
return-object v0
.end method