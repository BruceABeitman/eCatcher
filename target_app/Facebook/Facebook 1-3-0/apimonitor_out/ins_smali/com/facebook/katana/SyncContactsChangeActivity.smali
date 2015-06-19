.class public Lcom/facebook/katana/SyncContactsChangeActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "SyncContactsChangeActivity.java"
.implements Landroid/view/View$OnClickListener;
.field private mAppSession:Lcom/facebook/katana/binding/AppSession;
.field private mCheckedId:I
.field private mShowUngroupedContacts:Z
.field private mSyncContacts:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/SyncContactsChangeActivity;)Lcom/facebook/katana/binding/AppSession;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
return-object v0
.end method
.method static synthetic access$11(Lcom/facebook/katana/SyncContactsChangeActivity;Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mSyncContacts:Z
return-void
.end method
.method static synthetic access$12(Lcom/facebook/katana/SyncContactsChangeActivity;Z)V
.registers 2
iput-boolean p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mShowUngroupedContacts:Z
return-void
.end method
.method static synthetic access$13(Lcom/facebook/katana/SyncContactsChangeActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mSyncContacts:Z
return v0
.end method
.method static synthetic access$14(Lcom/facebook/katana/SyncContactsChangeActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mShowUngroupedContacts:Z
return v0
.end method
.method static synthetic access$15(Lcom/facebook/katana/SyncContactsChangeActivity;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/facebook/katana/SyncContactsChangeActivity;->checkRadioButton(I)V
return-void
.end method
.method private checkRadioButton(I)V
.registers 8
const v5, 0x7f0b00ac
const v4, 0x7f0b00a9
const v1, 0x7f0b00a6
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RadioButton;
if-ne p1, v1, :cond_32
move v1, v3
:goto_14
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
invoke-virtual {p0, v4}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RadioButton;
if-ne p1, v4, :cond_34
move v1, v3
:goto_20
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RadioButton;
if-ne p1, v5, :cond_36
move v1, v3
:goto_2c
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
iput p1, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mCheckedId:I
return-void
:cond_32
move v1, v2
goto :goto_14
:cond_34
move v1, v2
goto :goto_20
:cond_36
move v1, v2
goto :goto_2c
.end method
.method private saveSettings()V
.registers 5
const/4 v1, 0x0
const/4 v0, 0x0
iget v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mCheckedId:I
sparse-switch v2, :sswitch_data_18
:sswitch_7
:goto_7
new-instance v2, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;
iget-object v3, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
invoke-direct {v2, p0, v3, v1, v0}, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;-><init>(Lcom/facebook/katana/SyncContactsChangeActivity;Lcom/facebook/katana/binding/AppSession;ZZ)V
invoke-virtual {v2}, Lcom/facebook/katana/SyncContactsChangeActivity$UpdateAccountUserTask;->execute()V
return-void
:sswitch_12
const/4 v1, 0x1
const/4 v0, 0x1
goto :goto_7
:sswitch_15
const/4 v1, 0x1
goto :goto_7
nop
:sswitch_data_18
.sparse-switch
0x7f0b00a6 -> :sswitch_12
0x7f0b00a9 -> :sswitch_15
0x7f0b00ac -> :sswitch_7
.end sparse-switch
.end method
.method private setupFatTitleBar()V
.registers 4
const v2, 0x7f0b0025
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f080164
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
const v2, 0x7f0b0026
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f080163
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method public bridge synthetic facebookOnBackPressed()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->facebookOnBackPressed()Z
move-result v0
return v0
.end method
.method public bridge synthetic finish()V
.registers 1
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->finish()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/SyncContactsChangeActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v0
sparse-switch v0, :sswitch_data_28
:goto_7
const-string v1, " - Lcom/facebook/katana/SyncContactsChangeActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:sswitch_8
const v0, 0x7f0b00a6
invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->checkRadioButton(I)V
goto :goto_7
:sswitch_f
const v0, 0x7f0b00a9
invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->checkRadioButton(I)V
goto :goto_7
:sswitch_16
const v0, 0x7f0b00ac
invoke-direct {p0, v0}, Lcom/facebook/katana/SyncContactsChangeActivity;->checkRadioButton(I)V
goto :goto_7
:sswitch_1d
invoke-direct {p0}, Lcom/facebook/katana/SyncContactsChangeActivity;->saveSettings()V
invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsChangeActivity;->finish()V
goto :goto_7
:sswitch_24
invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsChangeActivity;->finish()V
goto :goto_7
:sswitch_data_28
.sparse-switch
0x7f0b0043 -> :sswitch_1d
0x7f0b00a2 -> :sswitch_24
0x7f0b00a5 -> :sswitch_8
0x7f0b00a8 -> :sswitch_f
0x7f0b00ab -> :sswitch_16
.end sparse-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/facebook/katana/SyncContactsChangeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
const v2, 0x7f030042
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->setContentView(I)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v2
iput-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
iget-object v2, p0, Lcom/facebook/katana/SyncContactsChangeActivity;->mAppSession:Lcom/facebook/katana/binding/AppSession;
if-nez v2, :cond_17
invoke-static {p0}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;)V
:goto_16
const-string v1, " - Lcom/facebook/katana/SyncContactsChangeActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_17
invoke-direct {p0}, Lcom/facebook/katana/SyncContactsChangeActivity;->setupFatTitleBar()V
const v2, 0x7f0b0043
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
invoke-virtual {v1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b00a2
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b00a5
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b00a8
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b00ab
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v2, 0x7f0b00af
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsChangeActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V
new-instance v2, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;
invoke-direct {v2, p0}, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;-><init>(Lcom/facebook/katana/SyncContactsChangeActivity;)V
invoke-virtual {v2}, Lcom/facebook/katana/SyncContactsChangeActivity$ReadAccountUserTask;->execute()V
goto :goto_16
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public bridge synthetic startActivity(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarPrimaryActionClickHandler(Landroid/view/View;)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method