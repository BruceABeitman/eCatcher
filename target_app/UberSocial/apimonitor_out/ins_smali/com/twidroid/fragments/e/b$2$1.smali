.class  Lcom/twidroid/fragments/e/b$2$1;
.super Lcom/twidroid/net/a/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/fragments/e/b$2;
.method constructor <init>(Lcom/twidroid/fragments/e/b$2;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/b$2$1;->a:Lcom/twidroid/fragments/e/b$2;
invoke-direct {p0}, Lcom/twidroid/net/a/a/a;-><init>()V
return-void
.end method
.method public a(Lorg/json/JSONObject;Ljava/lang/Object;)V
.registers 7
const-string v0, "id"
invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v1, "name"
invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
new-instance v2, Lcom/twidroid/net/a/a/c;
iget-object v3, p0, Lcom/twidroid/fragments/e/b$2$1;->a:Lcom/twidroid/fragments/e/b$2;
iget-object v3, v3, Lcom/twidroid/fragments/e/b$2;->a:Lcom/facebook/a/e;
invoke-direct {v2, v3, v0, v1}, Lcom/twidroid/net/a/a/c;-><init>(Lcom/facebook/a/e;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/b$2$1;->a:Lcom/twidroid/fragments/e/b$2;
iget-object v0, v0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;
invoke-virtual {v0}, Lcom/twidroid/fragments/e/b;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/twidroid/net/a/a/c;->a(Landroid/content/Context;)Z
iget-object v0, p0, Lcom/twidroid/fragments/e/b$2$1;->a:Lcom/twidroid/fragments/e/b$2;
iget-object v0, v0, Lcom/twidroid/fragments/e/b$2;->b:Lcom/twidroid/fragments/e/b;
new-instance v1, Lcom/twidroid/fragments/e/b$2$1$1;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/e/b$2$1$1;-><init>(Lcom/twidroid/fragments/e/b$2$1;)V
invoke-static {v0, v1}, Lcom/twidroid/fragments/e/b;->a(Lcom/twidroid/fragments/e/b;Ljava/lang/Runnable;)V
return-void
.end method