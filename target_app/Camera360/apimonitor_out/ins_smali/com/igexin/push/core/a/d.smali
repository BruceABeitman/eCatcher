.class public Lcom/igexin/push/core/a/d;
.super Lcom/igexin/push/core/a/b;
.field private static final a:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lcom/igexin/push/a/i;->a:Ljava/lang/String;
sput-object v0, Lcom/igexin/push/core/a/d;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/push/core/a/b;-><init>()V
return-void
.end method
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
.registers 9
:try_start_0
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_47
const-string/jumbo v0, "action"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "block_client"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_47
const-string/jumbo v0, "duration"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_47
const-string/jumbo v0, "duration"
invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
move-result-wide v0
const-wide/16 v2, 0x3e8
mul-long/2addr v0, v2
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/16 v4, 0x0
cmp-long v4, v0, v4
if-eqz v4, :cond_47
add-long/2addr v0, v2
sput-wide v0, Lcom/igexin/push/a/j;->g:J
invoke-static {}, Lcom/igexin/push/a/a;->a()Lcom/igexin/push/a/a;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/a/a;->e()V
invoke-static {}, Lcom/igexin/push/e/b/g;->g()Lcom/igexin/push/e/b/g;
move-result-object v0
invoke-virtual {v0}, Lcom/igexin/push/e/b/g;->h()V
:goto_47
:try_end_47
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_47} :catch_49
:cond_47
const/4 v0, 0x1
return v0
:catch_49
move-exception v0
goto :goto_47
.end method