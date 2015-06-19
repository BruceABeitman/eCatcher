.class public Lcom/twidroid/activity/UberSocialAccounts;
.super Lcom/twidroid/activity/UberSocialBaseListActivity;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field static final b:Ljava/lang/String; = "TwidroydAccounts"
.field private static final g:I = 0x2
.field  c:Ljava/util/ArrayList;
.field  d:Lcom/twidroid/activity/y;
.field  e:Lcom/twidroid/net/a/a/c;
.field private f:Landroid/database/sqlite/SQLiteDatabase;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->c:Ljava/util/ArrayList;
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->f:Landroid/database/sqlite/SQLiteDatabase;
return-void
.end method
.method public e()V
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->f:Landroid/database/sqlite/SQLiteDatabase;
invoke-static {v0}, Lcom/twidroid/model/twitter/c;->a(Landroid/database/sqlite/SQLiteDatabase;)Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->c:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->d:Lcom/twidroid/activity/y;
invoke-virtual {v0}, Lcom/twidroid/activity/y;->notifyDataSetChanged()V
return-void
.end method
.method public f()V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->g()V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->finish()V
return-void
.end method
.method public g()V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccounts;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->finish()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/UberSocialAccounts; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030067
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccounts;->setContentView(I)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->J:Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c01a5
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
new-instance v0, Lcom/twidroid/activity/y;
invoke-direct {v0, p0, p0}, Lcom/twidroid/activity/y;-><init>(Lcom/twidroid/activity/UberSocialAccounts;Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->d:Lcom/twidroid/activity/y;
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->e()V
invoke-static {p0}, Lcom/twidroid/net/a/a/c;->b(Landroid/content/Context;)Lcom/twidroid/net/a/a/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->e:Lcom/twidroid/net/a/a/c;
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->e:Lcom/twidroid/net/a/a/c;
if-eqz v0, :cond_5f
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030052
const/4 v2, 0x0
const/4 v3, 0x0
invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f09010e
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget-object v2, p0, Lcom/twidroid/activity/UberSocialAccounts;->e:Lcom/twidroid/net/a/a/c;
invoke-virtual {v2}, Lcom/twidroid/net/a/a/c;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f09010f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/twidroid/activity/UberSocialAccounts$1;
invoke-direct {v2, p0, v1}, Lcom/twidroid/activity/UberSocialAccounts$1;-><init>(Lcom/twidroid/activity/UberSocialAccounts;Landroid/view/View;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
:cond_5f
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->d:Lcom/twidroid/activity/y;
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccounts;->a(Landroid/widget/ListAdapter;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccounts; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
packed-switch p1, :pswitch_data_2e
const/4 v0, 0x0
:goto_4
return-object v0
:pswitch_5
new-instance v0, Landroid/app/AlertDialog$Builder;
invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
const v1, 0x7f020067
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "Connection failed"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const-string v1, "Twidroyd"
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
move-result-object v0
const v1, 0x7f0c002c
new-instance v2, Lcom/twidroid/activity/UberSocialAccounts$2;
invoke-direct {v2, p0}, Lcom/twidroid/activity/UberSocialAccounts$2;-><init>(Lcom/twidroid/activity/UberSocialAccounts;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto :goto_4
:pswitch_data_2e
.packed-switch 0x1
:pswitch_5
.end packed-switch
.end method
.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialAccounts; onCreateOptionsMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x2
const/4 v2, 0x1
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z
const/4 v0, 0x0
const v1, 0x7f0c01a6
invoke-interface {p1, v0, v3, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;
move-result-object v0
invoke-static {v0, v3}, Landroid/support/v4/view/MenuItemCompat;->setShowAsAction(Landroid/view/MenuItem;I)V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccounts; onCreateOptionsMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v2
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/UberSocialAccounts; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onDestroy()V
new-instance v0, Landroid/content/Intent;
const-string v1, "ubersocial.broadcast.uberbar.accountslistmodified"
invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccounts;->sendBroadcast(Landroid/content/Intent;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccounts; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialAccounts; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v1, Landroid/content/Intent;
const-class v0, Lcom/twidroid/activity/UberSocialAccount;
invoke-direct {v1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialAccounts;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccounts;->startActivity(Landroid/content/Intent;)V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccounts; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/twidroid/activity/UberSocialAccounts; onOptionsItemSelected "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I
move-result v0
packed-switch v0, :pswitch_data_1e
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
move-result v0
:goto_b
move v2, v0
const-string v1, " - Lcom/twidroid/activity/UberSocialAccounts; onOptionsItemSelected"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:pswitch_c
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/activity/UberSocialAccount;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "-1"
invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccounts;->startActivity(Landroid/content/Intent;)V
const/4 v0, 0x1
goto :goto_b
:pswitch_data_1e
.packed-switch 0x2
:pswitch_c
.end packed-switch
.end method
.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
.registers 4
const/4 v1, 0x1
const/4 v0, 0x2
invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;
move-result-object v0
invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;
return v1
.end method
.method public onResume()V
.registers 4
const-string v1, " + Lcom/twidroid/activity/UberSocialAccounts; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onResume()V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->e()V
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->getApplicationContext()Landroid/content/Context;
move-result-object v1
const-class v2, Lcom/twidroid/service/MuteSyncService;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/UberSocialAccounts;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
const-string v1, " - Lcom/twidroid/activity/UberSocialAccounts; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/UberSocialAccounts; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onStart()V
invoke-virtual {p0}, Lcom/twidroid/activity/UberSocialAccounts;->e()V
const-string v1, " - Lcom/twidroid/activity/UberSocialAccounts; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public r_()V
.registers 1
return-void
.end method