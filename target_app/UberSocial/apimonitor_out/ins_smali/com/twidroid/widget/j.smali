.class  Lcom/twidroid/widget/j;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field private a:Lcom/twidroid/widget/i;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/widget/MediumWidget$1;)V
.registers 2
invoke-direct {p0}, Lcom/twidroid/widget/j;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/widget/i;
invoke-virtual {p0, p1}, Lcom/twidroid/widget/j;->a([Lcom/twidroid/widget/i;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Lcom/twidroid/widget/i;)Ljava/util/ArrayList;
.registers 10
const-wide/16 v5, 0x0
const/4 v0, 0x0
aget-object v0, p1, v0
iput-object v0, p0, Lcom/twidroid/widget/j;->a:Lcom/twidroid/widget/i;
invoke-static {}, Lcom/twidroid/UberSocialApplication;->h()Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
invoke-virtual {v1}, Lcom/twidroid/b/a/b;->d()Lcom/twidroid/model/twitter/c;
move-result-object v2
sget-object v1, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-eqz v1, :cond_6b
sget-object v1, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
sget-object v3, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
invoke-virtual {v3}, Ljava/util/ArrayList;->size()I
move-result v3
add-int/lit8 v3, v3, -0x1
invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/twidroid/model/twitter/Tweet;
invoke-virtual {v1}, Lcom/twidroid/model/twitter/Tweet;->m()J
move-result-wide v3
:goto_33
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
cmp-long v1, v3, v5
if-nez v1, :cond_51
:try_start_3c
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
sget v2, Lcom/twidroid/widget/MediumWidget;->D:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->a(Ljava/lang/String;Ljava/lang/Integer;JZ)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_50
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:goto_50
:cond_50
return-object v7
:cond_51
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v1
sget v2, Lcom/twidroid/widget/MediumWidget;->D:I
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Lcom/twidroid/net/a/c/c;->b(Ljava/lang/String;Ljava/lang/Integer;JZ)Ljava/util/List;
move-result-object v0
if-eqz v0, :cond_50
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
:try_end_65
.catch Lcom/ubermedia/net/a/a/a; {:try_start_3c .. :try_end_65} :catch_66
goto :goto_50
:catch_66
move-exception v0
invoke-virtual {v0}, Lcom/ubermedia/net/a/a/a;->printStackTrace()V
goto :goto_50
:cond_6b
move-wide v3, v5
goto :goto_33
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/util/ArrayList;
invoke-virtual {p0, p1}, Lcom/twidroid/widget/j;->a(Ljava/util/ArrayList;)V
return-void
.end method
.method protected a(Ljava/util/ArrayList;)V
.registers 5
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
if-eqz p1, :cond_28
sget v0, Lcom/twidroid/widget/MediumWidget;->a:I
if-nez v0, :cond_2c
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_2c
const-string v0, "MediumWidget"
const-string v1, "No tweets!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, -0x1
sput v0, Lcom/twidroid/widget/MediumWidget;->a:I
:goto_19
iget-object v0, p0, Lcom/twidroid/widget/j;->a:Lcom/twidroid/widget/i;
iget-object v0, v0, Lcom/twidroid/widget/i;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/twidroid/widget/j;->a:Lcom/twidroid/widget/i;
iget-object v1, v1, Lcom/twidroid/widget/i;->b:Landroid/appwidget/AppWidgetManager;
iget-object v2, p0, Lcom/twidroid/widget/j;->a:Lcom/twidroid/widget/i;
iget v2, v2, Lcom/twidroid/widget/i;->c:I
invoke-static {v0, v1, v2}, Lcom/twidroid/widget/MediumWidget;->a(Landroid/content/Context;Landroid/appwidget/AppWidgetManager;I)V
:cond_28
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/widget/MediumWidget;->k:Z
return-void
:cond_2c
const-string v0, "MediumWidget"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Yay! Got some tweets: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/util/ArrayList;->size()I
move-result v0
if-nez v0, :cond_51
const/4 v0, 0x1
sput-boolean v0, Lcom/twidroid/widget/MediumWidget;->z:Z
:cond_51
sget-object v0, Lcom/twidroid/widget/MediumWidget;->C:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
goto :goto_19
.end method
.method protected b()V
.registers 2
invoke-super {p0}, Lcom/ubermedia/a/a;->b()V
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/widget/MediumWidget;->k:Z
return-void
.end method