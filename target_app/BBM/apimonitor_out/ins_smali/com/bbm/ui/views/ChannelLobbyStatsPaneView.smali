.class public Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;
.super Lcom/bbm/ui/views/ShadowFrame;
.source "ChannelLobbyStatsPaneView.java"
.field public a:Ljava/lang/String;
.field public final b:Lcom/bbm/j/k;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/TextView;
.field private e:Landroid/widget/TextView;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;)V
new-instance v0, Lcom/bbm/ui/views/n;
invoke-direct {v0, p0}, Lcom/bbm/ui/views/n;-><init>(Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;)V
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->b:Lcom/bbm/j/k;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Lcom/bbm/ui/views/n;
invoke-direct {v0, p0}, Lcom/bbm/ui/views/n;-><init>(Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;)V
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->b:Lcom/bbm/j/k;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/views/ShadowFrame;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Lcom/bbm/ui/views/n;
invoke-direct {v0, p0}, Lcom/bbm/ui/views/n;-><init>(Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;)V
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->b:Lcom/bbm/j/k;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;)V
.registers 7
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->a:Ljava/lang/String;
const-string v2, "AllTime"
invoke-static {v1, v2}, Lcom/bbm/ui/activities/cd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->Q(Ljava/lang/String;)Lcom/bbm/d/em;
move-result-object v1
invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->c:Landroid/widget/TextView;
iget-object v0, v1, Lcom/bbm/d/em;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_42
const-string v0, "0"
:goto_20
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->d:Landroid/widget/TextView;
iget-object v0, v1, Lcom/bbm/d/em;->i:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_4d
const-string v0, "0"
:goto_2f
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v3, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->e:Landroid/widget/TextView;
iget-object v0, v1, Lcom/bbm/d/em;->f:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_58
const-string v0, "0"
:goto_3e
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_42
iget-object v0, v1, Lcom/bbm/d/em;->h:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v0
goto :goto_20
:cond_4d
iget-object v0, v1, Lcom/bbm/d/em;->i:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v4
invoke-virtual {v2, v4, v5}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v0
goto :goto_2f
:cond_58
iget-object v0, v1, Lcom/bbm/d/em;->f:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v0
invoke-virtual {v2, v0, v1}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v0
goto :goto_3e
.end method
.method protected final a(Landroid/content/Context;)V
.registers 4
invoke-super {p0, p1}, Lcom/bbm/ui/views/ShadowFrame;->a(Landroid/content/Context;)V
const v0, 0x7f030045
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->setViewStub(I)V
const v0, 0x7f0a0249
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0e06cc
invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0a0266
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->c:Landroid/widget/TextView;
const v0, 0x7f0a0269
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->d:Landroid/widget/TextView;
const v0, 0x7f0a026c
invoke-virtual {p0, v0}, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->e:Landroid/widget/TextView;
return-void
.end method
.method public setChannel(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/views/ChannelLobbyStatsPaneView;->a:Ljava/lang/String;
return-void
.end method