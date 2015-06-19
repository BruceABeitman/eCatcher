.class public Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;
.super Lcom/bbm/ui/activities/ev;
.source "ChannelInviteToBBM.java"
.field private a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:Ljava/lang/String;
.field private d:Lcom/bbm/ui/ObservingImageView;
.field private e:Landroid/widget/ProgressBar;
.field private f:Lcom/bbm/ui/InlineImageTextView;
.field private g:Lcom/bbm/ui/ActionBarItem;
.field private h:Lcom/bbm/ui/ActionBarItem;
.field private i:Lcom/bbm/j/k;
.field private j:Lcom/bbm/ui/FooterActionBar;
.field private k:Landroid/widget/ImageView;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)V
.registers 4
const/4 v2, 0x0
const/4 v1, 0x4
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->j:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->getVisibility()I
move-result v0
if-ne v0, v1, :cond_1a
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->j:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v2}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->k:Landroid/widget/ImageView;
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->f:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
:goto_19
:cond_19
return-void
:cond_1a
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->j:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0}, Lcom/bbm/ui/FooterActionBar;->getVisibility()I
move-result v0
if-nez v0, :cond_19
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->j:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->k:Landroid/widget/ImageView;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->f:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
goto :goto_19
.end method
.method static synthetic b(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->e:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/FooterActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->j:Lcom/bbm/ui/FooterActionBar;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Lcom/bbm/ui/ActionBarItem;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->h:Lcom/bbm/ui/ActionBarItem;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->a:Ljava/lang/String;
return-object v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/bbm/ui/channel/activities/ChannelInviteToBBM; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030010
invoke-virtual {p0, v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "imageUri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->a:Ljava/lang/String;
const-string v1, "userName"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->b:Ljava/lang/String;
const-string v1, "userUri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->c:Ljava/lang/String;
const v0, 0x7f0a0100
invoke-virtual {p0, v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d:Lcom/bbm/ui/ObservingImageView;
new-instance v1, Lcom/bbm/ui/channel/activities/a;
invoke-direct {v1, p0}, Lcom/bbm/ui/channel/activities/a;-><init>(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a00ff
invoke-virtual {p0, v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->e:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->e:Landroid/widget/ProgressBar;
invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V
new-instance v0, Lcom/bbm/ui/channel/activities/b;
invoke-direct {v0, p0}, Lcom/bbm/ui/channel/activities/b;-><init>(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)V
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->i:Lcom/bbm/j/k;
const v0, 0x7f0a0101
invoke-virtual {p0, v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->f:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0a00be
invoke-virtual {p0, v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->j:Lcom/bbm/ui/FooterActionBar;
new-instance v0, Lcom/bbm/ui/ActionBarItem;
const v1, 0x7f020221
const v2, 0x7f0e04b1
invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->g:Lcom/bbm/ui/ActionBarItem;
new-instance v0, Lcom/bbm/ui/ActionBarItem;
const v1, 0x7f0203bc
const v2, 0x7f0e0557
invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/ActionBarItem;-><init>(Landroid/content/Context;II)V
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->h:Lcom/bbm/ui/ActionBarItem;
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->j:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v3}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
new-instance v0, Lcom/bbm/ui/channel/activities/c;
invoke-direct {v0, p0}, Lcom/bbm/ui/channel/activities/c;-><init>(Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;)V
iget-object v1, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->j:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v1, v0}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
const v0, 0x7f0a0136
invoke-virtual {p0, v0}, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->k:Landroid/widget/ImageView;
invoke-static {p0}, Lcom/bbm/util/b/h;->a(Landroid/app/Activity;)Landroid/graphics/Point;
move-result-object v0
iget v0, v0, Landroid/graphics/Point;->x:I
iget-object v1, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I
iget-object v1, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Lcom/bbm/ui/ObservingImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->d:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->requestLayout()V
const-string v1, " - Lcom/bbm/ui/channel/activities/ChannelInviteToBBM; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/channel/activities/ChannelInviteToBBM; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->i:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
const-string v1, " - Lcom/bbm/ui/channel/activities/ChannelInviteToBBM; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/channel/activities/ChannelInviteToBBM; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
iget-object v0, p0, Lcom/bbm/ui/channel/activities/ChannelInviteToBBM;->i:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
const-string v1, " - Lcom/bbm/ui/channel/activities/ChannelInviteToBBM; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method