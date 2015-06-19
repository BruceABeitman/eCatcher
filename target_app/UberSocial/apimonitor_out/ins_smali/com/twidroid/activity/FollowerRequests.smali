.class public Lcom/twidroid/activity/FollowerRequests;
.super Lcom/twidroid/activity/UberSocialBaseListActivity;
.source "SourceFile"
.field static final b:Ljava/lang/String; = "FollowerRequests"
.field static final d:I = 0x2c0
.field private static final l:I = 0xd
.field protected c:Landroid/view/LayoutInflater;
.field protected e:Lcom/twidroid/ui/widgets/AccountSpinner;
.field  f:I
.field  g:Landroid/widget/TextView;
.field  h:Landroid/widget/ProgressBar;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;-><init>()V
return-void
.end method
.method private a(Landroid/widget/TextView;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/FollowerRequests;->g:Landroid/widget/TextView;
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/FollowerRequests;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/FollowerRequests;->h()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/activity/FollowerRequests;Lcom/ubermedia/a/a;)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/activity/FollowerRequests;->a(Lcom/ubermedia/a/a;)V
return-void
.end method
.method private a(Lcom/ubermedia/a/a;)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->e(Z)V
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/FollowerRequests;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
new-instance v0, Lcom/twidroid/activity/FollowerRequests$4;
invoke-direct {v0, p0, p1}, Lcom/twidroid/activity/FollowerRequests$4;-><init>(Lcom/twidroid/activity/FollowerRequests;Lcom/ubermedia/a/a;)V
invoke-virtual {v0}, Lcom/twidroid/activity/FollowerRequests$4;->start()V
return-void
.end method
.method static synthetic b(Lcom/twidroid/activity/FollowerRequests;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/activity/FollowerRequests;->g()V
return-void
.end method
.method private f()Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->g:Landroid/widget/TextView;
return-object v0
.end method
.method private g()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/twidroid/activity/FollowerRequests;->f()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/FollowerRequests;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
return-void
.end method
.method private h()V
.registers 3
const/16 v1, 0x8
invoke-direct {p0}, Lcom/twidroid/activity/FollowerRequests;->f()Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {p0}, Lcom/twidroid/activity/FollowerRequests;->i()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
return-void
.end method
.method public b(ILjava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->h:Landroid/widget/ProgressBar;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
return-void
.end method
.method public d(I)V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->h:Landroid/widget/ProgressBar;
invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V
return-void
.end method
.method public d(Z)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->e(Z)V
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/activity/FollowerRequests;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
return-void
.end method
.method public e()V
.registers 5
const v0, 0x7f03006d
invoke-virtual {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->setContentView(I)V
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->J:Lcom/twidroid/UberSocialApplication;
const v1, 0x7f0c01b1
invoke-virtual {p0}, Lcom/twidroid/activity/FollowerRequests;->a()Landroid/support/v7/app/ActionBar;
move-result-object v2
const/4 v3, 0x1
invoke-static {v0, p0, v1, v2, v3}, Lcom/twidroid/d/t;->a(Lcom/twidroid/UberSocialApplication;Landroid/app/Activity;ILandroid/support/v7/app/ActionBar;Z)V
const v0, 0x7f0900c2
invoke-virtual {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-direct {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->a(Landroid/widget/TextView;)V
invoke-direct {p0}, Lcom/twidroid/activity/FollowerRequests;->f()Landroid/widget/TextView;
move-result-object v0
const v1, 0x7f0c0165
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0900c4
invoke-virtual {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->h:Landroid/widget/ProgressBar;
const v0, 0x7f09007b
invoke-virtual {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->R:Landroid/widget/TextView;
const v0, 0x7f090173
invoke-virtual {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/AccountSpinner;
iput-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
new-instance v1, Lcom/twidroid/activity/FollowerRequests$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/FollowerRequests$1;-><init>(Lcom/twidroid/activity/FollowerRequests;)V
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
invoke-virtual {p0}, Lcom/twidroid/activity/FollowerRequests;->i()Landroid/widget/ListView;
move-result-object v0
invoke-direct {p0}, Lcom/twidroid/activity/FollowerRequests;->f()Landroid/widget/TextView;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/twidroid/activity/FollowerRequests;->i()Landroid/widget/ListView;
move-result-object v0
new-instance v1, Lcom/twidroid/activity/FollowerRequests$2;
invoke-direct {v1, p0}, Lcom/twidroid/activity/FollowerRequests$2;-><init>(Lcom/twidroid/activity/FollowerRequests;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/activity/FollowerRequests; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreate(Landroid/os/Bundle;)V
const/high16 v0, 0x4240
invoke-virtual {p0}, Lcom/twidroid/activity/FollowerRequests;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, v1
const/high16 v1, 0x3f00
add-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lcom/twidroid/activity/FollowerRequests;->f:I
invoke-virtual {p0}, Lcom/twidroid/activity/FollowerRequests;->e()V
const-string v1, " - Lcom/twidroid/activity/FollowerRequests; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onCreateDialog(I)Landroid/app/Dialog;
.registers 5
const-string v0, "FollowerRequests"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "TwitterSearch.onCreateDialog: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onCreateDialog(I)Landroid/app/Dialog;
move-result-object v0
if-eqz v0, :cond_1f
:goto_1e
return-object v0
:cond_1f
packed-switch p1, :pswitch_data_2a
const/4 v0, 0x0
goto :goto_1e
:pswitch_24
new-instance v0, Lcom/twidroid/activity/FollowerRequests$3;
invoke-direct {v0, p0, p0}, Lcom/twidroid/activity/FollowerRequests$3;-><init>(Lcom/twidroid/activity/FollowerRequests;Landroid/app/Activity;)V
goto :goto_1e
:pswitch_data_2a
.packed-switch 0x2c0
:pswitch_24
.end packed-switch
.end method
.method public onPrepareDialog(ILandroid/app/Dialog;)V
.registers 4
invoke-super {p0, p1, p2}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onPrepareDialog(ILandroid/app/Dialog;)V
const/16 v0, 0x2c0
if-ne p1, v0, :cond_11
const v0, 0x7f0c00d8
invoke-virtual {p0, v0}, Lcom/twidroid/activity/FollowerRequests;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V
:cond_11
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/FollowerRequests; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onResume()V
const-string v1, " - Lcom/twidroid/activity/FollowerRequests; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/twidroid/activity/FollowerRequests; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/activity/UberSocialBaseListActivity;->onStart()V
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->a()V
new-instance v0, Lcom/twidroid/activity/e;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/activity/e;-><init>(Lcom/twidroid/activity/FollowerRequests;Lcom/twidroid/activity/FollowerRequests$1;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/activity/e;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const-string v1, " - Lcom/twidroid/activity/FollowerRequests; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public r()V
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/FollowerRequests;->h:Landroid/widget/ProgressBar;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
return-void
.end method
.method public r_()V
.registers 3
new-instance v0, Lcom/twidroid/activity/e;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/activity/e;-><init>(Lcom/twidroid/activity/FollowerRequests;Lcom/twidroid/activity/FollowerRequests$1;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/activity/e;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method