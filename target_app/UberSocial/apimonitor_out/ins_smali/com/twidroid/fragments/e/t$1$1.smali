.class  Lcom/twidroid/fragments/e/t$1$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/CharSequence;
.field final synthetic b:Lcom/twidroid/fragments/e/t$1;
.method constructor <init>(Lcom/twidroid/fragments/e/t$1;Ljava/lang/CharSequence;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/e/t$1$1;->b:Lcom/twidroid/fragments/e/t$1;
iput-object p2, p0, Lcom/twidroid/fragments/e/t$1$1;->a:Ljava/lang/CharSequence;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/twidroid/fragments/e/t$1$1;->b:Lcom/twidroid/fragments/e/t$1;
iget-object v0, v0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/t;->P()V
iget-object v0, p0, Lcom/twidroid/fragments/e/t$1$1;->b:Lcom/twidroid/fragments/e/t$1;
iget-object v0, v0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/t;->M()V
iget-object v0, p0, Lcom/twidroid/fragments/e/t$1$1;->a:Ljava/lang/CharSequence;
const-string v1, "LOCATION_DISABLED"
invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
:try_start_18
iget-object v0, p0, Lcom/twidroid/fragments/e/t$1$1;->b:Lcom/twidroid/fragments/e/t$1;
iget-object v0, v0, Lcom/twidroid/fragments/e/t$1;->a:Lcom/twidroid/fragments/e/t;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/t;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/c/l;->a(Landroid/app/Activity;)Landroid/app/AlertDialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
:goto_27
:try_end_27
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_27} :catch_28
:cond_27
return-void
:catch_28
move-exception v0
const-string v1, "NearbyFragment"
const-string v2, "error showing location dialog"
invoke-static {v1, v2, v0}, Lcom/ubermedia/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_27
.end method