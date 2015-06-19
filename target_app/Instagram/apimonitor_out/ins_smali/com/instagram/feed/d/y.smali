.class public final Lcom/instagram/feed/d/y;
.super Ljava/lang/Object;
.source "MediaStore.java"
.field private static final a:Lcom/instagram/feed/d/y;
.field private final b:Ljava/util/concurrent/ConcurrentHashMap;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/instagram/feed/d/y;
invoke-direct {v0}, Lcom/instagram/feed/d/y;-><init>()V
sput-object v0, Lcom/instagram/feed/d/y;->a:Lcom/instagram/feed/d/y;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lcom/instagram/feed/d/y;->b:Ljava/util/concurrent/ConcurrentHashMap;
return-void
.end method
.method public static a()Lcom/instagram/feed/d/y;
.registers 1
sget-object v0, Lcom/instagram/feed/d/y;->a:Lcom/instagram/feed/d/y;
return-object v0
.end method
.method public final a(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
.registers 4
iget-object v0, p0, Lcom/instagram/feed/d/y;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
return-object v0
.end method
.method public final a(Ljava/lang/String;)Z
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/y;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public final b(Lcom/instagram/feed/d/l;)Lcom/instagram/feed/d/l;
.registers 4
iget-object v0, p0, Lcom/instagram/feed/d/y;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
if-eqz v0, :cond_16
invoke-virtual {v0, p1}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/feed/d/l;)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/feed/d/l;->a(Z)V
:goto_15
return-object v0
:cond_16
move-object v0, p1
goto :goto_15
.end method
.method public final b(Ljava/lang/String;)Lcom/instagram/feed/d/l;
.registers 3
if-nez p1, :cond_4
const/4 v0, 0x0
:goto_3
return-object v0
:cond_4
iget-object v0, p0, Lcom/instagram/feed/d/y;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
goto :goto_3
.end method
.method public final c(Ljava/lang/String;)Lcom/instagram/feed/d/l;
.registers 3
iget-object v0, p0, Lcom/instagram/feed/d/y;->b:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/d/l;
return-object v0
.end method