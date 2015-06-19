.class  Lcom/twidroid/TwidroidClient$5;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field final synthetic a:Lcom/twidroid/TwidroidClient;
.method constructor <init>(Lcom/twidroid/TwidroidClient;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$5;->a:Lcom/twidroid/TwidroidClient;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
return-void
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/TwidroidClient$5;->a([Ljava/lang/Void;)Ljava/lang/Void;
move-result-object v0
return-object v0
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Void;
.registers 3
:try_start_0
iget-object v0, p0, Lcom/twidroid/TwidroidClient$5;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->j(Lcom/twidroid/TwidroidClient;)V
:try_end_5
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_5} :catch_7
:goto_5
const/4 v0, 0x0
return-object v0
:catch_7
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto :goto_5
.end method