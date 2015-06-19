.class  Ljavax/activation/SecuritySupport$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/security/PrivilegedAction;
.field private final synthetic val$cl:Ljava/lang/ClassLoader;
.field private final synthetic val$name:Ljava/lang/String;
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Ljavax/activation/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;
iput-object p2, p0, Ljavax/activation/SecuritySupport$3;->val$name:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()Ljava/lang/Object;
.registers 5
const/4 v0, 0x0
check-cast v0, [Ljava/net/URL;
:try_start_3
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
iget-object v1, p0, Ljavax/activation/SecuritySupport$3;->val$cl:Ljava/lang/ClassLoader;
iget-object v3, p0, Ljavax/activation/SecuritySupport$3;->val$name:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v3
:cond_10
:goto_10
if-eqz v3, :cond_18
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v1
if-nez v1, :cond_2b
:cond_18
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_2a
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Ljava/net/URL;
:try_end_24
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_24} :catch_37
.catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_24} :catch_39
:try_start_24
invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/net/URL;
:try_end_2a
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_2a} :catch_3e
.catch Ljava/lang/SecurityException; {:try_start_24 .. :try_end_2a} :catch_3b
:goto_2a
:cond_2a
return-object v0
:try_start_2b
:cond_2b
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/net/URL;
if-eqz v1, :cond_10
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_36
.catch Ljava/io/IOException; {:try_start_2b .. :try_end_36} :catch_37
.catch Ljava/lang/SecurityException; {:try_start_2b .. :try_end_36} :catch_39
goto :goto_10
:catch_37
move-exception v1
goto :goto_2a
:catch_39
move-exception v1
goto :goto_2a
:catch_3b
move-exception v0
move-object v0, v1
goto :goto_2a
:catch_3e
move-exception v0
move-object v0, v1
goto :goto_2a
.end method