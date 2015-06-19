.class  Lcom/glympse/android/lib/hm;
.super Ljava/lang/Object;
.source "ServerPost.java"
.implements Ljava/lang/Runnable;
.field private lf:Lcom/glympse/android/lib/GServerPost;
.field private sb:Lcom/glympse/android/lib/GApiEndpoint;
.method public constructor <init>(Lcom/glympse/android/lib/GServerPost;Lcom/glympse/android/lib/GApiEndpoint;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/glympse/android/lib/hm;->lf:Lcom/glympse/android/lib/GServerPost;
iput-object p2, p0, Lcom/glympse/android/lib/hm;->sb:Lcom/glympse/android/lib/GApiEndpoint;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/glympse/android/lib/hm;->lf:Lcom/glympse/android/lib/GServerPost;
iget-object v1, p0, Lcom/glympse/android/lib/hm;->sb:Lcom/glympse/android/lib/GApiEndpoint;
invoke-interface {v0, v1}, Lcom/glympse/android/lib/GServerPost;->removeEndpoint(Lcom/glympse/android/lib/GApiEndpoint;)Z
return-void
.end method