.class final Lcom/lenovo/lps/reaper/sdk/a/l;
.super Ljava/lang/Object;
.implements Lcom/lenovo/lps/reaper/sdk/a/i;
.field private static a:Ljava/lang/String;
.field private b:Ljava/util/concurrent/ConcurrentHashMap;
.method static constructor <clinit>()V
.registers 1
const-string/jumbo v0, "PriorityConfig"
sput-object v0, Lcom/lenovo/lps/reaper/sdk/a/l;->a:Ljava/lang/String;
return-void
.end method
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/l;->b:Ljava/util/concurrent/ConcurrentHashMap;
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/l;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const-string/jumbo v0, "\u0001"
invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
:try_start_8
aget-object v1, v0, v1
invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v1
const/4 v2, 0x1
aget-object v2, v0, v2
const/4 v3, 0x2
aget-object v3, v0, v3
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/l;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/l;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_2b
sget-object v0, Lcom/lenovo/lps/reaper/sdk/a/l;->a:Ljava/lang/String;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, " Prio:"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v4, " "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ":"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/lenovo/lps/reaper/sdk/b/m;->c(Ljava/lang/String;Ljava/lang/String;)V
:goto_5e
return-void
:cond_5f
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v4, p0, Lcom/lenovo/lps/reaper/sdk/a/l;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v4, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_70
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_70} :catch_71
goto :goto_2b
:catch_71
move-exception v0
sget-object v1, Lcom/lenovo/lps/reaper/sdk/a/l;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2, v0}, Lcom/lenovo/lps/reaper/sdk/b/m;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_5e
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
const-string/jumbo v0, "EventPriority"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final b(Ljava/lang/String;Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/b/f;
.registers 6
sget v1, Lcom/lenovo/lps/reaper/sdk/b/r;->a:I
:try_start_2
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/l;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4d
iget-object v0, p0, Lcom/lenovo/lps/reaper/sdk/a/l;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/HashMap;
const-string/jumbo v2, "#Ignore#"
invoke-virtual {v0, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_41
const-string/jumbo v2, "#Ignore#"
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_27
.catch Ljava/lang/Exception; {:try_start_2 .. :try_end_27} :catch_4c
move-result v0
:goto_28
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v2, "LV"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/lenovo/lps/reaper/sdk/b/f;->valueOf(Ljava/lang/String;)Lcom/lenovo/lps/reaper/sdk/b/f;
move-result-object v0
return-object v0
:try_start_41
:cond_41
invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_41 .. :try_end_4a} :catch_4c
move-result v0
goto :goto_28
:catch_4c
move-exception v0
:cond_4d
move v0, v1
goto :goto_28
.end method