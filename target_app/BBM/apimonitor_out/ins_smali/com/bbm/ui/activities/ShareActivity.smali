.class public Lcom/bbm/ui/activities/ShareActivity;
.super Lcom/bbm/ui/activities/ev;
.source "ShareActivity.java"
.implements Lcom/bbm/ui/fq;
.field  a:Lcom/bbm/ui/activities/ahb;
.field private final b:Lcom/bbm/d/a;
.field private c:Landroid/widget/ListView;
.field private d:Z
.field private e:Lcom/bbm/ui/SearchEditText;
.field private f:Lcom/bbm/d/b/n;
.field private g:Lcom/bbm/util/cr;
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Lcom/bbm/ui/activities/ev;-><init>()V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->b:Lcom/bbm/d/a;
new-instance v0, Lcom/bbm/util/cr;
const-string v1, ""
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->g:Lcom/bbm/util/cr;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ShareActivity;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
invoke-static {p1, p2, p3}, Lcom/bbm/util/dm;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/app/AlertDialog$Builder;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/agz;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/agz;-><init>(Lcom/bbm/ui/activities/ShareActivity;)V
invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ShareActivity;Ljava/lang/String;)V
.registers 6
const/4 v0, 0x0
:try_start_1
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
if-eqz v1, :cond_80
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "android.intent.extra.TEXT"
invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1d
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "android.intent.extra.TEXT"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_1d
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "android.intent.extra.SUBJECT"
invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_7e
if-nez v0, :cond_2d
const-string v0, ""
:cond_2d
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v2, "android.intent.extra.SUBJECT"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_7e
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
const-string v3, "android.intent.extra.SUBJECT"
invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object v1, v0
:goto_5f
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v2, "android.intent.extra.STREAM"
invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
invoke-static {p0, p1, v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
:goto_6e
:try_end_6e
.catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6e} :catch_79
const-string v0, "open"
const-string v1, "Conversation"
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->finish()V
return-void
:catch_79
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_6e
:cond_7e
move-object v1, v0
goto :goto_5f
:cond_80
move-object v1, v0
goto :goto_5f
.end method
.method static synthetic a(Lcom/bbm/ui/activities/ShareActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/ShareActivity;->d:Z
return v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/ShareActivity;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->g:Lcom/bbm/util/cr;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/activities/ShareActivity;)Lcom/bbm/d/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->b:Lcom/bbm/d/a;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->f:Lcom/bbm/d/b/n;
invoke-virtual {v0, p1}, Lcom/bbm/d/b/n;->a(Ljava/lang/String;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 7
const-string v1, " + Lcom/bbm/ui/activities/ShareActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, -0x1
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f03005e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShareActivity;->setContentView(I)V
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e064c
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0173
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, p0, v1, v2}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/bbm/ui/activities/aha;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/aha;-><init>(Lcom/bbm/ui/activities/ShareActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v4, v4}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v1, v0, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a02fd
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShareActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/SearchEditText;
iput-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->e:Lcom/bbm/ui/SearchEditText;
iget-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->e:Lcom/bbm/ui/SearchEditText;
invoke-virtual {v0, p0}, Lcom/bbm/ui/SearchEditText;->setListener(Lcom/bbm/ui/fq;)V
const v0, 0x7f0a01e7
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/ShareActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->c:Landroid/widget/ListView;
new-instance v0, Lcom/bbm/ui/activities/agv;
iget-object v1, p0, Lcom/bbm/ui/activities/ShareActivity;->b:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->o()Lcom/bbm/j/r;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/agv;-><init>(Lcom/bbm/ui/activities/ShareActivity;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->f:Lcom/bbm/d/b/n;
new-instance v0, Lcom/bbm/ui/activities/ahb;
iget-object v1, p0, Lcom/bbm/ui/activities/ShareActivity;->f:Lcom/bbm/d/b/n;
invoke-direct {v0, p0, v1}, Lcom/bbm/ui/activities/ahb;-><init>(Lcom/bbm/ui/activities/ShareActivity;Lcom/bbm/j/r;)V
iput-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->a:Lcom/bbm/ui/activities/ahb;
iget-object v0, p0, Lcom/bbm/ui/activities/ShareActivity;->c:Landroid/widget/ListView;
iget-object v1, p0, Lcom/bbm/ui/activities/ShareActivity;->a:Lcom/bbm/ui/activities/ahb;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/ShareActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_a8
const-string v1, "appId"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_a8
const/4 v1, 0x1
iput-boolean v1, p0, Lcom/bbm/ui/activities/ShareActivity;->d:Z
:goto_87
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "TPA: mFromTpa: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-boolean v2, p0, Lcom/bbm/ui/activities/ShareActivity;->d:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-class v2, Lcom/bbm/ui/activities/ShareActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/bbm/ui/activities/ShareActivity;->c:Landroid/widget/ListView;
new-instance v2, Lcom/bbm/ui/activities/agw;
invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/agw;-><init>(Lcom/bbm/ui/activities/ShareActivity;Landroid/content/Intent;)V
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
const-string v1, " - Lcom/bbm/ui/activities/ShareActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_a8
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/bbm/ui/activities/ShareActivity;->d:Z
goto :goto_87
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ShareActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/ShareActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/ShareActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
const-string v1, " - Lcom/bbm/ui/activities/ShareActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method