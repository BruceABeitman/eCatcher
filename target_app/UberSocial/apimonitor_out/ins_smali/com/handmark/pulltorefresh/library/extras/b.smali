.class public Lcom/handmark/pulltorefresh/library/extras/b;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/handmark/pulltorefresh/library/i;
.field private final a:Landroid/content/Context;
.field private final b:Ljava/util/HashMap;
.field private c:Landroid/media/MediaPlayer;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/handmark/pulltorefresh/library/extras/b;->a:Landroid/content/Context;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->b:Ljava/util/HashMap;
return-void
.end method
.method private a(I)V
.registers 3
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->c:Landroid/media/MediaPlayer;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->c:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->c:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
:cond_e
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->a:Landroid/content/Context;
invoke-static {v0, p1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;
move-result-object v0
iput-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->c:Landroid/media/MediaPlayer;
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->c:Landroid/media/MediaPlayer;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->c:Landroid/media/MediaPlayer;
invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
:cond_1f
return-void
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
return-void
.end method
.method public final a(Lcom/handmark/pulltorefresh/library/PullToRefreshBase;Lcom/handmark/pulltorefresh/library/o;Lcom/handmark/pulltorefresh/library/g;)V
.registers 5
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->b:Ljava/util/HashMap;
invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
if-eqz v0, :cond_11
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-direct {p0, v0}, Lcom/handmark/pulltorefresh/library/extras/b;->a(I)V
:cond_11
return-void
.end method
.method public a(Lcom/handmark/pulltorefresh/library/o;I)V
.registers 5
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->b:Ljava/util/HashMap;
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method public b()Landroid/media/MediaPlayer;
.registers 2
iget-object v0, p0, Lcom/handmark/pulltorefresh/library/extras/b;->c:Landroid/media/MediaPlayer;
return-object v0
.end method