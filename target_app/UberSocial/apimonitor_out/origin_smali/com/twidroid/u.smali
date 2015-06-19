.class Lcom/twidroid/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field private static final c:I = 0x0

.field private static final d:I = 0x1


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient;

.field private b:Landroid/support/v4/app/FragmentActivity;


# direct methods
.method public constructor <init>(Lcom/twidroid/TwidroidClient;Landroid/support/v4/app/FragmentActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/u;->b:Landroid/support/v4/app/FragmentActivity;

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 10

    const/high16 v3, 0x1000

    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/twidroid/ui/c/c;

    if-eqz v1, :cond_32

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->f(Lcom/twidroid/TwidroidClient;)Landroid/support/v4/view/ViewPager;

    move-result-object v0

    add-int/lit8 v1, p3, -0x3

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->g(Lcom/twidroid/TwidroidClient;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    iget-object v1, v1, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    iget-object v1, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v1}, Lcom/twidroid/TwidroidClient;->f(Lcom/twidroid/TwidroidClient;)Landroid/support/v4/view/ViewPager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    invoke-static {v0, v1}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;I)V

    :cond_31
    :goto_31
    return-void

    :cond_32
    instance-of v1, v0, Lcom/twidroid/ui/c/f;

    if-eqz v1, :cond_31

    check-cast v0, Lcom/twidroid/ui/c/f;

    iget-object v1, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v1}, Lcom/twidroid/TwidroidClient;->g(Lcom/twidroid/TwidroidClient;)Landroid/support/v4/widget/DrawerLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    iget-object v2, v2, Lcom/twidroid/TwidroidClient;->H:Landroid/widget/ListView;

    invoke-virtual {v1, v2}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->a:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_d2

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->g()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_7d

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/TwidroidClient;->e(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/widgets/AccountSpinner;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->b()Z

    move-result v0

    if-eqz v0, :cond_7d

    new-instance v0, Lcom/twidroid/c/q;

    iget-object v1, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-direct {v0, v1}, Lcom/twidroid/c/q;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0}, Lcom/twidroid/c/q;->show()V

    goto :goto_31

    :cond_7d
    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    const-class v3, Lcom/twidroid/UberSocialProfile;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "http://twitter.com/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v3}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "EXTRA_ACCOUNT_ID"

    iget-object v3, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v3}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_d2
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->b:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_102

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    const-class v3, Lcom/twidroid/activity/MutedUsers;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "account_id"

    iget-object v3, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v3}, Lcom/twidroid/TwidroidClient;->e(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/widgets/AccountSpinner;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccountWithAllAccount()Lcom/twidroid/model/twitter/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_102
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->c:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_11e

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    const-class v3, Lcom/twidroid/activity/UberSocialAccounts;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_11e
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->d:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_135

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-static {v0}, Lcom/twidroid/c/l;->a(Lcom/twidroid/TwidroidClient;)Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto/16 :goto_31

    :cond_135
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->f:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_151

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    const-class v3, Lcom/twidroid/activity/UberSocialSettings20;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_151
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->g:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_17f

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://bit.ly/1nbk4Iw"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v2}, Lcom/twidroid/TwidroidClient;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v1, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_17f
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->h:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1ad

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://ubersocial.uservoice.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v2}, Lcom/twidroid/TwidroidClient;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v1, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_1ad
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->i:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1db

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://support.ubersocial.com"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.browser.application_id"

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v2}, Lcom/twidroid/TwidroidClient;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    invoke-virtual {v1, v0}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_1db
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v1

    sget-object v2, Lcom/twidroid/t;->e:Lcom/twidroid/t;

    invoke-virtual {v2}, Lcom/twidroid/t;->ordinal()I

    move-result v2

    if-ne v1, v2, :cond_1f7

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    const-class v3, Lcom/twidroid/activity/FollowerRequests;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31

    :cond_1f7
    invoke-virtual {v0}, Lcom/twidroid/ui/c/f;->c()I

    move-result v0

    sget-object v1, Lcom/twidroid/t;->j:Lcom/twidroid/t;

    invoke-virtual {v1}, Lcom/twidroid/t;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_31

    iget-object v0, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/twidroid/u;->a:Lcom/twidroid/TwidroidClient;

    const-class v3, Lcom/twidroid/activity/SuggestedUsersActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/TwidroidClient;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_31
.end method
