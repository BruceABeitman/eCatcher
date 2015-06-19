.class  Lcom/glympse/android/hal/x;
.super Ljava/lang/Object;
.source "GCMReceiver.java"
.implements Ljava/lang/Runnable;
.field final synthetic aY:Lcom/glympse/android/hal/GCMReceiver;
.method private constructor <init>(Lcom/glympse/android/hal/GCMReceiver;)V
.registers 2
iput-object p1, p0, Lcom/glympse/android/hal/x;->aY:Lcom/glympse/android/hal/GCMReceiver;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/hal/GCMReceiver;Lcom/glympse/android/hal/GCMReceiver$1;)V
.registers 3
invoke-direct {p0, p1}, Lcom/glympse/android/hal/x;-><init>(Lcom/glympse/android/hal/GCMReceiver;)V
return-void
.end method
.method public run()V
.registers 3
invoke-static {}, Lcom/glympse/android/hal/GCMReceiver;->o()I
const-wide/16 v0, 0x2
invoke-static {v0, v1}, Lcom/glympse/android/hal/GCMReceiver;->b(J)J
invoke-static {}, Lcom/glympse/android/hal/GCMReceiver;->register()V
return-void
.end method