.class public Lcom/twidroid/widget/a;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field protected a:Lcom/twidroid/widget/g;

.field final synthetic b:Lcom/twidroid/widget/BaseWidget;


# direct methods
.method public constructor <init>(Lcom/twidroid/widget/BaseWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/widget/a;->b:Lcom/twidroid/widget/BaseWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/widget/g;)Ljava/util/List;
    .registers 13

    const/4 v6, -0x1

    const/4 v0, 0x0

    :try_start_2
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/twidroid/widget/a;->a:Lcom/twidroid/widget/g;

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v2

    iget-object v0, p0, Lcom/twidroid/widget/a;->b:Lcom/twidroid/widget/BaseWidget;

    iget-object v1, p0, Lcom/twidroid/widget/a;->a:Lcom/twidroid/widget/g;

    iget-object v1, v1, Lcom/twidroid/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v2, v1}, Lcom/twidroid/widget/BaseWidget;->a(Lcom/twidroid/d/v;Landroid/content/Context;)Lcom/twidroid/model/twitter/c;

    move-result-object v10

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Lcom/twidroid/b/a/b;->a(II)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_44

    iget-object v3, p0, Lcom/twidroid/widget/a;->b:Lcom/twidroid/widget/BaseWidget;

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/Tweet;->l()J

    move-result-wide v4

    iget-object v0, p0, Lcom/twidroid/widget/a;->a:Lcom/twidroid/widget/g;

    iget-boolean v0, v0, Lcom/twidroid/widget/g;->d:Z

    invoke-static {v3, v4, v5, v0}, Lcom/twidroid/widget/BaseWidget;->a(Lcom/twidroid/widget/BaseWidget;JZ)Z

    move-result v0

    if-eqz v0, :cond_ca

    :cond_44
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/twidroid/b/a/b;->a(Lcom/twidroid/model/twitter/c;)J

    move-result-wide v4

    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v0

    if-ne v0, v6, :cond_a3

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/twidroid/widget/a;->b:Lcom/twidroid/widget/BaseWidget;

    invoke-virtual {v6, v10}, Lcom/twidroid/widget/BaseWidget;->a(Lcom/twidroid/model/twitter/c;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {v0 .. v6}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    :goto_64
    if-eqz v0, :cond_95

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_95

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v1

    iget v2, v1, Lcom/twidroid/widget/o;->d:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/2addr v2, v3

    iput v2, v1, Lcom/twidroid/widget/o;->d:I

    const-string v1, "BaseWidget"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unread tweets count "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_95
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->p()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->a(II)Ljava/util/ArrayList;

    move-result-object v0

    :goto_a2
    return-object v0

    :cond_a3
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v2

    invoke-virtual {v10}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/twidroid/widget/a;->b:Lcom/twidroid/widget/BaseWidget;

    invoke-virtual {v9, v10}, Lcom/twidroid/widget/BaseWidget;->a(Lcom/twidroid/model/twitter/c;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {v0 .. v9}, Lcom/twidroid/b/a/b;->a(ZJJLjava/lang/String;ZZLjava/lang/String;)Ljava/util/List;
    :try_end_bb
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_bb} :catch_bd

    move-result-object v0

    goto :goto_64

    :catch_bd
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "BaseWidget"

    const-string v2, "WIDGETDEBUG error updating tweets"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_a2

    :cond_ca
    move-object v0, v1

    goto :goto_a2
.end method

.method protected a(Ljava/util/List;)V
    .registers 5

    if-nez p1, :cond_10

    :goto_2
    :try_start_2
    iget-object v0, p0, Lcom/twidroid/widget/a;->b:Lcom/twidroid/widget/BaseWidget;

    iget-object v1, p0, Lcom/twidroid/widget/a;->a:Lcom/twidroid/widget/g;

    iget-object v1, v1, Lcom/twidroid/widget/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twidroid/widget/a;->a:Lcom/twidroid/widget/g;

    iget v2, v2, Lcom/twidroid/widget/g;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/widget/BaseWidget;->b(Landroid/content/Context;I)V

    :goto_f
    return-void

    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/twidroid/widget/o;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/twidroid/widget/a;->b:Lcom/twidroid/widget/BaseWidget;

    sget-object v1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/BaseWidget;->a(Landroid/content/Context;)V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_26} :catch_27

    goto :goto_2

    :catch_27
    move-exception v0

    const-string v1, "BaseWidget"

    const-string v2, "WIDGETDEBUG error updating timeline"

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/widget/g;

    invoke-virtual {p0, p1}, Lcom/twidroid/widget/a;->a([Lcom/twidroid/widget/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twidroid/widget/a;->a(Ljava/util/List;)V

    return-void
.end method
