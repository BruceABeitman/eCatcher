.class  Lcom/twidroid/TwidroidClient$23;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$23;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient$23;->a([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
.registers 6
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$23;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/UberSocialApplication;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/b;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_30
iget-object v0, p0, Lcom/twidroid/TwidroidClient$23;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/ubermedia/b/b;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
:goto_1b
const-string v2, "udid"
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/ubermedia/uberads/b;
invoke-direct {v0}, Lcom/ubermedia/uberads/b;-><init>()V
const/4 v2, 0x1
new-array v2, v2, [Ljava/util/Map;
const/4 v3, 0x0
aput-object v1, v2, v3
invoke-virtual {v0, v2}, Lcom/ubermedia/uberads/b;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
const/4 v0, 0x0
return-object v0
:cond_30
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "aaid:"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_1b
.end method