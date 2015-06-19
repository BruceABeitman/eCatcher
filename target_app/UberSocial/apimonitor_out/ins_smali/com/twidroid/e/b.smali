.class public Lcom/twidroid/e/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "RuntimeCache"
.field private static b:Ljava/util/HashMap;
.field private static c:Ljava/util/HashMap;
.field private static d:Lcom/twidroid/e/b;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/e/b;->b:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/e/b;->c:Ljava/util/HashMap;
return-void
.end method
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static declared-synchronized a()Lcom/twidroid/e/b;
.registers 2
const-class v1, Lcom/twidroid/e/b;
monitor-enter v1
:try_start_3
sget-object v0, Lcom/twidroid/e/b;->d:Lcom/twidroid/e/b;
if-nez v0, :cond_e
new-instance v0, Lcom/twidroid/e/b;
invoke-direct {v0}, Lcom/twidroid/e/b;-><init>()V
sput-object v0, Lcom/twidroid/e/b;->d:Lcom/twidroid/e/b;
:cond_e
sget-object v0, Lcom/twidroid/e/b;->d:Lcom/twidroid/e/b;
:try_end_10
.catchall {:try_start_3 .. :try_end_10} :catchall_12
monitor-exit v1
return-object v0
:catchall_12
move-exception v0
monitor-exit v1
throw v0
.end method
.method public a(J)Lcom/twidroid/model/twitter/Tweet;
.registers 7
const-string v0, "RuntimeCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "getTweet with id="
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
const-string v0, "RuntimeCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "in cache? "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v3, Lcom/twidroid/e/b;->c:Ljava/util/HashMap;
invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v0, Lcom/twidroid/e/b;->c:Ljava/util/HashMap;
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/SoftReference;
if-nez v0, :cond_46
const/4 v0, 0x0
:cond_45
:goto_45
return-object v0
:cond_46
invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/Tweet;
if-nez v0, :cond_45
const-string v2, "RuntimeCache"
const-string v3, "Key exists, but value is null. Tweet was deleted by GC."
invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v2, Lcom/twidroid/e/b;->c:Ljava/util/HashMap;
invoke-virtual {v2, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_45
.end method
.method public a(Ljava/lang/String;)Lcom/twidroid/model/twitter/User;
.registers 5
const-string v0, "RuntimeCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "getUser "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "RuntimeCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "in cache? "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/twidroid/e/b;->b:Ljava/util/HashMap;
invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v0, Lcom/twidroid/e/b;->b:Ljava/util/HashMap;
invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/ref/SoftReference;
if-nez v0, :cond_42
const/4 v0, 0x0
:goto_41
:cond_41
return-object v0
:cond_42
invoke-virtual {v0}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
if-nez v0, :cond_41
const-string v1, "RuntimeCache"
const-string v2, "Key exists, but value is null. User was deleted by GC."
invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v1, Lcom/twidroid/e/b;->c:Ljava/util/HashMap;
invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_41
.end method
.method public a(Lcom/twidroid/model/twitter/Tweet;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
const-string v0, "RuntimeCache"
const-string v1, "adding tweet"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v0, Lcom/twidroid/e/b;->c:Ljava/util/HashMap;
iget-wide v1, p1, Lcom/twidroid/model/twitter/Tweet;->x:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
new-instance v2, Ljava/lang/ref/SoftReference;
invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2
.end method
.method public a(Lcom/twidroid/model/twitter/User;)V
.registers 5
if-nez p1, :cond_3
:goto_2
return-void
:cond_3
const-string v0, "RuntimeCache"
const-string v1, "adding user"
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
sget-object v0, Lcom/twidroid/e/b;->b:Ljava/util/HashMap;
iget-object v1, p1, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
new-instance v2, Ljava/lang/ref/SoftReference;
invoke-direct {v2, p1}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V
invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_2
.end method
.method public b()V
.registers 2
sget-object v0, Lcom/twidroid/e/b;->b:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
sget-object v0, Lcom/twidroid/e/b;->c:Ljava/util/HashMap;
invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
invoke-static {}, Ljava/lang/System;->gc()V
return-void
.end method