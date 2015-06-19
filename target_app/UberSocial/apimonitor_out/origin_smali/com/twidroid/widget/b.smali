.class public Lcom/twidroid/widget/b;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field protected a:Lcom/twidroid/widget/g;

.field final synthetic b:Lcom/twidroid/widget/BaseWidget;


# direct methods
.method public constructor <init>(Lcom/twidroid/widget/BaseWidget;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/widget/b;->b:Lcom/twidroid/widget/BaseWidget;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lcom/twidroid/widget/g;)Ljava/util/List;
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/twidroid/widget/b;->a:Lcom/twidroid/widget/g;

    new-instance v1, Lcom/twidroid/d/v;

    iget-object v0, p0, Lcom/twidroid/widget/b;->a:Lcom/twidroid/widget/g;

    iget-object v0, v0, Lcom/twidroid/widget/g;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Lcom/twidroid/d/v;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/twidroid/widget/b;->b:Lcom/twidroid/widget/BaseWidget;

    iget-object v2, p0, Lcom/twidroid/widget/b;->a:Lcom/twidroid/widget/g;

    iget-object v2, v2, Lcom/twidroid/widget/g;->a:Landroid/content/Context;

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/widget/BaseWidget;->a(Lcom/twidroid/d/v;Landroid/content/Context;)Lcom/twidroid/model/twitter/c;

    move-result-object v2

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Lcom/twidroid/b/a/b;->h(J)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_32

    iget-object v3, p0, Lcom/twidroid/widget/b;->a:Lcom/twidroid/widget/g;

    iget-boolean v3, v3, Lcom/twidroid/widget/g;->d:Z

    if-eqz v3, :cond_83

    :cond_32
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;)J

    move-result-wide v0

    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Lcom/twidroid/b/a/b;->n(J)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_77

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_77

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v1

    iget v3, v1, Lcom/twidroid/widget/o;->f:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    add-int/2addr v3, v4

    iput v3, v1, Lcom/twidroid/widget/o;->f:I

    const-string v1, "BaseWidget"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unread dms count "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_77
    invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;

    move-result-object v0

    invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->o()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/b/a/b;->h(J)Ljava/util/ArrayList;
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_82} :catch_84

    move-result-object v0

    :cond_83
    :goto_83
    return-object v0

    :catch_84
    move-exception v0

    const-string v1, "BaseWidget"

    const-string v2, "WIDGETDEBUG "

    invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_83
.end method

.method protected a(Ljava/util/List;)V
    .registers 5

    if-eqz p1, :cond_28

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_28

    invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/o;->e(Ljava/util/List;)V

    iget-object v0, p0, Lcom/twidroid/widget/b;->b:Lcom/twidroid/widget/BaseWidget;

    iget-object v1, p0, Lcom/twidroid/widget/b;->a:Lcom/twidroid/widget/g;

    iget-object v1, v1, Lcom/twidroid/widget/g;->a:Landroid/content/Context;

    iget-object v2, p0, Lcom/twidroid/widget/b;->a:Lcom/twidroid/widget/g;

    iget v2, v2, Lcom/twidroid/widget/g;->c:I

    invoke-virtual {v0, v1, v2}, Lcom/twidroid/widget/BaseWidget;->b(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/twidroid/widget/b;->b:Lcom/twidroid/widget/BaseWidget;

    sget-object v1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/twidroid/widget/BaseWidget;->a(Landroid/content/Context;)V

    :cond_28
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Lcom/twidroid/widget/g;

    invoke-virtual {p0, p1}, Lcom/twidroid/widget/b;->a([Lcom/twidroid/widget/g;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/twidroid/widget/b;->a(Ljava/util/List;)V

    return-void
.end method
