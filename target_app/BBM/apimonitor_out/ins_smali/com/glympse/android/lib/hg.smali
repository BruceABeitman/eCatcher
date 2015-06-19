.class  Lcom/glympse/android/lib/hg;
.super Lcom/glympse/android/lib/j;
.source "SearchJob.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/glympse/android/lib/j;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/lib/hf$1;)V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/lib/hg;-><init>()V
return-void
.end method
.method public cancel()V
.registers 1
return-void
.end method
.method public process()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public url(Ljava/lang/StringBuilder;)Z
.registers 3
const-string v0, "/places/search"
invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
const/4 v0, 0x0
return v0
.end method