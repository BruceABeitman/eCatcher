.class  Ljavax/activation/SecuritySupport$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/security/PrivilegedAction;
.field private final synthetic val$name:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Ljavax/activation/SecuritySupport$4;->val$name:Ljava/lang/String;
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
iget-object v1, p0, Ljavax/activation/SecuritySupport$4;->val$name:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/ClassLoader;->getSystemResources(Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v3
:goto_e
:cond_e
if-eqz v3, :cond_16
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v1
if-nez v1, :cond_29
:cond_16
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_28
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v1
new-array v1, v1, [Ljava/net/URL;
:try_end_22
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_22} :catch_35
.catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_22} :catch_37
:try_start_22
invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/net/URL;
:cond_28
:goto_28
:try_end_28
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_28} :catch_3c
.catch Ljava/lang/SecurityException; {:try_start_22 .. :try_end_28} :catch_39
return-object v0
:cond_29
:try_start_29
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/net/URL;
if-eqz v1, :cond_e
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:try_end_34
.catch Ljava/io/IOException; {:try_start_29 .. :try_end_34} :catch_35
.catch Ljava/lang/SecurityException; {:try_start_29 .. :try_end_34} :catch_37
goto :goto_e
:catch_35
move-exception v1
goto :goto_28
:catch_37
move-exception v1
goto :goto_28
:catch_39
move-exception v0
move-object v0, v1
goto :goto_28
:catch_3c
move-exception v0
move-object v0, v1
goto :goto_28
.end method