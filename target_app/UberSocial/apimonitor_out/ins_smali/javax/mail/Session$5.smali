.class  Ljavax/mail/Session$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/security/PrivilegedAction;
.field private final synthetic val$cl:Ljava/lang/ClassLoader;
.field private final synthetic val$name:Ljava/lang/String;
.method constructor <init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Ljavax/mail/Session$5;->val$cl:Ljava/lang/ClassLoader;
iput-object p2, p0, Ljavax/mail/Session$5;->val$name:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()Ljava/lang/Object;
.registers 5
const/4 v0, 0x0
check-cast v0, [Ljava/net/URL;
:try_start_3
new-instance v2, Ljava/util/Vector;
invoke-direct {v2}, Ljava/util/Vector;-><init>()V
iget-object v1, p0, Ljavax/mail/Session$5;->val$cl:Ljava/lang/ClassLoader;
iget-object v3, p0, Ljavax/mail/Session$5;->val$name:Ljava/lang/String;
invoke-virtual {v1, v3}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v3
:cond_10
:goto_10
if-eqz v3, :cond_18
invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v1
if-nez v1, :cond_28
:cond_18
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v1
if-lez v1, :cond_27
invoke-virtual {v2}, Ljava/util/Vector;->size()I
move-result v1
new-array v0, v1, [Ljava/net/URL;
invoke-virtual {v2, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V
:goto_27
:cond_27
return-object v0
:cond_28
invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/net/URL;
if-eqz v1, :cond_10
invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V
:try_end_33
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_33} :catch_34
.catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_33} :catch_36
goto :goto_10
:catch_34
move-exception v1
goto :goto_27
:catch_36
move-exception v1
goto :goto_27
.end method