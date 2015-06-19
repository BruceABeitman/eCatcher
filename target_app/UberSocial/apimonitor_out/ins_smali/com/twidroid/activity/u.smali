.class  Lcom/twidroid/activity/u;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/activity/SendTweet;
.method private constructor <init>(Lcom/twidroid/activity/SendTweet;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/u;->a:Lcom/twidroid/activity/SendTweet;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/SendTweet$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/activity/u;-><init>(Lcom/twidroid/activity/SendTweet;)V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Lcom/twidroid/activity/r;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/u;->a([Lcom/twidroid/activity/r;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Lcom/twidroid/activity/r;)Ljava/lang/Void;
.registers 7
if-eqz p1, :cond_1a
array-length v0, p1
if-lez v0, :cond_1a
array-length v1, p1
const/4 v0, 0x0
:goto_7
if-ge v0, v1, :cond_1a
aget-object v2, p1, v0
:try_start_b
invoke-virtual {v2}, Lcom/twidroid/activity/r;->k()Z
move-result v3
if-nez v3, :cond_17
iget-object v3, p0, Lcom/twidroid/activity/u;->a:Lcom/twidroid/activity/SendTweet;
const/4 v4, 0x1
invoke-static {v3, v2, v4}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/activity/r;Z)V
:cond_17
:try_end_17
.catch Ljava/lang/Exception; {:try_start_b .. :try_end_17} :catch_3c
:goto_17
add-int/lit8 v0, v0, 0x1
goto :goto_7
:cond_1a
iget-object v0, p0, Lcom/twidroid/activity/u;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->ao:Ljava/util/List;
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/twidroid/activity/u;->a:Lcom/twidroid/activity/SendTweet;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet;->ao:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_28
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/activity/u;->a:Lcom/twidroid/activity/SendTweet;
invoke-static {v2, v0}, Lcom/twidroid/activity/SendTweet;->c(Lcom/twidroid/activity/SendTweet;Ljava/lang/String;)Z
goto :goto_28
:cond_3a
const/4 v0, 0x0
return-object v0
:catch_3c
move-exception v2
goto :goto_17
.end method