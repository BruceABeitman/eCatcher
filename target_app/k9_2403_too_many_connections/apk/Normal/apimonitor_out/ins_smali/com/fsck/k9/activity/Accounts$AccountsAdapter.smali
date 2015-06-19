.class  Lcom/fsck/k9/activity/Accounts$AccountsAdapter;
.super Landroid/widget/ArrayAdapter;
.source "Accounts.java"
.field final synthetic this$0:Lcom/fsck/k9/activity/Accounts;
.method public constructor <init>(Lcom/fsck/k9/activity/Accounts;[Lcom/fsck/k9/Account;)V
.registers 4
iput-object p1, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;
const/4 v0, 0x0
invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 13
const/16 v6, 0x8
const/4 v8, 0x0
invoke-virtual {p0, p1}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/fsck/k9/Account;
if-eqz p2, :cond_b3
move-object v3, p2
:goto_c
invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
if-nez v1, :cond_46
new-instance v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;
invoke-direct {v1, p0}, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;-><init>(Lcom/fsck/k9/activity/Accounts$AccountsAdapter;)V
const v4, 0x7f0b002d
invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iput-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->description:Landroid/widget/TextView;
const v4, 0x7f0b002e
invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iput-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;
const v4, 0x7f0b002f
invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
check-cast v4, Landroid/widget/TextView;
iput-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCount:Landroid/widget/TextView;
const v4, 0x7f0b002c
invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v4
iput-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;
invoke-virtual {v3, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:cond_46
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->description:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getEmail()Ljava/lang/String;
move-result-object v4
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getDescription()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_6b
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->email:Landroid/widget/TextView;
invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V
:cond_6b
iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;
#getter for: Lcom/fsck/k9/activity/Accounts;->unreadMessageCounts:Ljava/util/concurrent/ConcurrentHashMap;
invoke-static {v4}, Lcom/fsck/k9/activity/Accounts;->access$300(Lcom/fsck/k9/activity/Accounts;)Ljava/util/concurrent/ConcurrentHashMap;
move-result-object v4
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getUuid()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
if-eqz v2, :cond_c4
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCount:Landroid/widget/TextView;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCount:Landroid/widget/TextView;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v5
if-lez v5, :cond_c2
move v5, v8
:goto_93
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V
:goto_96
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;
sget-object v5, Lcom/fsck/k9/K9;->COLOR_CHIP_RES_IDS:[I
invoke-virtual {v0}, Lcom/fsck/k9/Account;->getAccountNumber()I
move-result v6
sget-object v7, Lcom/fsck/k9/K9;->COLOR_CHIP_RES_IDS:[I
array-length v7, v7
rem-int/2addr v6, v7
aget v5, v5, v6
invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundResource(I)V
if-nez v2, :cond_ca
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-virtual {v4, v8}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
:goto_b2
return-object v3
:cond_b3
iget-object v4, p0, Lcom/fsck/k9/activity/Accounts$AccountsAdapter;->this$0:Lcom/fsck/k9/activity/Accounts;
invoke-virtual {v4}, Lcom/fsck/k9/activity/Accounts;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v4
const v5, 0x7f030009
invoke-virtual {v4, v5, p3, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v3
goto/16 :goto_c
:cond_c2
move v5, v6
goto :goto_93
:cond_c4
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->newMessageCount:Landroid/widget/TextView;
invoke-virtual {v4, v6}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_96
:cond_ca
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v4
if-nez v4, :cond_dc
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v4
const/16 v5, 0x7f
invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
goto :goto_b2
:cond_dc
iget-object v4, v1, Lcom/fsck/k9/activity/Accounts$AccountsAdapter$AccountViewHolder;->chip:Landroid/view/View;
invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;
move-result-object v4
const/16 v5, 0xff
invoke-virtual {v4, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
goto :goto_b2
.end method