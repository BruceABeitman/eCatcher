.class public Ljavax/mail/internet/MimeMessage$RecipientType;
.super Ljavax/mail/Message$RecipientType;
.source "SourceFile"
.field public static final NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType; = null
.field private static final serialVersionUID:J = -0x4be3456bc4421197L
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljavax/mail/internet/MimeMessage$RecipientType;
const-string v1, "Newsgroups"
invoke-direct {v0, v1}, Ljavax/mail/internet/MimeMessage$RecipientType;-><init>(Ljava/lang/String;)V
sput-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V
return-void
.end method
.method protected readResolve()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Ljavax/mail/internet/MimeMessage$RecipientType;->type:Ljava/lang/String;
const-string v1, "Newsgroups"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
sget-object v0, Ljavax/mail/internet/MimeMessage$RecipientType;->NEWSGROUPS:Ljavax/mail/internet/MimeMessage$RecipientType;
:goto_c
return-object v0
:cond_d
invoke-super {p0}, Ljavax/mail/Message$RecipientType;->readResolve()Ljava/lang/Object;
move-result-object v0
goto :goto_c
.end method