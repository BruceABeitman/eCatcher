.class  Lcom/android/volley/toolbox/NetworkImageView$1$1;
.super Ljava/lang/Object;
.source "NetworkImageView.java"
.implements Ljava/lang/Runnable;
.field final synthetic this$1:Lcom/android/volley/toolbox/NetworkImageView$1;
.field private final synthetic val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
.method constructor <init>(Lcom/android/volley/toolbox/NetworkImageView$1;Lcom/android/volley/toolbox/ImageLoader$ImageContainer;)V
.registers 3
iput-object p1, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/android/volley/toolbox/NetworkImageView$1;
iput-object p2, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 4
iget-object v0, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->this$1:Lcom/android/volley/toolbox/NetworkImageView$1;
iget-object v1, p0, Lcom/android/volley/toolbox/NetworkImageView$1$1;->val$response:Lcom/android/volley/toolbox/ImageLoader$ImageContainer;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/android/volley/toolbox/NetworkImageView$1;->onResponse(Lcom/android/volley/toolbox/ImageLoader$ImageContainer;Z)V
return-void
.end method