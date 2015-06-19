.class public Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;
.super Landroid/widget/LinearLayout;
.source "ChannelNotificationListHeaderView.java"
.field private final a:Landroid/widget/TextView;
.field private final b:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030120
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a0181
invoke-virtual {p0, v0}, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->a:Landroid/widget/TextView;
const v0, 0x7f0a057a
invoke-virtual {p0, v0}, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->b:Landroid/widget/TextView;
return-void
.end method
.method public setLeftLabel(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->a:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->a:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_11
return-void
.end method
.method public setRightLabel(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->b:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/bbm/ui/channel/views/ChannelNotificationListHeaderView;->b:Landroid/widget/TextView;
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_11
return-void
.end method