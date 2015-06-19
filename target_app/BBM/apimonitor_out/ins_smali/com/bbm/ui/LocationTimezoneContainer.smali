.class public Lcom/bbm/ui/LocationTimezoneContainer;
.super Landroid/widget/RelativeLayout;
.source "LocationTimezoneContainer.java"
.field private a:Lcom/bbm/ui/InlineImageTextView;
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 6
invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030133
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
return-void
.end method
.method protected onFinishInflate()V
.registers 2
invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V
const v0, 0x7f0a05c2
invoke-virtual {p0, v0}, Lcom/bbm/ui/LocationTimezoneContainer;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/LocationTimezoneContainer;->a:Lcom/bbm/ui/InlineImageTextView;
return-void
.end method
.method public setLocation(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/LocationTimezoneContainer;->a:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, p1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
return-void
.end method