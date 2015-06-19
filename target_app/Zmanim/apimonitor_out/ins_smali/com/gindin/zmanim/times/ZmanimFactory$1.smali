.class  Lcom/gindin/zmanim/times/ZmanimFactory$1;
.super Ljava/lang/Object;
.source "ZmanimFactory.java"
.implements Lcom/gindin/zmanim/calendar/HebrewZmanimCalendar$Listener;
.field final synthetic this$0:Lcom/gindin/zmanim/times/ZmanimFactory;
.method constructor <init>(Lcom/gindin/zmanim/times/ZmanimFactory;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/times/ZmanimFactory$1;->this$0:Lcom/gindin/zmanim/times/ZmanimFactory;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public dateChanged()V
.registers 5
iget-object v2, p0, Lcom/gindin/zmanim/times/ZmanimFactory$1;->this$0:Lcom/gindin/zmanim/times/ZmanimFactory;
#getter for: Lcom/gindin/zmanim/times/ZmanimFactory;->typeToZmanimMap:Ljava/util/Map;
invoke-static {v2}, Lcom/gindin/zmanim/times/ZmanimFactory;->access$000(Lcom/gindin/zmanim/times/ZmanimFactory;)Ljava/util/Map;
move-result-object v2
monitor-enter v2
:try_start_7
iget-object v3, p0, Lcom/gindin/zmanim/times/ZmanimFactory$1;->this$0:Lcom/gindin/zmanim/times/ZmanimFactory;
#getter for: Lcom/gindin/zmanim/times/ZmanimFactory;->typeToZmanimMap:Ljava/util/Map;
invoke-static {v3}, Lcom/gindin/zmanim/times/ZmanimFactory;->access$000(Lcom/gindin/zmanim/times/ZmanimFactory;)Ljava/util/Map;
move-result-object v3
invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;
move-result-object v3
invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v0
:goto_15
invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_28
invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/gindin/zmanim/times/Zmanim;
invoke-virtual {v1}, Lcom/gindin/zmanim/times/Zmanim;->clearCaches()V
goto :goto_15
:catchall_25
move-exception v3
monitor-exit v2
:try_end_27
.catchall {:try_start_7 .. :try_end_27} :catchall_25
throw v3
:cond_28
:try_start_28
monitor-exit v2
:try_end_29
.catchall {:try_start_28 .. :try_end_29} :catchall_25
return-void
.end method