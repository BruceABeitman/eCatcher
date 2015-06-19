.class  Lcom/twidroid/TwidroidClient$3$1$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/graphics/drawable/BitmapDrawable;
.field final synthetic b:Lcom/twidroid/TwidroidClient$3$1$1;
.method constructor <init>(Lcom/twidroid/TwidroidClient$3$1$1;Landroid/graphics/drawable/BitmapDrawable;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/TwidroidClient$3$1$1$1;->b:Lcom/twidroid/TwidroidClient$3$1$1;
iput-object p2, p0, Lcom/twidroid/TwidroidClient$3$1$1$1;->a:Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3$1$1$1;->b:Lcom/twidroid/TwidroidClient$3$1$1;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3$1$1;->a:Lcom/twidroid/TwidroidClient$3$1;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3$1;->a:Lcom/twidroid/TwidroidClient$3;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3;->a:Lcom/twidroid/ui/c/i;
iget-object v1, p0, Lcom/twidroid/TwidroidClient$3$1$1$1;->a:Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/i;->a(Landroid/graphics/drawable/Drawable;)Lcom/twidroid/ui/c/h;
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3$1$1$1;->b:Lcom/twidroid/TwidroidClient$3$1$1;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3$1$1;->a:Lcom/twidroid/TwidroidClient$3$1;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3$1;->a:Lcom/twidroid/TwidroidClient$3;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3;->b:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->h(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/a/af;
move-result-object v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/twidroid/TwidroidClient$3$1$1$1;->b:Lcom/twidroid/TwidroidClient$3$1$1;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3$1$1;->a:Lcom/twidroid/TwidroidClient$3$1;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3$1;->a:Lcom/twidroid/TwidroidClient$3;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$3;->b:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->h(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/ui/a/af;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/af;->notifyDataSetChanged()V
:cond_2a
return-void
.end method