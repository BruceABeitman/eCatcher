.class public Lcom/instagram/android/people/activity/PeopleTagActivity;
.super Lcom/instagram/base/activity/d;
.source "PeopleTagActivity.java"

# interfaces
.implements Lcom/instagram/android/people/b/l;


# instance fields
.field private p:Lcom/instagram/model/people/b;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/instagram/base/activity/d;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/user/c/a;)V
    .registers 4

    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "PeopleTagFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/b/a;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1}, Lcom/instagram/android/people/b/a;->a(Lcom/instagram/user/c/a;)V

    :cond_11
    return-void
.end method

.method public final g()V
    .registers 3

    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->d()Landroid/support/v4/app/s;

    move-result-object v0

    const-string v1, "PeopleTagFragment"

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/people/b/a;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/instagram/android/people/b/a;->b()V

    :cond_11
    return-void
.end method

.method public final h()Lcom/instagram/model/people/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 6

    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_46

    const-string v0, "people_tags"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    new-instance v1, Lcom/instagram/model/people/b;

    invoke-direct {v1, v0}, Lcom/instagram/model/people/b;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    :goto_12
    sget v0, Lcom/facebook/aw;->activity_single_container:I

    invoke-virtual {p0, v0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->setContentView(I)V

    new-instance v0, Lcom/instagram/android/people/b/a;

    invoke-direct {v0}, Lcom/instagram/android/people/b/a;-><init>()V

    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/people/b/a;->g(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    sget v2, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v1, v2}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_45

    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->d()Landroid/support/v4/app/s;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/s;->a()Landroid/support/v4/app/ag;

    move-result-object v1

    sget v2, Lcom/facebook/av;->layout_container_main:I

    const-string v3, "PeopleTagFragment"

    invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/ag;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/ag;

    invoke-virtual {v1}, Landroid/support/v4/app/ag;->b()I

    :cond_45
    return-void

    :cond_46
    invoke-virtual {p0}, Lcom/instagram/android/people/activity/PeopleTagActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "people_tags"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_5a

    new-instance v0, Lcom/instagram/model/people/b;

    invoke-direct {v0}, Lcom/instagram/model/people/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    goto :goto_12

    :cond_5a
    new-instance v1, Lcom/instagram/model/people/b;

    invoke-direct {v1, v0}, Lcom/instagram/model/people/b;-><init>(Ljava/util/List;)V

    iput-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    goto :goto_12
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lcom/instagram/base/activity/d;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "people_tags"

    iget-object v1, p0, Lcom/instagram/android/people/activity/PeopleTagActivity;->p:Lcom/instagram/model/people/b;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method
