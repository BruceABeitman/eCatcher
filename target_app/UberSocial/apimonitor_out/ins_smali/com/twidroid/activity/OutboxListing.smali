.class public Lcom/twidroid/activity/OutboxListing;
.super Lcom/twidroid/activity/UberSocialBaseListActivity;
.source "SourceFile"
.field static final c:Ljava/lang/String; = "TwidroydOutbox"
.field private static final f:I = 0x2
.field private static final g:I = 0x3
.field protected b:Landroid/view/LayoutInflater;
.field  d:Ljava/util/ArrayList;
.field  e:Lcom/twidroid/activity/o;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/OutboxListing;->d:Ljava/util/ArrayList;
return-void
.end method
.method protected a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 6
return-void
.end method
.method protected d(Z)V
.registers 2
return-void
.end method
.method public e()V
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/OutboxListing;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->D()Ljava/util/ArrayList;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/OutboxListing;->d:Ljava/util/ArrayList;
iget-object v0, p0, Lcom/twidroid/activity/OutboxListing;->e:Lcom/twidroid/activity/o;
invoke-virtual {v0}, Lcom/twidroid/activity/o;->notifyDataSetChanged()V
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->m()V
return-void
.end method
.method public f()V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->g()V
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->finish()V
return-void
.end method
.method public g()V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/twidroid/TwidroidClient;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OutboxListing;->startActivity(Landroid/content/Intent;)V
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->finish()V
return-void
.end method
.method public h()V
.registers 1
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 4
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 6
const-string v1, " + Lcom/twidroid/activity/OutboxListing; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreate(Landroid/os/Bundle;)V
const v0, 0x7f030072
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OutboxListing;->setContentView(I)V
iget-object v0, p0, Lcom/twidroid/activity/OutboxListing;->J:Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c01be
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
const v0, 0x7f0900c2
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OutboxListing;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
const v1, 0x7f0c0165
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->i()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
new-instance v0, Lcom/twidroid/activity/o;
invoke-direct {v0, p0, p0}, Lcom/twidroid/activity/o;-><init>(Lcom/twidroid/activity/OutboxListing;Landroid/content/Context;)V
iput-object v0, p0, Lcom/twidroid/activity/OutboxListing;->e:Lcom/twidroid/activity/o;
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->e()V
iget-object v0, p0, Lcom/twidroid/activity/OutboxListing;->e:Lcom/twidroid/activity/o;
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OutboxListing;->a(Landroid/widget/ListAdapter;)V
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->i()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/OutboxListing$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/OutboxListing$1;-><init>(Lcom/twidroid/activity/OutboxListing;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/OutboxListing;->b:Landroid/view/LayoutInflater;
const v0, 0x7f0900f7
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OutboxListing;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/activity/OutboxListing;->Q:Landroid/widget/ProgressBar;
const v0, 0x7f09007b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/OutboxListing;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/activity/OutboxListing;->R:Landroid/widget/TextView;
const-string v1, " - Lcom/twidroid/activity/OutboxListing; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
packed-switch p1, :pswitch_data_32
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;
move-result-object v0
:goto_7
return-object v0
:pswitch_8
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
new-instance v2, Lcom/twidroid/activity/OutboxListing$2;
invoke-direct {v2, p0}, Lcom/twidroid/activity/OutboxListing$2;-><init>(Lcom/twidroid/activity/OutboxListing;)V
invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v0
goto :goto_7
nop
:pswitch_data_32
.packed-switch 0x1
:pswitch_8
.end packed-switch
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/OutboxListing; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onResume()V
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->e()V
const-string v1, " - Lcom/twidroid/activity/OutboxListing; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/OutboxListing; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onStart()V
invoke-virtual {p0}, Lcom/twidroid/activity/OutboxListing;->e()V
const-string v1, " - Lcom/twidroid/activity/OutboxListing; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method