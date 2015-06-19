.class public Lcom/facebook/katana/SyncContactsSetupActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "SyncContactsSetupActivity.java"
.implements Landroid/view/View$OnClickListener;
.field public static final EXTRA_SYNC_CONTACTS:Ljava/lang/String; = "sync_contacts"
.field private mAddAccountMode:Z
.field private mCheckedId:I
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V
return-void
.end method
.method private checkRadioButton(I)V
.registers 8
const v5, 0x7f0b00ac
const v4, 0x7f0b00a9
const v1, 0x7f0b00a6
const/4 v3, 0x1
const/4 v2, 0x0
invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RadioButton;
if-ne p1, v1, :cond_32
move v1, v3
:goto_14
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
invoke-virtual {p0, v4}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RadioButton;
if-ne p1, v4, :cond_34
move v1, v3
:goto_20
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
invoke-virtual {p0, v5}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RadioButton;
if-ne p1, v5, :cond_36
move v1, v3
:goto_2c
invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V
iput p1, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->mCheckedId:I
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
.method private onBackKeyPressed()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method private setupFatTitleBar()V
.registers 4
const v2, 0x7f0b0025
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f080164
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
const v2, 0x7f0b0026
invoke-virtual {p0, v2}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
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
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/facebook/katana/SyncContactsSetupActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v4, "com.facebook.katana.continuation_intent"
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v2
packed-switch v2, :pswitch_data_68
:pswitch_9
:goto_9
const-string v1, " - Lcom/facebook/katana/SyncContactsSetupActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_a
const v2, 0x7f0b00a6
invoke-direct {p0, v2}, Lcom/facebook/katana/SyncContactsSetupActivity;->checkRadioButton(I)V
goto :goto_9
:pswitch_11
const v2, 0x7f0b00a9
invoke-direct {p0, v2}, Lcom/facebook/katana/SyncContactsSetupActivity;->checkRadioButton(I)V
goto :goto_9
:pswitch_18
const v2, 0x7f0b00ac
invoke-direct {p0, v2}, Lcom/facebook/katana/SyncContactsSetupActivity;->checkRadioButton(I)V
goto :goto_9
:pswitch_1f
const/4 v2, 0x1
invoke-static {p0, v2}, Lcom/facebook/katana/provider/UserValuesManager;->setContactsSyncSetupDisplayed(Landroid/content/Context;Z)V
invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "com.facebook.katana.continuation_intent"
invoke-virtual {v2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->getHintsDisplayed(Landroid/content/Context;)Z
move-result v2
if-nez v2, :cond_63
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/facebook/katana/HelpfulHintsActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "add_account"
iget-boolean v3, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->mAddAccountMode:Z
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-boolean v2, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->mAddAccountMode:Z
if-eqz v2, :cond_4e
invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-static {v2, v1}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->copyCallback(Landroid/content/Intent;Landroid/content/Intent;)V
:cond_4e
const-string v2, "sync_contacts"
iget v3, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->mCheckedId:I
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
if-eqz v0, :cond_5c
const-string v2, "com.facebook.katana.continuation_intent"
invoke-virtual {v1, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
:cond_5c
invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->startActivity(Landroid/content/Intent;)V
:goto_5f
invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->finish()V
goto :goto_9
:cond_63
invoke-static {p0, v0}, Lcom/facebook/katana/util/ApplicationUtils;->startDefaultActivity(Landroid/content/Context;Landroid/content/Intent;)V
goto :goto_5f
nop
:pswitch_data_68
.packed-switch 0x7f0b00a4
:pswitch_1f
:pswitch_a
:pswitch_9
:pswitch_9
:pswitch_11
:pswitch_9
:pswitch_9
:pswitch_18
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/facebook/katana/SyncContactsSetupActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030043
invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "add_account"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lcom/facebook/katana/SyncContactsSetupActivity;->mAddAccountMode:Z
invoke-direct {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->setupFatTitleBar()V
invoke-virtual {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "sync_contacts"
const v3, 0x7f0b00a9
invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
invoke-direct {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->checkRadioButton(I)V
const v1, 0x7f0b00a4
invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0b00a5
invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0b00a8
invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0b00ab
invoke-virtual {p0, v1}, Lcom/facebook/katana/SyncContactsSetupActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/facebook/katana/SyncContactsSetupActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x4
if-ne p1, v0, :cond_1a
invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z
move-result v0
if-eqz v0, :cond_12
invoke-static {p1, p2}, Lcom/facebook/katana/util/EclairKeyHandler;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_1a
move v0, v1
:goto_11
return v0
:cond_12
invoke-direct {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->onBackKeyPressed()Z
move-result v0
if-eqz v0, :cond_1a
move v0, v1
goto :goto_11
:cond_1a
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_11
.end method
.method public onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
const/4 v0, 0x4
if-ne p1, v0, :cond_17
invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z
move-result v0
if-eqz v0, :cond_17
invoke-static {p1, p2}, Lcom/facebook/katana/util/EclairKeyHandler;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
if-eqz v0, :cond_17
invoke-direct {p0}, Lcom/facebook/katana/SyncContactsSetupActivity;->onBackKeyPressed()Z
move-result v0
if-eqz v0, :cond_17
const/4 v0, 0x1
:goto_16
return v0
:cond_17
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
goto :goto_16
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