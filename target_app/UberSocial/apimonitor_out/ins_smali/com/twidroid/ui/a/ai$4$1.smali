.class  Lcom/twidroid/ui/a/ai$4$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/twidroid/ui/a/ai$4;
.method constructor <init>(Lcom/twidroid/ui/a/ai$4;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/ui/a/ai$4$1;->b:Lcom/twidroid/ui/a/ai$4;
iput-object p2, p0, Lcom/twidroid/ui/a/ai$4$1;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/ai$4$1;->b:Lcom/twidroid/ui/a/ai$4;
iget-object v0, v0, Lcom/twidroid/ui/a/ai$4;->a:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
iget-object v0, p0, Lcom/twidroid/ui/a/ai$4$1;->b:Lcom/twidroid/ui/a/ai$4;
iget-object v0, v0, Lcom/twidroid/ui/a/ai$4;->a:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/twidroid/ui/a/ai$4$1;->a:Ljava/lang/String;
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
return-void
.end method