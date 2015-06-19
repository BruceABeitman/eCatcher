.class public Lcom/facebook/katana/MailboxTabHostActivity;
.super Lcom/facebook/katana/FacebookTabActivity;
.source "MailboxTabHostActivity.java"
.implements Lcom/facebook/katana/MyTabHost$OnTabChangeListener;
.field public static final EXTRA_TAG:Ljava/lang/String; = "extra_tag"
.field public static final TAG_INBOX:Ljava/lang/String; = "inbox"
.field public static final TAG_OUTBOX:Ljava/lang/String; = "outbox"
.field public static final TAG_UPDATES:Ljava/lang/String; = "updates"
.field private mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
.field private mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
.field private final mTabSpecViews:Ljava/util/List;
.field private final mTabSpecs:Ljava/util/List;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/facebook/katana/FacebookTabActivity;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecs:Ljava/util/List;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecViews:Ljava/util/List;
return-void
.end method
.method static synthetic access$10(Lcom/facebook/katana/MailboxTabHostActivity;Lcom/facebook/katana/MailboxThreadsActivity;)V
.registers 2
iput-object p1, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
return-void
.end method
.method static synthetic access$11(Lcom/facebook/katana/MailboxTabHostActivity;)Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
return-object v0
.end method
.method static synthetic access$9(Lcom/facebook/katana/MailboxTabHostActivity;)Lcom/facebook/katana/MailboxThreadsActivity;
.registers 2
iget-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
return-object v0
.end method
.method public bridge synthetic dispatchKeyEvent(Landroid/view/KeyEvent;)Z
.registers 3
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic facebookOnBackPressed()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->facebookOnBackPressed()Z
move-result v0
return v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 13
const-string v1, " + Lcom/facebook/katana/MailboxTabHostActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
move-result-object v9
if-nez v9, :cond_14
invoke-virtual {p0}, Lcom/facebook/katana/MailboxTabHostActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
invoke-static {p0, v9}, Lcom/facebook/katana/LoginActivity;->toLogin(Landroid/app/Activity;Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/facebook/katana/MailboxTabHostActivity;->finish()V
:goto_13
const-string v1, " - Lcom/facebook/katana/MailboxTabHostActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_14
const v9, 0x7f030045
invoke-virtual {p0, v9}, Lcom/facebook/katana/MailboxTabHostActivity;->setContentView(I)V
const v9, 0x7f0200ba
invoke-virtual {p0, v9}, Lcom/facebook/katana/MailboxTabHostActivity;->setPrimaryActionIcon(I)V
invoke-virtual {p0}, Lcom/facebook/katana/MailboxTabHostActivity;->getTabHost()Landroid/widget/TabHost;
move-result-object v5
check-cast v5, Lcom/facebook/katana/MyTabHost;
const-string v9, "layout_inflater"
invoke-virtual {p0, v9}, Lcom/facebook/katana/MailboxTabHostActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/view/LayoutInflater;
invoke-virtual {p0}, Lcom/facebook/katana/MailboxTabHostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v9, 0x7f0200ac
invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v5}, Lcom/facebook/katana/MyTabHost;->getMyTabWidget()Lcom/facebook/katana/MyTabWidget;
move-result-object v9
invoke-virtual {v9, v2}, Lcom/facebook/katana/MyTabWidget;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V
new-instance v3, Landroid/content/Intent;
const-class v9, Lcom/facebook/katana/MailboxThreadsActivity;
invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v9, Lcom/facebook/katana/provider/MailboxProvider;->INBOX_THREADS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v9, "within_tab"
const/4 v10, 0x1
invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v9, "extra_folder"
const/4 v10, 0x0
invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const v9, 0x7f030046
const/4 v10, 0x0
invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v8
const v9, 0x7f0b00b0
invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
const v9, 0x7f080090
invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V
const-string v9, "inbox"
invoke-virtual {v5, v9, v8}, Lcom/facebook/katana/MyTabHost;->myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;
move-result-object v6
invoke-virtual {v6, v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;
invoke-virtual {v5, v6}, Lcom/facebook/katana/MyTabHost;->addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V
iget-object v9, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecs:Ljava/util/List;
invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v9, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecViews:Ljava/util/List;
invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Landroid/content/Intent;
const-class v9, Lcom/facebook/katana/MailboxThreadsActivity;
invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
sget-object v9, Lcom/facebook/katana/provider/MailboxProvider;->UPDATES_THREADS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v9, "within_tab"
const/4 v10, 0x1
invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v9, "extra_folder"
const/4 v10, 0x4
invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const v9, 0x7f030046
const/4 v10, 0x0
invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v8
const v9, 0x7f0b00b0
invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
const v9, 0x7f0800a2
invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V
const-string v9, "updates"
invoke-virtual {v5, v9, v8}, Lcom/facebook/katana/MyTabHost;->myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;
move-result-object v6
invoke-virtual {v6, v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;
invoke-virtual {v5, v6}, Lcom/facebook/katana/MyTabHost;->addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V
iget-object v9, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecs:Ljava/util/List;
invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v9, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecViews:Ljava/util/List;
invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v3, Landroid/content/Intent;
const-class v9, Lcom/facebook/katana/MailboxThreadsActivity;
invoke-direct {v3, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v9, "within_tab"
const/4 v10, 0x1
invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
sget-object v9, Lcom/facebook/katana/provider/MailboxProvider;->OUTBOX_THREADS_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v3, v9}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
const-string v9, "extra_folder"
const/4 v10, 0x1
invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const v9, 0x7f030046
const/4 v10, 0x0
invoke-virtual {v4, v9, v10}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v8
const v9, 0x7f0b00b0
invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v7
check-cast v7, Landroid/widget/TextView;
const v9, 0x7f080099
invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V
const-string v9, "outbox"
invoke-virtual {v5, v9, v8}, Lcom/facebook/katana/MyTabHost;->myNewTabSpec(Ljava/lang/String;Landroid/view/View;)Lcom/facebook/katana/MyTabHost$TabSpec;
move-result-object v6
invoke-virtual {v6, v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->setContent(Landroid/content/Intent;)Lcom/facebook/katana/MyTabHost$TabSpec;
invoke-virtual {v5, v6}, Lcom/facebook/katana/MyTabHost;->addTab(Lcom/facebook/katana/MyTabHost$TabSpec;)V
iget-object v9, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecs:Ljava/util/List;
invoke-interface {v9, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v9, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecViews:Ljava/util/List;
invoke-interface {v9, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v9, Lcom/facebook/katana/MailboxTabHostActivity$1;
invoke-direct {v9, p0}, Lcom/facebook/katana/MailboxTabHostActivity$1;-><init>(Lcom/facebook/katana/MailboxTabHostActivity;)V
iput-object v9, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
new-instance v9, Lcom/facebook/katana/MailboxTabHostActivity$2;
invoke-direct {v9, p0}, Lcom/facebook/katana/MailboxTabHostActivity$2;-><init>(Lcom/facebook/katana/MailboxTabHostActivity;)V
invoke-virtual {v5, v9}, Lcom/facebook/katana/MyTabHost;->setOnTabChangedListener(Lcom/facebook/katana/MyTabHost$OnTabChangeListener;)V
invoke-virtual {p0}, Lcom/facebook/katana/MailboxTabHostActivity;->getCurrentActivity()Landroid/app/Activity;
move-result-object p1
check-cast p1, Lcom/facebook/katana/MailboxThreadsActivity;
iput-object p1, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
iget-object v9, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
iget-object v10, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mProgressListener:Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;
invoke-virtual {v9, v10}, Lcom/facebook/katana/MailboxThreadsActivity;->setProgressListener(Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;)V
invoke-virtual {p0}, Lcom/facebook/katana/MailboxTabHostActivity;->getIntent()Landroid/content/Intent;
move-result-object v9
const-string v10, "extra_tag"
invoke-virtual {v9, v10}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_144
invoke-virtual {v5, v1}, Lcom/facebook/katana/MyTabHost;->setCurrentTabByTag(Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/facebook/katana/MailboxTabHostActivity;->onTabChanged(Ljava/lang/String;)V
:goto_13f
invoke-virtual {v5, p0}, Lcom/facebook/katana/MyTabHost;->setOnTabChangedListener(Lcom/facebook/katana/MyTabHost$OnTabChangeListener;)V
goto/16 :goto_13
:cond_144
const-string v9, "inbox"
invoke-virtual {v5, v9}, Lcom/facebook/katana/MyTabHost;->setCurrentTabByTag(Ljava/lang/String;)V
const-string v9, "inbox"
invoke-virtual {p0, v9}, Lcom/facebook/katana/MailboxTabHostActivity;->onTabChanged(Ljava/lang/String;)V
goto :goto_13f
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/facebook/katana/MailboxTabHostActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->onDestroy()V
iget-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mCurrentActivity:Lcom/facebook/katana/MailboxThreadsActivity;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/facebook/katana/MailboxThreadsActivity;->setProgressListener(Lcom/facebook/katana/MailboxTabHostActivity$ProgressListener;)V
:cond_d
const-string v1, " - Lcom/facebook/katana/MailboxTabHostActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public bridge synthetic onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onKeyUp(ILandroid/view/KeyEvent;)Z
.registers 4
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z
move-result v0
return v0
.end method
.method public bridge synthetic onSearchRequested()Z
.registers 2
invoke-super {p0}, Lcom/facebook/katana/FacebookTabActivity;->onSearchRequested()Z
move-result v0
return v0
.end method
.method public onTabChanged(Ljava/lang/String;)V
.registers 7
const/4 v0, 0x0
:goto_1
iget-object v3, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecs:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-lt v0, v3, :cond_a
return-void
:cond_a
iget-object v3, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecViews:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/view/View;
const v3, 0x7f0b00b0
invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iget-object v3, p0, Lcom/facebook/katana/MailboxTabHostActivity;->mTabSpecs:Ljava/util/List;
invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v3
check-cast v3, Lcom/facebook/katana/MyTabHost$TabSpec;
invoke-virtual {v3}, Lcom/facebook/katana/MyTabHost$TabSpec;->getTag()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_3e
invoke-virtual {p0}, Lcom/facebook/katana/MailboxTabHostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f070009
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V
:goto_3b
add-int/lit8 v0, v0, 0x1
goto :goto_1
:cond_3e
invoke-virtual {p0}, Lcom/facebook/katana/MailboxTabHostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f07000a
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I
move-result v3
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_3b
.end method
.method public bridge synthetic startActivity(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic startActivityForResult(Landroid/content/Intent;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/facebook/katana/FacebookTabActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method public bridge synthetic titleBarClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->titleBarClickHandler(Landroid/view/View;)V
return-void
.end method
.method public titleBarPrimaryActionClickHandler(Landroid/view/View;)V
.registers 4
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/facebook/katana/MessageComposeActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/facebook/katana/MailboxTabHostActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method public bridge synthetic titleBarSearchClickHandler(Landroid/view/View;)V
.registers 2
invoke-super {p0, p1}, Lcom/facebook/katana/FacebookTabActivity;->titleBarSearchClickHandler(Landroid/view/View;)V
return-void
.end method