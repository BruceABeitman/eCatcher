.class public final Lcom/instagram/common/q/b/i;
.super Ljava/lang/Object;
.source "PushRegistrarFactory.java"
.field private static a:Lcom/instagram/common/q/b/h;
.method public static a()Lcom/instagram/common/q/b/h;
.registers 1
sget-object v0, Lcom/instagram/common/q/b/i;->a:Lcom/instagram/common/q/b/h;
if-nez v0, :cond_a
invoke-static {}, Lcom/instagram/common/q/b/i;->b()Lcom/instagram/common/q/b/h;
move-result-object v0
sput-object v0, Lcom/instagram/common/q/b/i;->a:Lcom/instagram/common/q/b/h;
:cond_a
sget-object v0, Lcom/instagram/common/q/b/i;->a:Lcom/instagram/common/q/b/h;
return-object v0
.end method
.method private static b()Lcom/instagram/common/q/b/h;
.registers 1
:try_start_0
const-string v0, "com.amazon.device.messaging.ADM"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
new-instance v0, Lcom/instagram/common/q/b/a/a;
invoke-direct {v0}, Lcom/instagram/common/q/b/a/a;-><init>()V
:try_end_a
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-object v0
:catch_b
move-exception v0
new-instance v0, Lcom/instagram/common/q/b/b/a;
invoke-direct {v0}, Lcom/instagram/common/q/b/b/a;-><init>()V
goto :goto_a
.end method