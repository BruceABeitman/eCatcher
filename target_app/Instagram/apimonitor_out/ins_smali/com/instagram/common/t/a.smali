.class public final Lcom/instagram/common/t/a;
.super Ljava/lang/Object;
.source "ThreadUtil.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/instagram/common/t/a;-><init>()V
return-void
.end method
.method public static a()Lcom/instagram/common/t/a;
.registers 1
sget-object v0, Lcom/instagram/common/t/b;->a:Lcom/instagram/common/t/a;
return-object v0
.end method
.method private static a(Ljava/lang/String;)V
.registers 2
invoke-static {}, Lcom/instagram/common/t/a;->c()Z
move-result v0
invoke-static {v0, p0}, Lcom/instagram/common/t/a;->a(ZLjava/lang/String;)V
return-void
.end method
.method private static a(ZLjava/lang/String;)V
.registers 3
if-nez p0, :cond_8
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_8
return-void
.end method
.method public static c()Z
.registers 2
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v0
invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;
move-result-object v0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v1
if-ne v0, v1, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public final b()V
.registers 2
const-string v0, "This operation must be run on UI thread."
invoke-static {v0}, Lcom/instagram/common/t/a;->a(Ljava/lang/String;)V
return-void
.end method