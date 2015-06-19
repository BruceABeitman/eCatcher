.class public abstract Lcom/gindin/zmanim/times/Zman;
.super Ljava/lang/Object;
.source "Zman.java"
.field public final advanced:Z
.field private cachedFormattedTime:Ljava/lang/String;
.field private cachedTime:Ljava/util/Date;
.field public final description:Ljava/lang/String;
.field public final name:Ljava/lang/String;
.field public final type:Lcom/gindin/zmanim/times/Zmanim$Type;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0, p1, p2, p3, v0}, Lcom/gindin/zmanim/times/Zman;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Z)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gindin/zmanim/times/Zmanim$Type;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/gindin/zmanim/times/Zman;->name:Ljava/lang/String;
iput-object p2, p0, Lcom/gindin/zmanim/times/Zman;->description:Ljava/lang/String;
iput-object p3, p0, Lcom/gindin/zmanim/times/Zman;->type:Lcom/gindin/zmanim/times/Zmanim$Type;
iput-boolean p4, p0, Lcom/gindin/zmanim/times/Zman;->advanced:Z
return-void
.end method
.method protected abstract calculate()Ljava/util/Date;
.end method
.method public clearCache()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/gindin/zmanim/times/Zman;->cachedTime:Ljava/util/Date;
iput-object v0, p0, Lcom/gindin/zmanim/times/Zman;->cachedFormattedTime:Ljava/lang/String;
return-void
.end method
.method public getCachedFormattedTime()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/gindin/zmanim/times/Zman;->cachedFormattedTime:Ljava/lang/String;
return-object v0
.end method
.method public getTime()Ljava/util/Date;
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/gindin/zmanim/times/Zman;->cachedTime:Ljava/util/Date;
if-nez v0, :cond_b
invoke-virtual {p0}, Lcom/gindin/zmanim/times/Zman;->calculate()Ljava/util/Date;
move-result-object v0
iput-object v0, p0, Lcom/gindin/zmanim/times/Zman;->cachedTime:Ljava/util/Date;
:cond_b
monitor-exit p0
:try_end_c
.catchall {:try_start_1 .. :try_end_c} :catchall_f
iget-object v0, p0, Lcom/gindin/zmanim/times/Zman;->cachedTime:Ljava/util/Date;
return-object v0
:catchall_f
move-exception v0
:try_start_10
monitor-exit p0
:try_end_11
.catchall {:try_start_10 .. :try_end_11} :catchall_f
throw v0
.end method
.method public setCachedFormattedTime(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/gindin/zmanim/times/Zman;->cachedFormattedTime:Ljava/lang/String;
return-void
.end method