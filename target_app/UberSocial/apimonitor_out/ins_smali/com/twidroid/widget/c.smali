.class public Lcom/twidroid/widget/c;
.super Landroid/os/AsyncTask;
.source "SourceFile"
.field protected a:Lcom/twidroid/widget/g;
.field final synthetic b:Lcom/twidroid/widget/BaseWidget;
.method public constructor <init>(Lcom/twidroid/widget/BaseWidget;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/widget/c;->b:Lcom/twidroid/widget/BaseWidget;
invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V
return-void
.end method
.method protected varargs a([Lcom/twidroid/widget/g;)Ljava/util/List;
.registers 11
:try_start_0
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v2
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/twidroid/widget/c;->a:Lcom/twidroid/widget/g;
iget-object v0, p0, Lcom/twidroid/widget/c;->b:Lcom/twidroid/widget/BaseWidget;
iget-object v1, p0, Lcom/twidroid/widget/c;->a:Lcom/twidroid/widget/g;
iget-object v1, v1, Lcom/twidroid/widget/g;->a:Landroid/content/Context;
invoke-virtual {v0, v2, v1}, Lcom/twidroid/widget/BaseWidget;->a(Lcom/twidroid/d/v;Landroid/content/Context;)Lcom/twidroid/model/twitter/c;
move-result-object v6
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v6}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->f(I)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_31
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-eqz v1, :cond_31
iget-object v1, p0, Lcom/twidroid/widget/c;->a:Lcom/twidroid/widget/g;
iget-boolean v1, v1, Lcom/twidroid/widget/g;->d:Z
if-eqz v1, :cond_8c
:cond_31
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v0, v6}, Lcom/twidroid/b/a/b;->e(Lcom/twidroid/model/twitter/c;)J
move-result-wide v7
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, 0x0
const/4 v3, 0x0
const-wide/16 v4, -0x1
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJ)Ljava/util/List;
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
const/4 v1, 0x0
const/4 v3, 0x0
move-wide v4, v7
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/b/a/b;->a(ZLcom/twidroid/d/v;ZJ)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_80
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_80
invoke-static {}, Lcom/twidroid/widget/o;->a()Lcom/twidroid/widget/o;
move-result-object v1
iget v2, v1, Lcom/twidroid/widget/o;->e:I
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Lcom/twidroid/widget/o;->e:I
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
:cond_80
invoke-static {}, Lcom/twidroid/b/a/b;->b()Lcom/twidroid/b/a/b;
move-result-object v0
invoke-virtual {v6}, Lcom/twidroid/model/twitter/c;->p()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/b/a/b;->f(I)Ljava/util/ArrayList;
:try_end_8b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8b} :catch_8d
move-result-object v0
:goto_8c
:cond_8c
return-object v0
:catch_8d
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "BaseWidget"
const-string v2, "WIDGETDEBUG error updating mentions"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
const/4 v0, 0x0
goto :goto_8c
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
invoke-virtual {v0, v1}, Lcom/twidroid/widget/o;->c(Ljava/util/List;)V
iget-object v0, p0, Lcom/twidroid/widget/c;->b:Lcom/twidroid/widget/BaseWidget;
iget-object v1, p0, Lcom/twidroid/widget/c;->a:Lcom/twidroid/widget/g;
iget-object v1, v1, Lcom/twidroid/widget/g;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/twidroid/widget/c;->a:Lcom/twidroid/widget/g;
iget v2, v2, Lcom/twidroid/widget/g;->c:I
invoke-virtual {v0, v1, v2}, Lcom/twidroid/widget/BaseWidget;->b(Landroid/content/Context;I)V
iget-object v0, p0, Lcom/twidroid/widget/c;->b:Lcom/twidroid/widget/BaseWidget;
sget-object v1, Lcom/twidroid/widget/BaseWidget;->u:Landroid/content/Context;
invoke-virtual {v0, v1}, Lcom/twidroid/widget/BaseWidget;->a(Landroid/content/Context;)V
:cond_28
return-void
.end method
.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/widget/g;
invoke-virtual {p0, p1}, Lcom/twidroid/widget/c;->a([Lcom/twidroid/widget/g;)Ljava/util/List;
move-result-object v0
return-object v0
.end method
.method protected synthetic onPostExecute(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/List;
invoke-virtual {p0, p1}, Lcom/twidroid/widget/c;->a(Ljava/util/List;)V
return-void
.end method