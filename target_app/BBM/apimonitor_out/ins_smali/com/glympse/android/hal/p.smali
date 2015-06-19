.class  Lcom/glympse/android/hal/p;
.super Ljava/lang/Object;
.source "ConnectivityChecker.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/glympse/android/hal/ConnectivityChecker$1;)V
.registers 2
invoke-direct {p0}, Lcom/glympse/android/hal/p;-><init>()V
return-void
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 4
invoke-static {}, Lcom/glympse/android/hal/t;->n()Landroid/content/Context;
move-result-object v1
if-nez v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const-string v0, "android.permission.ACCESS_NETWORK_STATE"
invoke-static {v1, v0}, Lcom/glympse/android/hal/t;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_21
new-instance v0, Lcom/glympse/android/hal/q;
invoke-direct {v0, v1}, Lcom/glympse/android/hal/q;-><init>(Landroid/content/Context;)V
:goto_15
invoke-static {v0}, Lcom/glympse/android/hal/ConnectivityChecker;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {}, Lcom/glympse/android/hal/ConnectivityChecker;->j()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
goto :goto_7
:cond_21
new-instance v0, Lcom/glympse/android/hal/o;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/glympse/android/hal/o;-><init>(Lcom/glympse/android/hal/ConnectivityChecker$1;)V
goto :goto_15
.end method