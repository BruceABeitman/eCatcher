.class public Lcom/twidroid/fragments/e/a;
.super Lcom/twidroid/fragments/base/e;
.source "SourceFile"
.field public static final G:Ljava/lang/String; = null
.field private static final H:Ljava/lang/String; = "DirectMessageFragment"
.field private I:I
.field private J:Z
.field private K:Landroid/os/Handler;
.field private L:Lcom/twidroid/a/a;
.field private M:Lcom/twidroid/net/a/c/a/j;
.field private N:Landroid/content/BroadcastReceiver;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-class v1, Lcom/twidroid/fragments/e/a;
invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ".DIRECT_MESSAGE_CHANGED"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/twidroid/fragments/e/a;->G:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x1
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;-><init>()V
const/4 v0, 0x2
iput v0, p0, Lcom/twidroid/fragments/e/a;->I:I
iput-boolean v1, p0, Lcom/twidroid/fragments/e/a;->J:Z
new-instance v0, Lcom/twidroid/fragments/e/a$4;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/a$4;-><init>(Lcom/twidroid/fragments/e/a;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/a;->N:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/a;->setRetainInstance(Z)V
return-void
.end method
.method private Z()V
.registers 3
const-string v0, "DirectMessageFragment"
const-string v1, "Cancelling task to prevent unnecessary update"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->L:Lcom/twidroid/a/a;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->L:Lcom/twidroid/a/a;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/twidroid/a/a;->b(Z)Z
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/fragments/e/a;->L:Lcom/twidroid/a/a;
:cond_14
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/fragments/e/a;->l:Z
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/a;ZLcom/twidroid/model/twitter/c;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/a;->a(ZLcom/twidroid/model/twitter/c;)V
return-void
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/a;ZLcom/twidroid/model/twitter/c;)V
.registers 3
invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/e/a;->a(ZLcom/twidroid/model/twitter/c;)V
return-void
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
return-object v0
.end method
.method private d(I)Ljava/lang/String;
.registers 5
:try_start_0
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/a;->getString(I)Ljava/lang/String;
:try_end_3
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
:goto_4
return-object v0
:catch_5
move-exception v0
const-string v1, "DirectMessageFragment"
const-string v2, "Get String by id failed"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v0, "Activity not attached."
goto :goto_4
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/e/a;)V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->k()V
return-void
.end method
.method static synthetic f(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic g(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic h(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic i(Lcom/twidroid/fragments/e/a;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->K:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic j(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic k(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic l(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic m(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic n(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic o(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/UberSocialApplication;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->c:Lcom/twidroid/UberSocialApplication;
return-object v0
.end method
.method static synthetic p(Lcom/twidroid/fragments/e/a;)Lcom/twidroid/d/v;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->w:Lcom/twidroid/d/v;
return-object v0
.end method
.method static synthetic q(Lcom/twidroid/fragments/e/a;)V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->k()V
return-void
.end method
.method static synthetic r(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
return-object v0
.end method
.method static synthetic s(Lcom/twidroid/fragments/e/a;)Ljava/util/List;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
return-object v0
.end method
.method public M()V
.registers 2
invoke-super {p0}, Lcom/twidroid/fragments/base/e;->M()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
return-void
.end method
.method public S()Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->u:Lcom/twidroid/net/c/a/f;
const v1, 0x7f0c001d
invoke-interface {v0, v1}, Lcom/twidroid/net/c/a/f;->e(I)Ljava/lang/CharSequence;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method protected a(Lcom/twidroid/model/twitter/DirectMessage;)V
.registers 6
const v3, 0x7f0900ec
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_a
:goto_9
return-void
:cond_a
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0, v3}, Landroid/support/v4/app/FragmentActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_2c
new-instance v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const-class v2, Lcom/twidroid/SingleDirectMessageActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "EXTRA_MESSAGE"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_9
:cond_2c
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getFragmentManager()Landroid/support/v4/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
new-instance v2, Lcom/twidroid/fragments/b;
invoke-direct {v2, p1}, Lcom/twidroid/fragments/b;-><init>(Lcom/twidroid/model/twitter/DirectMessage;)V
invoke-virtual {v1, v3, v2}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentTransaction;->commit()I
invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->executePendingTransactions()Z
invoke-virtual {v2, p1}, Lcom/twidroid/fragments/b;->a(Lcom/twidroid/model/twitter/DirectMessage;)V
goto :goto_9
.end method
.method protected b()V
.registers 5
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getListAdapter()Landroid/widget/ListAdapter;
move-result-object v0
if-eqz v0, :cond_68
instance-of v1, v0, Lcom/twidroid/ui/a/w;
if-eqz v1, :cond_68
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
if-gez v1, :cond_3a
:cond_16
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->k()Ljava/util/ArrayList;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
:goto_1e
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
if-eqz v1, :cond_2a
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-nez v1, :cond_49
:cond_2a
iget-boolean v1, p0, Lcom/twidroid/fragments/e/a;->l:Z
if-nez v1, :cond_49
iget v1, p0, Lcom/twidroid/fragments/e/a;->I:I
add-int/lit8 v2, v1, -0x1
iput v2, p0, Lcom/twidroid/fragments/e/a;->I:I
if-lez v1, :cond_49
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->d()V
:goto_39
return-void
:cond_3a
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->x:Lcom/twidroid/b/a/b;
iget-object v2, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/twidroid/b/a/b;->h(J)Ljava/util/ArrayList;
move-result-object v1
iput-object v1, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
goto :goto_1e
:cond_49
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
if-eqz v1, :cond_5b
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->size()I
move-result v1
if-nez v1, :cond_5b
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->M()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->P()V
:cond_5b
check-cast v0, Lcom/twidroid/ui/a/w;
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
new-instance v2, Lcom/twidroid/fragments/e/a$2;
invoke-direct {v2, p0}, Lcom/twidroid/fragments/e/a$2;-><init>(Lcom/twidroid/fragments/e/a;)V
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/a/w;->a(Ljava/util/List;Lcom/twidroid/ui/a/y;)V
goto :goto_39
:cond_68
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->M()V
goto :goto_39
.end method
.method protected b(Lcom/twidroid/model/twitter/c;)V
.registers 5
invoke-direct {p0}, Lcom/twidroid/fragments/e/a;->Z()V
const/4 v0, 0x1
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1, p1}, Lcom/twidroid/model/twitter/c;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_18
const/4 v0, 0x0
const-string v1, "DirectMessageFragment"
const-string v2, "No need to clear data since it is the same account"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:cond_18
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V
const/4 v1, 0x2
iput v1, p0, Lcom/twidroid/fragments/e/a;->I:I
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->b:Ljava/util/List;
invoke-interface {v1}, Ljava/util/List;->clear()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->i()Lcom/twidroid/ui/a/am;
move-result-object v1
if-eqz v1, :cond_32
if-eqz v0, :cond_32
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->h()V
:cond_32
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->x:Lcom/twidroid/b/a/b;
if-eqz v0, :cond_3f
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_3f
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->b()V
:cond_3f
return-void
.end method
.method protected b(Ljava/lang/Object;)V
.registers 2
check-cast p1, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/a;->a(Lcom/twidroid/model/twitter/DirectMessage;)V
return-void
.end method
.method public b(Z)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->b(Z)V
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/a;->d(Z)Z
move-result v0
if-eqz v0, :cond_a
:goto_9
return-void
:cond_a
const/4 v0, 0x2
iput v0, p0, Lcom/twidroid/fragments/e/a;->I:I
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->d()V
goto :goto_9
.end method
.method protected c()V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I
move-result v0
if-lez v0, :cond_6
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->w:Lcom/twidroid/d/v;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/d/v;->j(Landroid/content/Context;)Z
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->k()V
goto :goto_6
.end method
.method protected c(Ljava/lang/Object;)V
.registers 2
return-void
.end method
.method public d()V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/a/c/c;->w()Z
move-result v0
if-eqz v0, :cond_2e
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->M()V
new-instance v0, Ljava/lang/Exception;
const v1, 0x7f0c0039
invoke-direct {p0, v1}, Lcom/twidroid/fragments/e/a;->d(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
:goto_2d
return-void
:cond_2e
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->r()Z
move-result v0
if-nez v0, :cond_38
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->c:Lcom/twidroid/UberSocialApplication;
if-nez v0, :cond_4a
:cond_38
const-string v0, "DirectMessageFragment"
const-string v1, "::updateInbox Be patient, it\'s a mobile phone connection and no Gigabit Ethernet!!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->M()V
goto :goto_2d
:cond_4a
invoke-static {}, Lcom/twidroid/net/n;->a()Lcom/twidroid/net/n;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/net/n;->b()Z
move-result v0
if-nez v0, :cond_72
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->f()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->M()V
new-instance v0, Ljava/lang/Exception;
const v1, 0x7f0c0028
invoke-direct {p0, v1}, Lcom/twidroid/fragments/e/a;->d(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/twidroid/net/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/Exception;Landroid/content/Context;)V
goto :goto_2d
:cond_72
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->c(Z)V
new-instance v0, Lcom/twidroid/fragments/e/a$3;
invoke-direct {v0, p0, p0}, Lcom/twidroid/fragments/e/a$3;-><init>(Lcom/twidroid/fragments/e/a;Lcom/twidroid/fragments/e/a;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/a;->L:Lcom/twidroid/a/a;
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->L:Lcom/twidroid/a/a;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/a/a;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
goto :goto_2d
.end method
.method protected d(Lcom/twidroid/model/twitter/c;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->d(Lcom/twidroid/model/twitter/c;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->b(Z)V
return-void
.end method
.method protected e()V
.registers 5
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Lcom/twidroid/ui/a/w;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/w;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->F:Lcom/twidroid/net/b/f;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/w;->a(Lcom/twidroid/net/b/f;)V
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->setListAdapter(Landroid/widget/ListAdapter;)V
goto :goto_6
.end method
.method protected e(Z)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->e(Z)V
if-eqz p1, :cond_b
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->M:Lcom/twidroid/net/a/c/a/j;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->a(Lcom/twidroid/net/a/c/a/j;)V
:goto_a
return-void
:cond_b
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->M:Lcom/twidroid/net/a/c/a/j;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->b(Lcom/twidroid/net/a/c/a/j;)V
goto :goto_a
.end method
.method public l()I
.registers 2
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-nez v0, :cond_8
const/4 v0, 0x0
:goto_7
return v0
:cond_8
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/v;->m(Landroid/content/Context;)I
move-result v0
goto :goto_7
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 5
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->onAttach(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->N:Landroid/content/BroadcastReceiver;
new-instance v1, Landroid/content/IntentFilter;
sget-object v2, Lcom/twidroid/fragments/e/a;->G:Ljava/lang/String;
invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/e/a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/e;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/e/a;->K:Landroid/os/Handler;
const/4 v0, 0x2
iput v0, p0, Lcom/twidroid/fragments/e/a;->I:I
new-instance v0, Lcom/twidroid/fragments/e/a$1;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/e/a$1;-><init>(Lcom/twidroid/fragments/e/a;)V
iput-object v0, p0, Lcom/twidroid/fragments/e/a;->M:Lcom/twidroid/net/a/c/a/j;
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->M:Lcom/twidroid/net/a/c/a/j;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->a(Lcom/twidroid/net/a/c/a/j;)V
const-string v1, " - Lcom/twidroid/fragments/e/a; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDetach()V
.registers 3
invoke-super {p0}, Lcom/twidroid/fragments/base/e;->onDetach()V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->N:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/e/a; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/e;->onResume()V
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z
move-result v0
if-eqz v0, :cond_20
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->A()Z
move-result v0
if-eqz v0, :cond_20
const/4 v0, 0x1
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, v0, v1}, Lcom/twidroid/fragments/e/a;->a(ZLcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->c(Lcom/twidroid/model/twitter/c;)V
:goto_1c
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->b()V
const-string v1, " - Lcom/twidroid/fragments/e/a; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_20
const/4 v0, 0x0
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, v0, v1}, Lcom/twidroid/fragments/e/a;->a(ZLcom/twidroid/model/twitter/c;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->e(Lcom/twidroid/model/twitter/c;)V
goto :goto_1c
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/e;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/e/a;->J:Z
const v0, 0x7f0c01fd
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/a;->b(I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
const v1, 0x7f0c0216
invoke-virtual {p0, v1}, Lcom/twidroid/fragments/e/a;->getText(I)Ljava/lang/CharSequence;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
sget-object v2, Lcom/handmark/pulltorefresh/library/g;->g:Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(Ljava/lang/CharSequence;Lcom/handmark/pulltorefresh/library/g;)V
return-void
.end method
.method protected p()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected s_()V
.registers 3
invoke-super {p0}, Lcom/twidroid/fragments/base/e;->s_()V
new-instance v0, Lcom/twidroid/ui/b/f;
iget-object v1, p0, Lcom/twidroid/fragments/e/a;->v:Lcom/twidroid/ui/themes/r;
iget-object v1, v1, Lcom/twidroid/ui/themes/r;->T:[I
invoke-direct {v0, v1}, Lcom/twidroid/ui/b/f;-><init>([I)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getListView()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/a;->getListView()Landroid/widget/ListView;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDividerHeight(I)V
return-void
.end method
.method protected t()Z
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/e/a;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bZ()Ljava/lang/String;
move-result-object v0
const-string v1, "none"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_10
const/4 v0, 0x0
:goto_f
return v0
:cond_10
const/4 v0, 0x1
goto :goto_f
.end method
.method public x()Z
.registers 2
const/4 v0, 0x1
return v0
.end method