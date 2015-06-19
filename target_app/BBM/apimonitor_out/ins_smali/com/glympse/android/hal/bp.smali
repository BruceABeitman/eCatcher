.class  Lcom/glympse/android/hal/bp;
.super Ljava/lang/Object;
.source "SmsProvider.java"
.implements Ljava/lang/Runnable;
.field final synthetic eE:Lcom/glympse/android/hal/bo;
.method private constructor <init>(Lcom/glympse/android/hal/bo;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/bp;->eE:Lcom/glympse/android/hal/bo;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/hal/bo;Lcom/glympse/android/hal/bm$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/hal/bp;-><init>(Lcom/glympse/android/hal/bo;)V
return-void
.end method
.method public run()V
.registers 6
const/4 v4, 0x0
const-string v0, "SMS Timeout - No SMS_SENT intent received"
const/4 v1, 0x5
const-string v2, "SMS Timeout - No SMS_SENT intent received"
invoke-static {v1, v2}, Lcom/glympse/android/lib/Debug;->log(ILjava/lang/String;)V
iget-object v1, p0, Lcom/glympse/android/hal/bp;->eE:Lcom/glympse/android/hal/bo;
iget-object v1, v1, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;
invoke-static {v1}, Lcom/glympse/android/hal/bm;->c(Lcom/glympse/android/hal/bm;)I
iget-object v1, p0, Lcom/glympse/android/hal/bp;->eE:Lcom/glympse/android/hal/bo;
iget-object v1, v1, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;
invoke-static {v1}, Lcom/glympse/android/hal/bm;->d(Lcom/glympse/android/hal/bm;)I
move-result v1
if-nez v1, :cond_21
iget-object v1, p0, Lcom/glympse/android/hal/bp;->eE:Lcom/glympse/android/hal/bo;
iget-object v1, v1, Lcom/glympse/android/hal/bo;->ez:Lcom/glympse/android/hal/bm;
invoke-virtual {v1}, Lcom/glympse/android/hal/bm;->X()V
:cond_21
iget-object v1, p0, Lcom/glympse/android/hal/bp;->eE:Lcom/glympse/android/hal/bo;
invoke-static {v1}, Lcom/glympse/android/hal/bo;->a(Lcom/glympse/android/hal/bo;)Lcom/glympse/android/hal/GSmsListener;
move-result-object v1
const/4 v2, 0x0
const/16 v3, 0x309
invoke-interface {v1, v2, v3, v0, v4}, Lcom/glympse/android/hal/GSmsListener;->complete(ZILjava/lang/String;Lcom/glympse/android/core/GCommon;)V
iget-object v0, p0, Lcom/glympse/android/hal/bp;->eE:Lcom/glympse/android/hal/bo;
invoke-static {v0, v4}, Lcom/glympse/android/hal/bo;->a(Lcom/glympse/android/hal/bo;Lcom/glympse/android/hal/GSmsListener;)Lcom/glympse/android/hal/GSmsListener;
iget-object v0, p0, Lcom/glympse/android/hal/bp;->eE:Lcom/glympse/android/hal/bo;
invoke-static {v0}, Lcom/glympse/android/hal/bo;->b(Lcom/glympse/android/hal/bo;)V
return-void
.end method