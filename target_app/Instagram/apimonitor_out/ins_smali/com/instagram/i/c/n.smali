.class final Lcom/instagram/i/c/n;
.super Landroid/content/BroadcastReceiver;
.source "NewsfeedFragment.java"
.field final synthetic a:Lcom/instagram/i/c/g;
.field private final b:Landroid/widget/TextView;
.field private final c:Landroid/widget/TextView;
.field private final d:Landroid/support/v4/view/ViewPager;
.field private final e:Landroid/content/IntentFilter;
.method constructor <init>(Lcom/instagram/i/c/g;Landroid/view/View;)V
.registers 5
iput-object p1, p0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;
invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V
sget v0, Lcom/facebook/av;->view_switcher_button_left:I
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/i/c/n;->b:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/i/c/n;->b:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->news_view_action_bar_following_button:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/facebook/av;->view_switcher_button_right:I
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/instagram/i/c/n;->c:Landroid/widget/TextView;
iget-object v0, p0, Lcom/instagram/i/c/n;->c:Landroid/widget/TextView;
sget v1, Lcom/facebook/az;->news_view_action_bar_you_button:I
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
sget v0, Lcom/facebook/av;->newsfeed_pager:I
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lcom/instagram/i/c/n;->d:Landroid/support/v4/view/ViewPager;
new-instance v0, Landroid/content/IntentFilter;
const-string v1, "NewsfeedFragment.INTENT_ACTION_NEWSFEED_MODE_CHANGE"
invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
iput-object v0, p0, Lcom/instagram/i/c/n;->e:Landroid/content/IntentFilter;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/instagram/i/c/n;->e:Landroid/content/IntentFilter;
invoke-static {p0, v0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
.end method
.method public final a(I)V
.registers 7
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;
invoke-static {v0, p1}, Lcom/instagram/i/c/g;->a(Lcom/instagram/i/c/g;I)I
new-instance v3, Landroid/content/Intent;
const-string v0, "NewsfeedFragment.INTENT_ACTION_NEWSFEED_MODE_CHANGE"
invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v4, "NewsfeedFragment.IS_FOLLOWING_SELECTED"
sget-object v0, Lcom/instagram/i/c/g;->a:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ne p1, v0, :cond_36
move v0, v1
:goto_19
invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v0, "NewsfeedFragment.IS_YOU_SELECTED"
sget-object v4, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v4
if-ne p1, v4, :cond_38
:goto_26
invoke-virtual {v3, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-static {v3}, Lcom/instagram/common/u/d;->b(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;
invoke-static {v0}, Lcom/instagram/i/c/g;->a(Lcom/instagram/i/c/g;)Lcom/instagram/i/c/n;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/instagram/i/c/n;->b(I)V
return-void
:cond_36
move v0, v2
goto :goto_19
:cond_38
move v1, v2
goto :goto_26
.end method
.method public final b()V
.registers 1
invoke-static {p0}, Lcom/instagram/common/u/d;->a(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public final b(I)V
.registers 6
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;
invoke-static {v0, p1}, Lcom/instagram/i/c/g;->a(Lcom/instagram/i/c/g;I)I
iget-object v3, p0, Lcom/instagram/i/c/n;->b:Landroid/widget/TextView;
sget-object v0, Lcom/instagram/i/c/g;->a:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ne p1, v0, :cond_3c
move v0, v1
:goto_12
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/instagram/i/c/n;->c:Landroid/widget/TextView;
sget-object v3, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I
move-result v3
if-ne p1, v3, :cond_3e
:goto_1f
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V
iget-object v0, p0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;
invoke-virtual {v0}, Lcom/instagram/i/c/g;->u()Z
move-result v0
if-eqz v0, :cond_3b
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
iget-object v1, p0, Lcom/instagram/i/c/n;->a:Lcom/instagram/i/c/g;
invoke-static {v1}, Lcom/instagram/i/c/g;->b(Lcom/instagram/i/c/g;)Lcom/instagram/i/c/l;
move-result-object v1
invoke-interface {v1}, Lcom/instagram/i/c/l;->U()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
:cond_3b
return-void
:cond_3c
move v0, v2
goto :goto_12
:cond_3e
move v1, v2
goto :goto_1f
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/instagram/i/c/n;->b:Landroid/widget/TextView;
new-instance v1, Lcom/instagram/i/c/o;
invoke-direct {v1, p0}, Lcom/instagram/i/c/o;-><init>(Lcom/instagram/i/c/n;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/instagram/i/c/n;->c:Landroid/widget/TextView;
new-instance v1, Lcom/instagram/i/c/p;
invoke-direct {v1, p0}, Lcom/instagram/i/c/p;-><init>(Lcom/instagram/i/c/n;)V
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.registers 5
const/4 v1, 0x0
const-string v0, "NewsfeedFragment.IS_FOLLOWING_SELECTED"
invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lcom/instagram/i/c/g;->a:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_f
iget-object v1, p0, Lcom/instagram/i/c/n;->d:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1, v0}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V
return-void
:cond_15
const-string v0, "NewsfeedFragment.IS_YOU_SELECTED"
invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v0
if-eqz v0, :cond_24
sget-object v0, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
goto :goto_f
:cond_24
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "unknown mode"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
.end method