.class  Lcom/android/volley/RequestQueue$1;
.super Ljava/lang/Object;
.source "RequestQueue.java"
.implements Lcom/android/volley/RequestQueue$RequestFilter;
.field final synthetic this$0:Lcom/android/volley/RequestQueue;
.field private final synthetic val$tag:Ljava/lang/Object;
.method constructor <init>(Lcom/android/volley/RequestQueue;Ljava/lang/Object;)V
.registers 3
iput-object p1, p0, Lcom/android/volley/RequestQueue$1;->this$0:Lcom/android/volley/RequestQueue;
iput-object p2, p0, Lcom/android/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public apply(Lcom/android/volley/Request;)Z
.registers 4
invoke-virtual {p1}, Lcom/android/volley/Request;->getTag()Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/android/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;
if-ne v0, v1, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method