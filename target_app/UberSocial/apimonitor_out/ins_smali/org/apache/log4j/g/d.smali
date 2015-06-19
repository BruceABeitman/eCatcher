.class public Lorg/apache/log4j/g/d;
.super Lorg/apache/log4j/b;
.source "SourceFile"
.implements Lorg/apache/log4j/m/j;
.field static k:Ljava/lang/Class;
.field protected a:Lorg/apache/log4j/c/e;
.field protected i:Ljavax/mail/Message;
.field protected j:Lorg/apache/log4j/k/w;
.field private l:Ljava/lang/String;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:Ljava/lang/String;
.field private q:Ljava/lang/String;
.field private r:Ljava/lang/String;
.field private s:Ljava/lang/String;
.field private t:Ljava/lang/String;
.field private u:Ljava/lang/String;
.field private v:I
.field private w:Z
.field private x:I
.field private y:Z
.field private z:Z
.method public constructor <init>()V
.registers 2
new-instance v0, Lorg/apache/log4j/g/a;
invoke-direct {v0}, Lorg/apache/log4j/g/a;-><init>()V
invoke-direct {p0, v0}, Lorg/apache/log4j/g/d;-><init>(Lorg/apache/log4j/k/w;)V
return-void
.end method
.method public constructor <init>(Lorg/apache/log4j/k/w;)V
.registers 4
const/4 v1, 0x0
invoke-direct {p0}, Lorg/apache/log4j/b;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lorg/apache/log4j/g/d;->v:I
iput-boolean v1, p0, Lorg/apache/log4j/g/d;->w:Z
const/16 v0, 0x200
iput v0, p0, Lorg/apache/log4j/g/d;->x:I
iput-boolean v1, p0, Lorg/apache/log4j/g/d;->y:Z
iput-boolean v1, p0, Lorg/apache/log4j/g/d;->z:Z
new-instance v0, Lorg/apache/log4j/c/e;
iget v1, p0, Lorg/apache/log4j/g/d;->x:I
invoke-direct {v0, v1}, Lorg/apache/log4j/c/e;-><init>(I)V
iput-object v0, p0, Lorg/apache/log4j/g/d;->a:Lorg/apache/log4j/c/e;
iput-object p1, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
return-void
.end method
.method static a(Lorg/apache/log4j/g/d;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->s:Ljava/lang/String;
return-object v0
.end method
.method static b(Lorg/apache/log4j/g/d;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->t:Ljava/lang/String;
return-object v0
.end method
.method static o(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public A()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/g/d;->w:Z
return v0
.end method
.method public final B()Lorg/apache/log4j/k/w;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
return-object v0
.end method
.method public final C()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->u:Ljava/lang/String;
return-object v0
.end method
.method public final D()I
.registers 2
iget v0, p0, Lorg/apache/log4j/g/d;->v:I
return v0
.end method
.method public final E()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/g/d;->z:Z
return v0
.end method
.method public declared-synchronized a()V
.registers 2
monitor-enter p0
const/4 v0, 0x1
:try_start_2
iput-boolean v0, p0, Lorg/apache/log4j/g/d;->h:Z
iget-boolean v0, p0, Lorg/apache/log4j/g/d;->z:Z
if-eqz v0, :cond_13
iget-object v0, p0, Lorg/apache/log4j/g/d;->a:Lorg/apache/log4j/c/e;
invoke-virtual {v0}, Lorg/apache/log4j/c/e;->c()I
move-result v0
if-lez v0, :cond_13
invoke-virtual {p0}, Lorg/apache/log4j/g/d;->o()V
:cond_13
:try_end_13
.catchall {:try_start_2 .. :try_end_13} :catchall_15
monitor-exit p0
return-void
:catchall_15
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(I)V
.registers 3
iput p1, p0, Lorg/apache/log4j/g/d;->x:I
iget-object v0, p0, Lorg/apache/log4j/g/d;->a:Lorg/apache/log4j/c/e;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/e;->b(I)V
return-void
.end method
.method protected a(Ljavax/mail/Message;)V
.registers 4
iget-object v0, p0, Lorg/apache/log4j/g/d;->o:Ljava/lang/String;
if-eqz v0, :cond_68
iget-object v0, p0, Lorg/apache/log4j/g/d;->o:Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/apache/log4j/g/d;->b(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
move-result-object v0
invoke-virtual {p1, v0}, Ljavax/mail/Message;->setFrom(Ljavax/mail/Address;)V
:goto_d
iget-object v0, p0, Lorg/apache/log4j/g/d;->p:Ljava/lang/String;
if-eqz v0, :cond_22
iget-object v0, p0, Lorg/apache/log4j/g/d;->p:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_22
iget-object v0, p0, Lorg/apache/log4j/g/d;->p:Ljava/lang/String;
invoke-virtual {p0, v0}, Lorg/apache/log4j/g/d;->c(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
move-result-object v0
invoke-virtual {p1, v0}, Ljavax/mail/Message;->setReplyTo([Ljavax/mail/Address;)V
:cond_22
iget-object v0, p0, Lorg/apache/log4j/g/d;->l:Ljava/lang/String;
if-eqz v0, :cond_39
iget-object v0, p0, Lorg/apache/log4j/g/d;->l:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_39
sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
iget-object v1, p0, Lorg/apache/log4j/g/d;->l:Ljava/lang/String;
invoke-virtual {p0, v1}, Lorg/apache/log4j/g/d;->c(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
:cond_39
iget-object v0, p0, Lorg/apache/log4j/g/d;->m:Ljava/lang/String;
if-eqz v0, :cond_50
iget-object v0, p0, Lorg/apache/log4j/g/d;->m:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_50
sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;
iget-object v1, p0, Lorg/apache/log4j/g/d;->m:Ljava/lang/String;
invoke-virtual {p0, v1}, Lorg/apache/log4j/g/d;->c(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
:cond_50
iget-object v0, p0, Lorg/apache/log4j/g/d;->n:Ljava/lang/String;
if-eqz v0, :cond_67
iget-object v0, p0, Lorg/apache/log4j/g/d;->n:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_67
sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;
iget-object v1, p0, Lorg/apache/log4j/g/d;->n:Ljava/lang/String;
invoke-virtual {p0, v1}, Lorg/apache/log4j/g/d;->c(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljavax/mail/Message;->setRecipients(Ljavax/mail/Message$RecipientType;[Ljavax/mail/Address;)V
:cond_67
return-void
:cond_68
invoke-virtual {p1}, Ljavax/mail/Message;->setFrom()V
goto :goto_d
.end method
.method public a(Lorg/apache/log4j/k/k;)V
.registers 3
invoke-virtual {p0}, Lorg/apache/log4j/g/d;->l()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->j()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->f()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->g()V
iget-boolean v0, p0, Lorg/apache/log4j/g/d;->y:Z
if-eqz v0, :cond_17
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->a()Lorg/apache/log4j/k/h;
:cond_17
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->h()Ljava/lang/String;
invoke-virtual {p1}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;
iget-object v0, p0, Lorg/apache/log4j/g/d;->a:Lorg/apache/log4j/c/e;
invoke-virtual {v0, p1}, Lorg/apache/log4j/c/e;->a(Lorg/apache/log4j/k/k;)V
iget-object v0, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
invoke-interface {v0, p1}, Lorg/apache/log4j/k/w;->a(Lorg/apache/log4j/k/k;)Z
move-result v0
if-eqz v0, :cond_6
invoke-virtual {p0}, Lorg/apache/log4j/g/d;->o()V
goto :goto_6
.end method
.method public final a(Lorg/apache/log4j/k/w;)V
.registers 4
if-nez p1, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "trigger"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
iput-object p1, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
return-void
.end method
.method public a(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/g/d;->y:Z
return-void
.end method
.method public a(Lorg/w3c/dom/Element;Ljava/util/Properties;)Z
.registers 5
const-string v0, "triggeringPolicy"
invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2a
sget-object v0, Lorg/apache/log4j/g/d;->k:Ljava/lang/Class;
if-nez v0, :cond_27
const-string v0, "org.apache.log4j.k.w"
invoke-static {v0}, Lorg/apache/log4j/g/d;->o(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/d;->k:Ljava/lang/Class;
:goto_18
invoke-static {p1, p2, v0}, Lorg/apache/log4j/m/a;->a(Lorg/w3c/dom/Element;Ljava/util/Properties;Ljava/lang/Class;)Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lorg/apache/log4j/k/w;
if-eqz v1, :cond_25
check-cast v0, Lorg/apache/log4j/k/w;
invoke-virtual {p0, v0}, Lorg/apache/log4j/g/d;->a(Lorg/apache/log4j/k/w;)V
:cond_25
const/4 v0, 0x1
:goto_26
return v0
:cond_27
sget-object v0, Lorg/apache/log4j/g/d;->k:Ljava/lang/Class;
goto :goto_18
:cond_2a
const/4 v0, 0x0
goto :goto_26
.end method
.method  b(Ljava/lang/String;)Ljavax/mail/internet/InternetAddress;
.registers 6
:try_start_0
new-instance v0, Ljavax/mail/internet/InternetAddress;
invoke-direct {v0, p1}, Ljavax/mail/internet/InternetAddress;-><init>(Ljava/lang/String;)V
:goto_5
:try_end_5
.catch Ljavax/mail/internet/AddressException; {:try_start_0 .. :try_end_5} :catch_6
return-object v0
:catch_6
move-exception v0
iget-object v1, p0, Lorg/apache/log4j/g/d;->e:Lorg/apache/log4j/k/e;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not parse address ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x6
invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V
const/4 v0, 0x0
goto :goto_5
.end method
.method public final b(I)V
.registers 2
iput p1, p0, Lorg/apache/log4j/g/d;->v:I
return-void
.end method
.method public b(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/g/d;->w:Z
return-void
.end method
.method public b()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected c()Ljavax/mail/Session;
.registers 5
:try_start_0
new-instance v0, Ljava/util/Properties;
invoke-static {}, Ljava/lang/System;->getProperties()Ljava/util/Properties;
move-result-object v1
invoke-direct {v0, v1}, Ljava/util/Properties;-><init>(Ljava/util/Properties;)V
:try_end_9
.catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_9} :catch_a6
:goto_9
const-string v1, "mail.smtp"
iget-object v2, p0, Lorg/apache/log4j/g/d;->u:Ljava/lang/String;
if-eqz v2, :cond_2b
const-string v1, "mail.transport.protocol"
iget-object v2, p0, Lorg/apache/log4j/g/d;->u:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "mail."
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/g/d;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
:cond_2b
iget-object v2, p0, Lorg/apache/log4j/g/d;->r:Ljava/lang/String;
if-eqz v2, :cond_47
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, ".host"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/g/d;->r:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_47
iget v2, p0, Lorg/apache/log4j/g/d;->v:I
if-lez v2, :cond_67
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, ".port"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
iget v3, p0, Lorg/apache/log4j/g/d;->v:I
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_67
const/4 v2, 0x0
iget-object v3, p0, Lorg/apache/log4j/g/d;->t:Ljava/lang/String;
if-eqz v3, :cond_ae
iget-object v3, p0, Lorg/apache/log4j/g/d;->s:Ljava/lang/String;
if-eqz v3, :cond_ae
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v2, ".auth"
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
const-string v2, "true"
invoke-virtual {v0, v1, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v1, Lorg/apache/log4j/g/e;
invoke-direct {v1, p0}, Lorg/apache/log4j/g/e;-><init>(Lorg/apache/log4j/g/d;)V
:goto_8d
invoke-static {v0, v1}, Ljavax/mail/Session;->getInstance(Ljava/util/Properties;Ljavax/mail/Authenticator;)Ljavax/mail/Session;
move-result-object v0
iget-object v1, p0, Lorg/apache/log4j/g/d;->u:Ljava/lang/String;
if-eqz v1, :cond_9c
const-string v1, "rfc822"
iget-object v2, p0, Lorg/apache/log4j/g/d;->u:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Ljavax/mail/Session;->setProtocolForAddress(Ljava/lang/String;Ljava/lang/String;)V
:cond_9c
iget-boolean v1, p0, Lorg/apache/log4j/g/d;->w:Z
if-eqz v1, :cond_a5
iget-boolean v1, p0, Lorg/apache/log4j/g/d;->w:Z
invoke-virtual {v0, v1}, Ljavax/mail/Session;->setDebug(Z)V
:cond_a5
return-object v0
:catch_a6
move-exception v0
new-instance v0, Ljava/util/Properties;
invoke-direct {v0}, Ljava/util/Properties;-><init>()V
goto/16 :goto_9
:cond_ae
move-object v1, v2
goto :goto_8d
.end method
.method public final c(Z)V
.registers 2
iput-boolean p1, p0, Lorg/apache/log4j/g/d;->z:Z
return-void
.end method
.method  c(Ljava/lang/String;)[Ljavax/mail/internet/InternetAddress;
.registers 6
const/4 v0, 0x1
:try_start_1
invoke-static {p1, v0}, Ljavax/mail/internet/InternetAddress;->parse(Ljava/lang/String;Z)[Ljavax/mail/internet/InternetAddress;
:try_end_4
.catch Ljavax/mail/internet/AddressException; {:try_start_1 .. :try_end_4} :catch_6
move-result-object v0
:goto_5
return-object v0
:catch_6
move-exception v0
iget-object v1, p0, Lorg/apache/log4j/g/d;->e:Lorg/apache/log4j/k/e;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Could not parse address ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x6
invoke-interface {v1, v2, v0, v3}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;Ljava/lang/Exception;I)V
const/4 v0, 0x0
goto :goto_5
.end method
.method public d(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->o:Ljava/lang/String;
return-void
.end method
.method public e(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->p:Ljava/lang/String;
return-void
.end method
.method public f(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->q:Ljava/lang/String;
return-void
.end method
.method public g(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->r:Ljava/lang/String;
return-void
.end method
.method public h(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->l:Ljava/lang/String;
return-void
.end method
.method public i()V
.registers 5
invoke-virtual {p0}, Lorg/apache/log4j/g/d;->c()Ljavax/mail/Session;
move-result-object v0
new-instance v1, Ljavax/mail/internet/MimeMessage;
invoke-direct {v1, v0}, Ljavax/mail/internet/MimeMessage;-><init>(Ljavax/mail/Session;)V
iput-object v1, p0, Lorg/apache/log4j/g/d;->i:Ljavax/mail/Message;
:try_start_b
iget-object v0, p0, Lorg/apache/log4j/g/d;->i:Ljavax/mail/Message;
invoke-virtual {p0, v0}, Lorg/apache/log4j/g/d;->a(Ljavax/mail/Message;)V
iget-object v0, p0, Lorg/apache/log4j/g/d;->q:Ljava/lang/String;
:try_end_12
.catch Ljavax/mail/MessagingException; {:try_start_b .. :try_end_12} :catch_37
if-eqz v0, :cond_22
:try_start_14
iget-object v0, p0, Lorg/apache/log4j/g/d;->i:Ljavax/mail/Message;
iget-object v1, p0, Lorg/apache/log4j/g/d;->q:Ljava/lang/String;
const-string v2, "UTF-8"
const/4 v3, 0x0
invoke-static {v1, v2, v3}, Ljavax/mail/internet/MimeUtility;->encodeText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljavax/mail/Message;->setSubject(Ljava/lang/String;)V
:try_end_22
.catch Ljava/io/UnsupportedEncodingException; {:try_start_14 .. :try_end_22} :catch_30
.catch Ljavax/mail/MessagingException; {:try_start_14 .. :try_end_22} :catch_37
:goto_22
:cond_22
iget-object v0, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
instance-of v0, v0, Lorg/apache/log4j/k/o;
if-eqz v0, :cond_2f
iget-object v0, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
check-cast v0, Lorg/apache/log4j/k/o;
invoke-interface {v0}, Lorg/apache/log4j/k/o;->i()V
:cond_2f
return-void
:catch_30
move-exception v0
:try_start_31
const-string v1, "Unable to encode SMTP subject"
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_36
.catch Ljavax/mail/MessagingException; {:try_start_31 .. :try_end_36} :catch_37
goto :goto_22
:catch_37
move-exception v0
const-string v1, "Could not activate SMTPAppender options."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_22
.end method
.method public i(Ljava/lang/String;)V
.registers 4
sget-object v0, Lorg/apache/log4j/g/d;->k:Ljava/lang/Class;
if-nez v0, :cond_17
const-string v0, "org.apache.log4j.k.w"
invoke-static {v0}, Lorg/apache/log4j/g/d;->o(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/g/d;->k:Ljava/lang/Class;
:goto_c
iget-object v1, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
invoke-static {p1, v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/log4j/k/w;
iput-object v0, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
return-void
:cond_17
sget-object v0, Lorg/apache/log4j/g/d;->k:Ljava/lang/Class;
goto :goto_c
.end method
.method public j(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->m:Ljava/lang/String;
return-void
.end method
.method public k(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->n:Ljava/lang/String;
return-void
.end method
.method public l(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->t:Ljava/lang/String;
return-void
.end method
.method protected l()Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lorg/apache/log4j/g/d;->i:Ljavax/mail/Message;
if-nez v1, :cond_d
iget-object v1, p0, Lorg/apache/log4j/g/d;->e:Lorg/apache/log4j/k/e;
const-string v2, "Message object not configured."
invoke-interface {v1, v2}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V
:goto_c
return v0
:cond_d
iget-object v1, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
if-nez v1, :cond_32
iget-object v1, p0, Lorg/apache/log4j/g/d;->e:Lorg/apache/log4j/k/e;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "No TriggeringEventEvaluator is set for appender ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/g/d;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V
goto :goto_c
:cond_32
iget-object v1, p0, Lorg/apache/log4j/g/d;->b:Lorg/apache/log4j/u;
if-nez v1, :cond_57
iget-object v1, p0, Lorg/apache/log4j/g/d;->e:Lorg/apache/log4j/k/e;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "No layout set for appender named ["
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/log4j/g/d;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "]."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lorg/apache/log4j/k/e;->a(Ljava/lang/String;)V
goto :goto_c
:cond_57
const/4 v0, 0x1
goto :goto_c
.end method
.method public m()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->l:Ljava/lang/String;
return-object v0
.end method
.method public m(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->s:Ljava/lang/String;
return-void
.end method
.method protected n()Ljava/lang/String;
.registers 8
const/4 v1, 0x0
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
iget-object v0, p0, Lorg/apache/log4j/g/d;->b:Lorg/apache/log4j/u;
invoke-virtual {v0}, Lorg/apache/log4j/u;->e()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_11
iget-object v0, p0, Lorg/apache/log4j/g/d;->a:Lorg/apache/log4j/c/e;
invoke-virtual {v0}, Lorg/apache/log4j/c/e;->c()I
move-result v4
move v2, v1
:goto_18
if-ge v2, v4, :cond_4c
iget-object v0, p0, Lorg/apache/log4j/g/d;->a:Lorg/apache/log4j/c/e;
invoke-virtual {v0}, Lorg/apache/log4j/c/e;->b()Lorg/apache/log4j/k/k;
move-result-object v0
iget-object v5, p0, Lorg/apache/log4j/g/d;->b:Lorg/apache/log4j/u;
invoke-virtual {v5, v0}, Lorg/apache/log4j/u;->a(Lorg/apache/log4j/k/k;)Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
iget-object v5, p0, Lorg/apache/log4j/g/d;->b:Lorg/apache/log4j/u;
invoke-virtual {v5}, Lorg/apache/log4j/u;->b()Z
move-result v5
if-eqz v5, :cond_48
invoke-virtual {v0}, Lorg/apache/log4j/k/k;->l()[Ljava/lang/String;
move-result-object v5
if-eqz v5, :cond_48
move v0, v1
:goto_38
array-length v6, v5
if-ge v0, v6, :cond_48
aget-object v6, v5, v0
invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-object v6, Lorg/apache/log4j/u;->h:Ljava/lang/String;
invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v0, v0, 0x1
goto :goto_38
:cond_48
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_18
:cond_4c
iget-object v0, p0, Lorg/apache/log4j/g/d;->b:Lorg/apache/log4j/u;
invoke-virtual {v0}, Lorg/apache/log4j/u;->f()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_57
invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_57
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final n(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/d;->u:Ljava/lang/String;
return-void
.end method
.method protected o()V
.registers 8
const/4 v1, 0x1
const/4 v2, 0x0
:try_start_2
invoke-virtual {p0}, Lorg/apache/log4j/g/d;->n()Ljava/lang/String;
move-result-object v4
move v3, v2
move v0, v1
:goto_8
invoke-virtual {v4}, Ljava/lang/String;->length()I
move-result v5
if-ge v3, v5, :cond_1e
if-eqz v0, :cond_1e
invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v5, 0x7f
if-gt v0, v5, :cond_1c
move v0, v1
:goto_19
add-int/lit8 v3, v3, 0x1
goto :goto_8
:cond_1c
move v0, v2
goto :goto_19
:cond_1e
if-eqz v0, :cond_4b
new-instance v0, Ljavax/mail/internet/MimeBodyPart;
invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V
iget-object v1, p0, Lorg/apache/log4j/g/d;->b:Lorg/apache/log4j/u;
invoke-virtual {v1}, Lorg/apache/log4j/u;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v4, v1}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V
:goto_2e
new-instance v1, Ljavax/mail/internet/MimeMultipart;
invoke-direct {v1}, Ljavax/mail/internet/MimeMultipart;-><init>()V
invoke-virtual {v1, v0}, Ljavax/mail/Multipart;->addBodyPart(Ljavax/mail/BodyPart;)V
iget-object v0, p0, Lorg/apache/log4j/g/d;->i:Ljavax/mail/Message;
invoke-virtual {v0, v1}, Ljavax/mail/Message;->setContent(Ljavax/mail/Multipart;)V
iget-object v0, p0, Lorg/apache/log4j/g/d;->i:Ljavax/mail/Message;
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v0, v1}, Ljavax/mail/Message;->setSentDate(Ljava/util/Date;)V
iget-object v0, p0, Lorg/apache/log4j/g/d;->i:Ljavax/mail/Message;
invoke-static {v0}, Ljavax/mail/Transport;->send(Ljavax/mail/Message;)V
:try_end_4a
.catch Ljavax/mail/MessagingException; {:try_start_2 .. :try_end_4a} :catch_c7
.catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_4a} :catch_cf
:goto_4a
return-void
:try_start_4b
:cond_4b
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v0, Ljava/io/OutputStreamWriter;
const-string v3, "quoted-printable"
invoke-static {v1, v3}, Ljavax/mail/internet/MimeUtility;->encode(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/OutputStream;
move-result-object v3
const-string v5, "UTF-8"
invoke-direct {v0, v3, v5}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V
invoke-virtual {v0, v4}, Ljava/io/Writer;->write(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/Writer;->close()V
new-instance v3, Ljavax/mail/internet/InternetHeaders;
invoke-direct {v3}, Ljavax/mail/internet/InternetHeaders;-><init>()V
const-string v0, "Content-Type"
new-instance v5, Ljava/lang/StringBuffer;
invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V
iget-object v6, p0, Lorg/apache/log4j/g/d;->b:Lorg/apache/log4j/u;
invoke-virtual {v6}, Lorg/apache/log4j/u;->d()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v5
const-string v6, "; charset=UTF-8"
invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v3, v0, v5}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "Content-Transfer-Encoding"
const-string v5, "quoted-printable"
invoke-virtual {v3, v0, v5}, Ljavax/mail/internet/InternetHeaders;->setHeader(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljavax/mail/internet/MimeBodyPart;
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-direct {v0, v3, v1}, Ljavax/mail/internet/MimeBodyPart;-><init>(Ljavax/mail/internet/InternetHeaders;[B)V
:try_end_96
.catch Ljava/lang/Exception; {:try_start_4b .. :try_end_96} :catch_97
.catch Ljavax/mail/MessagingException; {:try_start_4b .. :try_end_96} :catch_c7
.catch Ljava/lang/RuntimeException; {:try_start_4b .. :try_end_96} :catch_cf
goto :goto_2e
:catch_97
move-exception v0
:try_start_98
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
:goto_9d
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v0
if-ge v2, v0, :cond_b3
invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->charAt(I)C
move-result v0
const/16 v3, 0x80
if-lt v0, v3, :cond_b0
const/16 v0, 0x3f
invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->setCharAt(IC)V
:cond_b0
add-int/lit8 v2, v2, 0x1
goto :goto_9d
:cond_b3
new-instance v0, Ljavax/mail/internet/MimeBodyPart;
invoke-direct {v0}, Ljavax/mail/internet/MimeBodyPart;-><init>()V
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/g/d;->b:Lorg/apache/log4j/u;
invoke-virtual {v2}, Lorg/apache/log4j/u;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljavax/mail/internet/MimeBodyPart;->setContent(Ljava/lang/Object;Ljava/lang/String;)V
:try_end_c5
.catch Ljavax/mail/MessagingException; {:try_start_98 .. :try_end_c5} :catch_c7
.catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_c5} :catch_cf
goto/16 :goto_2e
:catch_c7
move-exception v0
const-string v1, "Error occured while sending e-mail notification."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_4a
:catch_cf
move-exception v0
const-string v1, "Error occured while sending e-mail notification."
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_4a
.end method
.method public p()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
if-nez v0, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
iget-object v0, p0, Lorg/apache/log4j/g/d;->j:Lorg/apache/log4j/k/w;
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
goto :goto_5
.end method
.method public q()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->o:Ljava/lang/String;
return-object v0
.end method
.method public r()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->p:Ljava/lang/String;
return-object v0
.end method
.method public s()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->q:Ljava/lang/String;
return-object v0
.end method
.method public t()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->r:Ljava/lang/String;
return-object v0
.end method
.method public u()I
.registers 2
iget v0, p0, Lorg/apache/log4j/g/d;->x:I
return v0
.end method
.method public v()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/log4j/g/d;->y:Z
return v0
.end method
.method public w()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->m:Ljava/lang/String;
return-object v0
.end method
.method public x()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->n:Ljava/lang/String;
return-object v0
.end method
.method public y()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->t:Ljava/lang/String;
return-object v0
.end method
.method public z()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lorg/apache/log4j/g/d;->s:Ljava/lang/String;
return-object v0
.end method