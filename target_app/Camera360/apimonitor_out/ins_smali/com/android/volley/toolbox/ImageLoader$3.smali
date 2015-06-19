.class  Lcom/android/volley/toolbox/ImageLoader$3;
.super Ljava/lang/Object;
.source "ImageLoader.java"
.implements Lcom/android/volley/Response$ErrorListener;
.field final synthetic this$0:Lcom/android/volley/toolbox/ImageLoader;
.field private final synthetic val$cacheKey:Ljava/lang/String;
.method constructor <init>(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/android/volley/toolbox/ImageLoader$3;->this$0:Lcom/android/volley/toolbox/ImageLoader;
iput-object p2, p0, Lcom/android/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onErrorResponse(Lcom/android/volley/VolleyError;)V
.registers 4
iget-object v0, p0, Lcom/android/volley/toolbox/ImageLoader$3;->this$0:Lcom/android/volley/toolbox/ImageLoader;
iget-object v1, p0, Lcom/android/volley/toolbox/ImageLoader$3;->val$cacheKey:Ljava/lang/String;
#calls: Lcom/android/volley/toolbox/ImageLoader;->onGetImageError(Ljava/lang/String;Lcom/android/volley/VolleyError;)V
invoke-static {v0, v1, p1}, Lcom/android/volley/toolbox/ImageLoader;->access$3(Lcom/android/volley/toolbox/ImageLoader;Ljava/lang/String;Lcom/android/volley/VolleyError;)V
return-void
.end method