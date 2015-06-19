.class public final Lcom/instagram/share/f/g;
.super Ljava/lang/Object;
.source "TwitterXAuth.java"
.method static synthetic a(Ljava/util/List;)Ljava/util/Map;
.registers 2
invoke-static {p0}, Lcom/instagram/share/f/g;->b(Ljava/util/List;)Ljava/util/Map;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/instagram/share/f/i;)V
.registers 6
new-instance v0, Lcom/instagram/share/f/h;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/instagram/share/f/h;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/instagram/share/f/i;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/instagram/share/f/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method private static b(Ljava/util/List;)Ljava/util/Map;
.registers 5
new-instance v1, Ljava/util/HashMap;
invoke-direct {v1}, Ljava/util/HashMap;-><init>()V
invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v2
:goto_9
invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_21
invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/NameValuePair;
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;
move-result-object v3
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_9
:cond_21
return-object v1
.end method