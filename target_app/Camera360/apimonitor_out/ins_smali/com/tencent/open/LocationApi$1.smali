.class  Lcom/tencent/open/LocationApi$1;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Ljava/lang/Runnable;
.field final synthetic a:[Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/tencent/open/LocationApi;
.method constructor <init>(Lcom/tencent/open/LocationApi;[Ljava/lang/String;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/tencent/open/LocationApi$1;->c:Lcom/tencent/open/LocationApi;
iput-object p2, p0, Lcom/tencent/open/LocationApi$1;->a:[Ljava/lang/String;
iput-object p3, p0, Lcom/tencent/open/LocationApi$1;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 5
iget-object v0, p0, Lcom/tencent/open/LocationApi$1;->a:[Ljava/lang/String;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/tencent/open/LocationApi$1;->a:[Ljava/lang/String;
array-length v0, v0
if-nez v0, :cond_a
:cond_9
:goto_9
return-void
:cond_a
const-string/jumbo v0, "search_nearby"
iget-object v1, p0, Lcom/tencent/open/LocationApi$1;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
const-string/jumbo v0, "id_search_nearby"
:goto_18
iget-object v1, p0, Lcom/tencent/open/LocationApi$1;->c:Lcom/tencent/open/LocationApi;
invoke-static {v1}, Lcom/tencent/open/LocationApi;->d(Lcom/tencent/open/LocationApi;)Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/tencent/open/LocationApi$1;->c:Lcom/tencent/open/LocationApi;
invoke-static {v2}, Lcom/tencent/open/LocationApi;->e(Lcom/tencent/open/LocationApi;)Lcom/tencent/connect/auth/QQToken;
move-result-object v2
iget-object v3, p0, Lcom/tencent/open/LocationApi$1;->a:[Ljava/lang/String;
invoke-static {v1, v2, v0, v3}, Lcom/tencent/connect/a/a;->a(Landroid/content/Context;Lcom/tencent/connect/auth/QQToken;Ljava/lang/String;[Ljava/lang/String;)V
goto :goto_9
:cond_2a
const-string/jumbo v0, "id_delete_location"
goto :goto_18
.end method