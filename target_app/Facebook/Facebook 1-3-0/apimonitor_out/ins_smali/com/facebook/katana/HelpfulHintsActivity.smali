.class public Lcom/facebook/katana/HelpfulHintsActivity;
.super Lcom/facebook/katana/FacebookActivity;
.source "HelpfulHintsActivity.java"
.implements Landroid/view/View$OnClickListener;
.field private mAddAccountMode:Z
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/facebook/katana/FacebookActivity;-><init>()V
return-void
.end method
.method static synthetic access$9(Lcom/facebook/katana/HelpfulHintsActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/HelpfulHintsActivity;->mAddAccountMode:Z
return v0
.end method
.method private goBack()V
.registers 5
const-string v3, "sync_contacts"
invoke-virtual {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->finish()V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/SyncContactsSetupActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "add_account"
iget-boolean v2, p0, Lcom/facebook/katana/HelpfulHintsActivity;->mAddAccountMode:Z
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
iget-boolean v1, p0, Lcom/facebook/katana/HelpfulHintsActivity;->mAddAccountMode:Z
if-eqz v1, :cond_1e
invoke-virtual {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-static {v1, v0}, Lcom/facebook/katana/platform/FacebookAuthenticationService;->copyCallback(Landroid/content/Intent;Landroid/content/Intent;)V
:cond_1e
const-string v1, "sync_contacts"
invoke-virtual {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "sync_contacts"
const/4 v2, -0x1
invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v1
invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/facebook/katana/HelpfulHintsActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method private saveSettings(Lcom/facebook/katana/binding/AppSession;)V
.registers 8
invoke-virtual {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->getIntent()Landroid/content/Intent;
move-result-object v3
const-string v4, "sync_contacts"
const/4 v5, -0x1
invoke-virtual {v3, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const/4 v2, 0x0
const/4 v1, 0x0
sparse-switch v0, :sswitch_data_1e
:goto_10
:sswitch_10
new-instance v3, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;
invoke-direct {v3, p0, p1, v2, v1}, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;-><init>(Lcom/facebook/katana/HelpfulHintsActivity;Lcom/facebook/katana/binding/AppSession;ZZ)V
invoke-virtual {v3}, Lcom/facebook/katana/HelpfulHintsActivity$AddAccountUserTask;->execute()V
return-void
:sswitch_19
const/4 v2, 0x1
const/4 v1, 0x1
goto :goto_10
:sswitch_1c
const/4 v2, 0x1
goto :goto_10
:sswitch_data_1e
.sparse-switch
0x7f0b00a6 -> :sswitch_19
0x7f0b00a9 -> :sswitch_1c
0x7f0b00ac -> :sswitch_10
.end sparse-switch
.end method
.method private setupFatTitleBar()V
.registers 4
const v2, 0x7f0b0025
invoke-virtual {p0, v2}, Lcom/facebook/katana/HelpfulHintsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f080060
invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V
const v2, 0x7f0b0026
invoke-virtual {p0, v2}, Lcom/facebook/katana/HelpfulHintsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v2, 0x7f08005f
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V
return-void
.end method
.method private startDefaultActivity()V
.registers 3
invoke-virtual {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "com.facebook.katana.continuation_intent"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
invoke-static {p0, v0}, Lcom/facebook/katana/util/ApplicationUtils;->startDefaultActivity(Landroid/content/Context;Landroid/content/Intent;)V
return-void
.end method
.method public facebookOnBackPressed()Z
.registers 2
invoke-static {}, Lcom/facebook/katana/util/PlatformUtils;->isEclairOrLater()Z
move-result v0
if-eqz v0, :cond_9
invoke-direct {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->goBack()V
:cond_9
const/4 v0, 0x1
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
const-string v0, " + Lcom/facebook/katana/HelpfulHintsActivity; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v1
packed-switch v1, :pswitch_data_2e
:goto_7
const-string v1, " - Lcom/facebook/katana/HelpfulHintsActivity; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_8
invoke-direct {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->goBack()V
goto :goto_7
:pswitch_c
const/4 v1, 0x1
invoke-static {p0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->setHintsDisplayed(Landroid/content/Context;Z)V
invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_2a
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v0
if-eqz v0, :cond_1f
invoke-direct {p0, v0}, Lcom/facebook/katana/HelpfulHintsActivity;->saveSettings(Lcom/facebook/katana/binding/AppSession;)V
:cond_1f
iget-boolean v1, p0, Lcom/facebook/katana/HelpfulHintsActivity;->mAddAccountMode:Z
if-nez v1, :cond_26
invoke-direct {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->startDefaultActivity()V
:goto_26
:cond_26
invoke-virtual {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->finish()V
goto :goto_7
:cond_2a
invoke-direct {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->startDefaultActivity()V
goto :goto_26
:pswitch_data_2e
.packed-switch 0x7f0b0031
:pswitch_8
:pswitch_c
.end packed-switch
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 13
const-string v1, " + Lcom/facebook/katana/HelpfulHintsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v10, 0x7f0b0031
const-string v1, "UTF-8"
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookActivity;->onCreate(Landroid/os/Bundle;)V
const v1, 0x7f030014
invoke-virtual {p0, v1}, Lcom/facebook/katana/HelpfulHintsActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v3, "add_account"
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z
move-result v1
iput-boolean v1, p0, Lcom/facebook/katana/HelpfulHintsActivity;->mAddAccountMode:Z
const v1, 0x7f0b0030
invoke-virtual {p0, v1}, Lcom/facebook/katana/HelpfulHintsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/webkit/WebView;
:try_start_24
invoke-virtual {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f060002
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
move-result-object v8
invoke-virtual {v8}, Ljava/io/InputStream;->available()I
move-result v9
new-array v6, v9, [B
invoke-virtual {v8, v6}, Ljava/io/InputStream;->read([B)I
invoke-virtual {v8}, Ljava/io/InputStream;->close()V
new-instance v2, Ljava/lang/String;
const-string v1, "UTF-8"
invoke-direct {v2, v6, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
const/4 v1, 0x0
const-string v3, "text/html"
const-string v4, "UTF-8"
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
:try_end_4b
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_4b} :catch_66
invoke-direct {p0}, Lcom/facebook/katana/HelpfulHintsActivity;->setupFatTitleBar()V
invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_6e
invoke-virtual {p0, v10}, Lcom/facebook/katana/HelpfulHintsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:goto_5b
const v1, 0x7f0b0032
invoke-virtual {p0, v1}, Lcom/facebook/katana/HelpfulHintsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v1, " - Lcom/facebook/katana/HelpfulHintsActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_66
move-exception v1
move-object v7, v1
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_6e
invoke-virtual {p0, v10}, Lcom/facebook/katana/HelpfulHintsActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
const/4 v3, 0x4
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_5b
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