.class public final Lcom/facebook/a/b/a;
.super Ljava/lang/Object;
.source "HttpPostSender.java"
.implements Lcom/facebook/a/b/b;
.field private a:Landroid/net/Uri;
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/a/b/a;->a:Landroid/net/Uri;
invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iput-object v0, p0, Lcom/facebook/a/b/a;->a:Landroid/net/Uri;
return-void
.end method
.method private static a(Ljava/util/Map;)Ljava/util/Map;
.registers 7
new-instance v1, Ljava/util/HashMap;
invoke-interface {p0}, Ljava/util/Map;->size()I
move-result v0
invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V
sget-object v2, Lcom/facebook/a/a;->b:[Lcom/facebook/a/r;
array-length v3, v2
const/4 v0, 0x0
:goto_d
if-ge v0, v3, :cond_1f
aget-object v4, v2, v0
invoke-virtual {v4}, Lcom/facebook/a/r;->toString()Ljava/lang/String;
move-result-object v5
invoke-interface {p0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
invoke-interface {v1, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
add-int/lit8 v0, v0, 0x1
goto :goto_d
:cond_1f
return-object v1
.end method
.method public final a(Lcom/facebook/a/d;)V
.registers 6
:try_start_0
invoke-static {p1}, Lcom/facebook/a/b/a;->a(Ljava/util/Map;)Ljava/util/Map;
move-result-object v0
new-instance v1, Ljava/net/URL;
iget-object v2, p0, Lcom/facebook/a/b/a;->a:Landroid/net/Uri;
invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
sget-object v2, Lcom/facebook/a/a;->a:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Connect to "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/net/URL;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Lcom/facebook/a/a;->a()Lcom/facebook/a/a/b;
move-result-object v2
invoke-interface {v2}, Lcom/facebook/a/a/b;->c()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/facebook/a/c/e;->a(Ljava/util/Map;Ljava/net/URL;Ljava/lang/String;)V
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2a} :catch_2b
return-void
:catch_2b
move-exception v0
new-instance v1, Lcom/facebook/a/b/c;
const-string v2, "Error while sending report to Http Post Form."
invoke-direct {v1, v2, v0}, Lcom/facebook/a/b/c;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method