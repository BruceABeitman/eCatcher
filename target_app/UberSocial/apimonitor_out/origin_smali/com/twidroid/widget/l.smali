.class public Lcom/twidroid/widget/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/RemoteViewsService$RemoteViewsFactory;


# instance fields
.field a:Lcom/twidroid/ui/themes/r;

.field final synthetic b:Lcom/twidroid/widget/WidgetScrollService;

.field private c:Landroid/content/Context;

.field private d:I

.field private e:Z

.field private f:Lcom/twidroid/widget/o;

.field private g:Z


# direct methods
.method public constructor <init>(Lcom/twidroid/widget/WidgetScrollService;Landroid/content/Context;Landroid/content/Intent;)V
    .registers 6

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/twidroid/widget/l;->b:Lcom/twidroid/widget/WidgetScrollService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/twidroid/widget/l;->c:Landroid/content/Context;

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/widget/l;->f:Lcom/twidroid/widget/o;

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;

    move-result-object v0

    iput-object v0, p0, Lcom/twidroid/widget/l;->a:Lcom/twidroid/ui/themes/r;

    iput-boolean v1, p0, Lcom/twidroid/widget/l;->g:Z

    iput-object p2, p0, Lcom/twidroid/widget/l;->c:Landroid/content/Context;

    const-string v0, "appWidgetId"

    invoke-virtual {p3, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/twidroid/widget/l;->d:I

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->j()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/widget/l;->e:Z

    invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/d/v;->at()Z

    move-result v0

    iput-boolean v0, p0, Lcom/twidroid/widget/l;->g:Z

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 3

    iget-object v0, p0, Lcom/twidroid/widget/l;->f:Lcom/twidroid/widget/o;

    iget v1, p0, Lcom/twidroid/widget/l;->d:I

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/o;->a(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getLoadingView()Landroid/widget/RemoteViews;
    .registers 4

    new-instance v0, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/twidroid/widget/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f030055

    invoke-direct {v0, v1, v2}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method

.method public getViewAt(I)Landroid/widget/RemoteViews;
    .registers 14

    const-wide/16 v10, 0x0

    const/16 v4, 0x8

    const/4 v2, 0x0

    new-instance v3, Landroid/widget/RemoteViews;

    iget-object v1, p0, Lcom/twidroid/widget/l;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const v5, 0x7f0300a4

    invoke-direct {v3, v1, v5}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    :try_start_13
    iget-object v1, p0, Lcom/twidroid/widget/l;->f:Lcom/twidroid/widget/o;

    iget v5, p0, Lcom/twidroid/widget/l;->d:I

    invoke-virtual {v1, v5}, Lcom/twidroid/widget/o;->a(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;

    move-object v7, v0

    const v1, 0x7f090124

    iget-object v5, v7, Lcom/twidroid/model/twitter/CommunicationEntity;->y:Lcom/twidroid/ui/StringUrlSpan;

    invoke-virtual {v3, v1, v5}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f090124

    iget-object v5, p0, Lcom/twidroid/widget/l;->a:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v5}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f090124

    const-string v5, "setLinkTextColor"

    iget-object v6, p0, Lcom/twidroid/widget/l;->a:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v6}, Lcom/twidroid/ui/themes/r;->p()I

    move-result v6

    invoke-virtual {v3, v1, v5, v6}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    const v5, 0x7f090206

    iget-boolean v1, p0, Lcom/twidroid/widget/l;->g:Z

    if-eqz v1, :cond_154

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, v7, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " @"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v7, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_67
    invoke-virtual {v3, v5, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f090206

    iget-object v5, p0, Lcom/twidroid/widget/l;->a:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v5}, Lcom/twidroid/ui/themes/r;->E()I

    move-result v5

    invoke-virtual {v3, v1, v5}, Landroid/widget/RemoteViews;->setTextColor(II)V

    instance-of v1, v7, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v1, :cond_17d

    const v5, 0x7f090208

    move-object v0, v7

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    move-object v1, v0

    iget-wide v8, v1, Lcom/twidroid/model/twitter/Tweet;->ao:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_177

    move v1, v2

    :goto_88
    invoke-virtual {v3, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v5, 0x7f090258

    move-object v0, v7

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    move-object v1, v0

    iget-wide v8, v1, Lcom/twidroid/model/twitter/Tweet;->ao:J

    cmp-long v1, v8, v10

    if-lez v1, :cond_17a

    move v1, v2

    :goto_99
    invoke-virtual {v3, v5, v1}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object v0, v7

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    move-object v1, v0

    iget-wide v1, v1, Lcom/twidroid/model/twitter/Tweet;->ao:J

    cmp-long v1, v1, v10

    if-lez v1, :cond_d2

    const v2, 0x7f090258

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/twidroid/widget/l;->b:Lcom/twidroid/widget/WidgetScrollService;

    const v5, 0x7f0c016d

    invoke-virtual {v4, v5}, Lcom/twidroid/widget/WidgetScrollService;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v0, v7

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    move-object v1, v0

    iget-object v1, v1, Lcom/twidroid/model/twitter/Tweet;->aq:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_d2
    move-object v0, v7

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/Tweet;->u()Ljava/lang/String;

    move-result-object v1

    move-object v0, v7

    check-cast v0, Lcom/twidroid/model/twitter/Tweet;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/Tweet;->g()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f090203

    const/16 v5, 0x48

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;IIZ)V

    :goto_eb
    const v2, 0x7f09020a

    iget-boolean v1, p0, Lcom/twidroid/widget/l;->e:Z

    if-eqz v1, :cond_1b1

    iget-wide v4, v7, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J

    invoke-static {v4, v5}, Lcom/ubermedia/b/a/k;->c(J)Ljava/lang/String;

    move-result-object v1

    :goto_f8
    invoke-virtual {v3, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v1, 0x7f09020a

    iget-object v2, p0, Lcom/twidroid/widget/l;->a:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v2}, Lcom/twidroid/ui/themes/r;->D()I

    move-result v2

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setTextColor(II)V

    const v1, 0x7f090255

    const-string v2, "setBackgroundColor"

    iget-object v4, p0, Lcom/twidroid/widget/l;->a:Lcom/twidroid/ui/themes/r;

    invoke-virtual {v4}, Lcom/twidroid/ui/themes/r;->s()I

    move-result v4

    invoke-virtual {v3, v1, v2, v4}, Landroid/widget/RemoteViews;->setInt(ILjava/lang/String;I)V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "extra_row_number"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "appWidgetId"

    iget v4, p0, Lcom/twidroid/widget/l;->d:I

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    instance-of v2, v7, Lcom/twidroid/model/twitter/Tweet;

    if-eqz v2, :cond_13d

    const-string v2, "EXTRA_STATUS_ID"

    iget-wide v4, v7, Lcom/twidroid/model/twitter/CommunicationEntity;->x:J

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "EXTRA_TWEET"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "widget_context_menu_mode"

    sget-object v4, Lcom/twidroid/widget/m;->a:Lcom/twidroid/widget/m;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_13d
    instance-of v2, v7, Lcom/twidroid/model/twitter/DirectMessage;

    if-eqz v2, :cond_14d

    const-string v2, "EXTRA_MESSAGE"

    invoke-virtual {v1, v2, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v2, "widget_context_menu_mode"

    sget-object v4, Lcom/twidroid/widget/m;->b:Lcom/twidroid/widget/m;

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    :cond_14d
    const v2, 0x7f090255

    invoke-virtual {v3, v2, v1}, Landroid/widget/RemoteViews;->setOnClickFillInIntent(ILandroid/content/Intent;)V

    :goto_153
    return-object v3

    :cond_154
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "@"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v7, Lcom/twidroid/model/twitter/CommunicationEntity;->A:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, " "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v6, v7, Lcom/twidroid/model/twitter/CommunicationEntity;->z:Ljava/lang/String;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_67

    :cond_177
    move v1, v4

    goto/16 :goto_88

    :cond_17a
    move v1, v4

    goto/16 :goto_99

    :cond_17d
    const v1, 0x7f090208

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    const v1, 0x7f090258

    const/16 v2, 0x8

    invoke-virtual {v3, v1, v2}, Landroid/widget/RemoteViews;->setViewVisibility(II)V

    move-object v0, v7

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/twidroid/model/twitter/DirectMessage;->u()Ljava/lang/String;

    move-result-object v1

    move-object v0, v7

    check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/DirectMessage;->g()Ljava/lang/String;

    move-result-object v2

    const v4, 0x7f090203

    const/16 v5, 0x48

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;IIZ)V
    :try_end_1a6
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_1a6} :catch_1a8

    goto/16 :goto_eb

    :catch_1a8
    move-exception v1

    const-string v2, "BaseScrollableWidget"

    const-string v4, "error getting view"

    invoke-static {v2, v4, v1}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_153

    :cond_1b1
    :try_start_1b1
    iget-wide v4, v7, Lcom/twidroid/model/twitter/CommunicationEntity;->w:J

    invoke-static {v4, v5}, Lcom/ubermedia/b/a/k;->b(J)Ljava/lang/String;
    :try_end_1b6
    .catch Ljava/lang/Exception; {:try_start_1b1 .. :try_end_1b6} :catch_1a8

    move-result-object v1

    goto/16 :goto_f8
.end method

.method public getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onCreate()V
    .registers 1

    return-void
.end method

.method public onDataSetChanged()V
    .registers 1

    return-void
.end method

.method public onDestroy()V
    .registers 1

    return-void
.end method
