.class  Lcom/bbm/l/c/h;
.super Lcom/bbm/util/b;
.source "AsyncStickerPackListFetcher.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/bbm/util/b;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/bbm/l/c/h;-><init>()V
return-void
.end method
.method private static varargs b()Ljava/net/URL;
.registers 3
new-instance v2, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/bbm/l/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v0, "?"
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {v2}, Lcom/bbm/l/c/a;->a(Ljava/lang/StringBuilder;)V
const/4 v1, 0x0
:try_start_12
new-instance v0, Ljava/net/URL;
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:goto_1b
:try_end_1b
.catch Ljava/net/MalformedURLException; {:try_start_12 .. :try_end_1b} :catch_1c
return-object v0
:catch_1c
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
move-object v0, v1
goto :goto_1b
.end method
.method protected final synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
invoke-static {}, Lcom/bbm/l/c/h;->b()Ljava/net/URL;
move-result-object v0
return-object v0
.end method