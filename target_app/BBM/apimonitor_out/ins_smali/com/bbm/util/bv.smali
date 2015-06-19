.class final Lcom/bbm/util/bv;
.super Lcom/bbm/util/b;
.source "HttpLoader.java"
.field private final a:Lcom/bbm/util/bo;
.field private final b:Ljava/net/URL;
.field private final c:Lcom/bbm/util/bu;
.method public constructor <init>(Lcom/bbm/util/bo;Ljava/net/URL;Lcom/bbm/util/bu;)V
.registers 4
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
iput-object p1, p0, Lcom/bbm/util/bv;->a:Lcom/bbm/util/bo;
iput-object p2, p0, Lcom/bbm/util/bv;->b:Ljava/net/URL;
iput-object p3, p0, Lcom/bbm/util/bv;->c:Lcom/bbm/util/bu;
return-void
.end method
.method private varargs b()Lcom/bbm/util/bw;
.registers 5
const/4 v0, 0x0
new-instance v1, Lcom/bbm/util/bw;
invoke-direct {v1, v0}, Lcom/bbm/util/bw;-><init>(B)V
:try_start_6
iget-object v0, p0, Lcom/bbm/util/bv;->a:Lcom/bbm/util/bo;
iget-object v2, p0, Lcom/bbm/util/bv;->b:Ljava/net/URL;
invoke-virtual {v0, v2}, Lcom/bbm/util/bo;->c(Ljava/net/URL;)[Ljava/lang/Object;
move-result-object v2
if-eqz v2, :cond_2a
const/4 v0, 0x0
aget-object v0, v2, v0
if-eqz v0, :cond_1e
const/4 v0, 0x0
aget-object v0, v2, v0
check-cast v0, [B
check-cast v0, [B
iput-object v0, v1, Lcom/bbm/util/bw;->a:[B
:cond_1e
const/4 v0, 0x1
aget-object v0, v2, v0
if-eqz v0, :cond_2a
const/4 v0, 0x1
aget-object v0, v2, v0
check-cast v0, Ljava/util/Map;
iput-object v0, v1, Lcom/bbm/util/bw;->b:Ljava/util/Map;
:cond_2a
:try_end_2a
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_2a} :catch_2b
.catch Ljava/lang/OutOfMemoryError; {:try_start_6 .. :try_end_2a} :catch_32
:goto_2a
return-object v1
:catch_2b
move-exception v0
iput-object v0, v1, Lcom/bbm/util/bw;->c:Ljava/lang/Exception;
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_2a
:catch_32
move-exception v0
new-instance v2, Ljava/lang/Exception;
invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V
iput-object v2, v1, Lcom/bbm/util/bw;->c:Ljava/lang/Exception;
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_2a
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-direct {p0}, Lcom/bbm/util/bv;->b()Lcom/bbm/util/bw;
move-result-object v0
return-object v0
.end method
.method protected final bridge synthetic a(Ljava/lang/Object;)V
.registers 5
check-cast p1, Lcom/bbm/util/bw;
iget-object v0, p0, Lcom/bbm/util/bv;->c:Lcom/bbm/util/bu;
if-eqz v0, :cond_13
iget-object v0, p1, Lcom/bbm/util/bw;->c:Ljava/lang/Exception;
if-nez v0, :cond_14
iget-object v0, p0, Lcom/bbm/util/bv;->c:Lcom/bbm/util/bu;
iget-object v1, p1, Lcom/bbm/util/bw;->a:[B
iget-object v2, p1, Lcom/bbm/util/bw;->b:Ljava/util/Map;
invoke-interface {v0, v1, v2}, Lcom/bbm/util/bu;->a([BLjava/util/Map;)V
:cond_13
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/bbm/util/bv;->c:Lcom/bbm/util/bu;
iget-object v1, p1, Lcom/bbm/util/bw;->c:Ljava/lang/Exception;
invoke-interface {v0, v1}, Lcom/bbm/util/bu;->a(Ljava/lang/Exception;)V
goto :goto_13
.end method