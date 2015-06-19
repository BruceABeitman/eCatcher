.class  Lcom/twidroid/activity/SendTweet$51$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/os/Handler$Callback;
.field final synthetic a:Lcom/twidroid/activity/SendTweet$51;
.method constructor <init>(Lcom/twidroid/activity/SendTweet$51;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/SendTweet$51$1;->a:Lcom/twidroid/activity/SendTweet$51;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public handleMessage(Landroid/os/Message;)Z
.registers 11
const/4 v4, 0x0
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51$1;->a:Lcom/twidroid/activity/SendTweet$51;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->r(Lcom/twidroid/activity/SendTweet;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I
move-result v7
if-eqz p1, :cond_50
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
if-eqz v0, :cond_50
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
instance-of v0, v0, Lcom/twidroid/activity/r;
if-eqz v0, :cond_50
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/twidroid/activity/r;
move-object v3, v0
:goto_1e
const/4 v0, 0x0
move v6, v0
move-object v5, v4
:goto_21
if-ge v6, v7, :cond_76
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51$1;->a:Lcom/twidroid/activity/SendTweet$51;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v0}, Lcom/twidroid/activity/SendTweet;->r(Lcom/twidroid/activity/SendTweet;)Landroid/widget/LinearLayout;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_8e
instance-of v0, v1, Landroid/widget/ImageView;
if-eqz v0, :cond_8e
move-object v0, v1
check-cast v0, Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_8e
instance-of v2, v1, Lcom/twidroid/activity/r;
if-eqz v2, :cond_8e
check-cast v1, Lcom/twidroid/activity/r;
invoke-virtual {v1, v3}, Lcom/twidroid/activity/r;->equals(Ljava/lang/Object;)Z
move-result v2
if-nez v2, :cond_52
move-object v0, v5
:goto_4b
add-int/lit8 v1, v6, 0x1
move v6, v1
move-object v5, v0
goto :goto_21
:cond_50
move-object v3, v4
goto :goto_1e
:cond_52
invoke-virtual {v0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v2
if-eqz v2, :cond_8c
instance-of v8, v2, Landroid/graphics/drawable/BitmapDrawable;
if-eqz v8, :cond_8c
check-cast v2, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v5
move-object v2, v5
:goto_63
invoke-virtual {v1}, Lcom/twidroid/activity/r;->d()Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V
if-eqz v2, :cond_74
if-eq v2, v1, :cond_74
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
:cond_74
move-object v0, v2
goto :goto_4b
:cond_76
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51$1;->a:Lcom/twidroid/activity/SendTweet$51;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$51;->c:Lcom/twidroid/activity/SendTweet;
invoke-static {v0, v4}, Lcom/twidroid/activity/SendTweet;->a(Lcom/twidroid/activity/SendTweet;Lcom/twidroid/c/f;)V
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51$1;->a:Lcom/twidroid/activity/SendTweet$51;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$51;->b:Landroid/os/Handler$Callback;
if-eqz v0, :cond_8a
iget-object v0, p0, Lcom/twidroid/activity/SendTweet$51$1;->a:Lcom/twidroid/activity/SendTweet$51;
iget-object v0, v0, Lcom/twidroid/activity/SendTweet$51;->b:Landroid/os/Handler$Callback;
invoke-interface {v0, p1}, Landroid/os/Handler$Callback;->handleMessage(Landroid/os/Message;)Z
:cond_8a
const/4 v0, 0x1
return v0
:cond_8c
move-object v2, v5
goto :goto_63
:cond_8e
move-object v0, v5
goto :goto_4b
.end method