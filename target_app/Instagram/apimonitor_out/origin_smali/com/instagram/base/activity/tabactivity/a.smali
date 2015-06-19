.class public Lcom/instagram/base/activity/tabactivity/a;
.super Landroid/app/ActivityGroup;
.source "IgTabActivity.java"


# instance fields
.field private a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/app/ActivityGroup;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->b:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/instagram/base/activity/tabactivity/a;->c:I

    return-void
.end method


# virtual methods
.method public final d()Lcom/instagram/base/activity/tabactivity/IgTabHost;
    .registers 2

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    return-object v0
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/a;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/app/Activity;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method public final e()Lcom/instagram/base/activity/tabactivity/IgTabWidget;
    .registers 2

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getTabWidget()Lcom/instagram/base/activity/tabactivity/IgTabWidget;

    move-result-object v0

    return-object v0
.end method

.method protected onChildTitleChanged(Landroid/app/Activity;Ljava/lang/CharSequence;)V
    .registers 5

    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/a;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/LocalActivityManager;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    if-ne v0, p1, :cond_1b

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getCurrentTabView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1b

    instance-of v1, v0, Landroid/widget/TextView;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1b
    return-void
.end method

.method public onContentChanged()V
    .registers 3

    invoke-super {p0}, Landroid/app/ActivityGroup;->onContentChanged()V

    const v0, 0x1020012

    invoke-virtual {p0, v0}, Lcom/instagram/base/activity/tabactivity/a;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/instagram/base/activity/tabactivity/IgTabHost;

    iput-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    if-nez v0, :cond_1a

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a TabHost whose id attribute is \'android.R.id.tabhost\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1a
    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-virtual {p0}, Lcom/instagram/base/activity/tabactivity/a;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setup(Landroid/app/LocalActivityManager;)V

    return-void
.end method

.method protected onPostCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onPostCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getCurrentTab()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTab(I)V

    :cond_12
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const-string v0, "currentTab"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-virtual {v1, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_10
    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getCurrentTab()I

    move-result v0

    if-gez v0, :cond_23

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    iget-object v1, p0, Lcom/instagram/base/activity/tabactivity/a;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void

    :cond_24
    iget v0, p0, Lcom/instagram/base/activity/tabactivity/a;->c:I

    if-ltz v0, :cond_23

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    iget v1, p0, Lcom/instagram/base/activity/tabactivity/a;->c:I

    invoke-virtual {v0, v1}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTab(I)V

    goto :goto_23
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/app/ActivityGroup;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/instagram/base/activity/tabactivity/a;->a:Lcom/instagram/base/activity/tabactivity/IgTabHost;

    invoke-virtual {v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_10

    const-string v1, "currentTab"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_10
    return-void
.end method
