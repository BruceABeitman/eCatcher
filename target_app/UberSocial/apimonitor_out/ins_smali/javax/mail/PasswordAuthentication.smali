.class public final Ljavax/mail/PasswordAuthentication;
.super Ljava/lang/Object;
.source "SourceFile"
.field private password:Ljava/lang/String;
.field private userName:Ljava/lang/String;
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ljavax/mail/PasswordAuthentication;->userName:Ljava/lang/String;
iput-object p2, p0, Ljavax/mail/PasswordAuthentication;->password:Ljava/lang/String;
return-void
.end method
.method public getPassword()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/PasswordAuthentication;->password:Ljava/lang/String;
return-object v0
.end method
.method public getUserName()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/PasswordAuthentication;->userName:Ljava/lang/String;
return-object v0
.end method