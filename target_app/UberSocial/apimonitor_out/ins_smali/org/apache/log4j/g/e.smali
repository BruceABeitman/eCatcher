.class  Lorg/apache/log4j/g/e;
.super Ljavax/mail/Authenticator;
.source "SourceFile"
.field private final a:Lorg/apache/log4j/g/d;
.method constructor <init>(Lorg/apache/log4j/g/d;)V
.registers 2
iput-object p1, p0, Lorg/apache/log4j/g/e;->a:Lorg/apache/log4j/g/d;
invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V
return-void
.end method
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
.registers 4
new-instance v0, Ljavax/mail/PasswordAuthentication;
iget-object v1, p0, Lorg/apache/log4j/g/e;->a:Lorg/apache/log4j/g/d;
invoke-static {v1}, Lorg/apache/log4j/g/d;->a(Lorg/apache/log4j/g/d;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lorg/apache/log4j/g/e;->a:Lorg/apache/log4j/g/d;
invoke-static {v2}, Lorg/apache/log4j/g/d;->b(Lorg/apache/log4j/g/d;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method