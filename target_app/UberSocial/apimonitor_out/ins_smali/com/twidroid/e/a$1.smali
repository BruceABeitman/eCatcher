.class final Lcom/twidroid/e/a$1;
.super Ljavax/mail/Authenticator;
.source "SourceFile"
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/e/a$1;->a:Ljava/lang/String;
iput-object p2, p0, Lcom/twidroid/e/a$1;->b:Ljava/lang/String;
invoke-direct {p0}, Ljavax/mail/Authenticator;-><init>()V
return-void
.end method
.method protected getPasswordAuthentication()Ljavax/mail/PasswordAuthentication;
.registers 4
new-instance v0, Ljavax/mail/PasswordAuthentication;
iget-object v1, p0, Lcom/twidroid/e/a$1;->a:Ljava/lang/String;
iget-object v2, p0, Lcom/twidroid/e/a$1;->b:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Ljavax/mail/PasswordAuthentication;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method