.class  Lcom/twidroid/service/FavoriteService$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/service/FavoriteService;
.method constructor <init>(Lcom/twidroid/service/FavoriteService;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/service/FavoriteService$2;->a:Lcom/twidroid/service/FavoriteService;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/service/FavoriteService$2;->a:Lcom/twidroid/service/FavoriteService;
invoke-virtual {v0}, Lcom/twidroid/service/FavoriteService;->getApplication()Landroid/app/Application;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/service/FavoriteService$2;->a:Lcom/twidroid/service/FavoriteService;
const v2, 0x7f0c0027
invoke-virtual {v1, v2}, Lcom/twidroid/service/FavoriteService;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method