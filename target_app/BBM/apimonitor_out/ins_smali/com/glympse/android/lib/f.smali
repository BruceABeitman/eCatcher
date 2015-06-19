.class  Lcom/glympse/android/lib/f;
.super Lcom/glympse/android/lib/hj;
.source "AccountManager.java"
.method public constructor <init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V
.registers 7
invoke-direct {p0, p1, p2, p3}, Lcom/glympse/android/lib/hj;-><init>(Lcom/glympse/android/lib/GGlympsePrivate;Lcom/glympse/android/lib/GBatchListener;Lcom/glympse/android/hal/GVector;)V
invoke-interface {p1}, Lcom/glympse/android/lib/GGlympsePrivate;->getServerPost()Lcom/glympse/android/lib/GServerPost;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/lib/GServerPost;->getAuthUrl()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/glympse/android/lib/f;->f:Ljava/lang/String;
iget-object v0, p0, Lcom/glympse/android/lib/f;->_backOffPolicy:Lcom/glympse/android/lib/bm;
invoke-static {}, Lcom/glympse/android/lib/f;->aj()D
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/glympse/android/lib/bm;->a(D)V
return-void
.end method
.method public static aj()D
.registers 2
const-wide/high16 v0, 0x4004
return-wide v0
.end method