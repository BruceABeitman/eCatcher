.class Lcom/twidroid/fragments/whatshotfragments/b;
.super Lcom/twidroid/a/a;
.source "SourceFile"


# instance fields
.field final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/a;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/twidroid/a/a;-><init>(Lcom/twidroid/fragments/base/o;)V

    if-nez p2, :cond_c

    new-instance p2, Ljava/util/ArrayList;

    const/16 v0, 0xa

    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    :cond_c
    iput-object p2, p0, Lcom/twidroid/fragments/whatshotfragments/b;->b:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/b;->a([Ljava/lang/Void;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected varargs a([Ljava/lang/Void;)Ljava/util/List;
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/fragments/whatshotfragments/a;

    invoke-virtual {v0}, Lcom/twidroid/fragments/whatshotfragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/twidroid/UberSocialApplication;

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/twidroid/fragments/whatshotfragments/a;

    invoke-virtual {v1}, Lcom/twidroid/fragments/whatshotfragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->bt()Ljava/lang/String;

    move-result-object v0

    const/4 v3, -0x1

    invoke-static {v1, v2, v0, v3}, Lcom/twidroid/uberchannels/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_37

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_37} :catch_38

    :cond_37
    :goto_37
    return-object v0

    :catch_38
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_37
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;)V
    .registers 2

    check-cast p1, Lcom/twidroid/fragments/whatshotfragments/a;

    invoke-virtual {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/b;->a(Lcom/twidroid/fragments/whatshotfragments/a;)V

    return-void
.end method

.method protected bridge synthetic a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V
    .registers 3

    check-cast p1, Lcom/twidroid/fragments/whatshotfragments/a;

    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/b;->a(Lcom/twidroid/fragments/whatshotfragments/a;Ljava/util/List;)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/whatshotfragments/a;)V
    .registers 3

    invoke-super {p0, p1}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/whatshotfragments/a;->setListShown(Z)V

    return-void
.end method

.method protected a(Lcom/twidroid/fragments/whatshotfragments/a;Ljava/util/List;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v5, 0x1

    invoke-super {p0, p1, p2}, Lcom/twidroid/a/a;->a(Lcom/twidroid/fragments/base/o;Ljava/lang/Object;)V

    if-eqz p2, :cond_d

    invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_e

    :cond_d
    :goto_d
    return-void

    :cond_e
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/b;->b()V

    goto :goto_d

    :cond_18
    invoke-static {p1, v5}, Lcom/twidroid/fragments/whatshotfragments/a;->a(Lcom/twidroid/fragments/whatshotfragments/a;Z)Z

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/uberchannels/models/UberTopic;

    invoke-static {p1, v0}, Lcom/twidroid/fragments/whatshotfragments/a;->a(Lcom/twidroid/fragments/whatshotfragments/a;Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/uberchannels/models/UberTopic;

    invoke-static {p1}, Lcom/twidroid/fragments/whatshotfragments/a;->b(Lcom/twidroid/fragments/whatshotfragments/a;)Lcom/twidroid/uberchannels/models/UberTopic;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/twidroid/fragments/whatshotfragments/a;->b(Lcom/twidroid/fragments/whatshotfragments/a;Lcom/twidroid/uberchannels/models/UberTopic;)V

    invoke-static {p1}, Lcom/twidroid/fragments/whatshotfragments/a;->c(Lcom/twidroid/fragments/whatshotfragments/a;)Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;

    move-result-object v2

    move v0, v1

    :goto_34
    invoke-virtual {v2}, Lcom/twidroid/ui/c/g;->b()I

    move-result v1

    if-ge v0, v1, :cond_6d

    invoke-virtual {v2, v0}, Lcom/twidroid/ui/c/g;->a(I)Lcom/twidroid/ui/c/h;

    move-result-object v1

    const/4 v3, 0x5

    invoke-virtual {v1}, Lcom/twidroid/ui/c/h;->j()I

    move-result v4

    if-eq v3, v4, :cond_48

    :cond_45
    :goto_45
    add-int/lit8 v0, v0, 0x1

    goto :goto_34

    :cond_48
    invoke-virtual {v1}, Lcom/twidroid/ui/c/h;->g()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v3, p0, Lcom/twidroid/fragments/whatshotfragments/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5d

    iget-object v3, p0, Lcom/twidroid/fragments/whatshotfragments/b;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_5d
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {p1}, Lcom/twidroid/fragments/whatshotfragments/a;->b(Lcom/twidroid/fragments/whatshotfragments/a;)Lcom/twidroid/uberchannels/models/UberTopic;

    move-result-object v3

    iget v3, v3, Lcom/twidroid/uberchannels/models/UberTopic;->h:I

    if-ne v1, v3, :cond_45

    invoke-static {p1, v5}, Lcom/twidroid/fragments/whatshotfragments/a;->b(Lcom/twidroid/fragments/whatshotfragments/a;Z)Z

    goto :goto_45

    :cond_6d
    invoke-static {p1}, Lcom/twidroid/fragments/whatshotfragments/a;->e(Lcom/twidroid/fragments/whatshotfragments/a;)Landroid/widget/ToggleButton;

    move-result-object v0

    invoke-static {p1}, Lcom/twidroid/fragments/whatshotfragments/a;->d(Lcom/twidroid/fragments/whatshotfragments/a;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setChecked(Z)V

    invoke-static {p1}, Lcom/twidroid/fragments/whatshotfragments/a;->e(Lcom/twidroid/fragments/whatshotfragments/a;)Landroid/widget/ToggleButton;

    move-result-object v0

    new-instance v1, Lcom/twidroid/fragments/whatshotfragments/b$1;

    invoke-direct {v1, p0, p1}, Lcom/twidroid/fragments/whatshotfragments/b$1;-><init>(Lcom/twidroid/fragments/whatshotfragments/b;Lcom/twidroid/fragments/whatshotfragments/a;)V

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    new-instance v0, Lcom/twidroid/uberchannels/a;

    iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/b;->b:Ljava/util/ArrayList;

    invoke-direct {v0, p1, p2, v1}, Lcom/twidroid/uberchannels/a;-><init>(Lcom/twidroid/fragments/whatshotfragments/a;Ljava/util/List;Ljava/util/ArrayList;)V

    invoke-virtual {p1, v0}, Lcom/twidroid/fragments/whatshotfragments/a;->setListAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p1, v5}, Lcom/twidroid/fragments/whatshotfragments/a;->setListShown(Z)V

    goto/16 :goto_d
.end method
