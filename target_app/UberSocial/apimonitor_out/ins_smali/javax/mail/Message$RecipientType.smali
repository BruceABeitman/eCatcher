.class public Ljavax/mail/Message$RecipientType;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field public static final BCC:Ljavax/mail/Message$RecipientType; = null
.field public static final CC:Ljavax/mail/Message$RecipientType; = null
.field public static final TO:Ljavax/mail/Message$RecipientType; = null
.field private static final serialVersionUID:J = -0x67cd8ef7b0c9bfa8L
.field protected type:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljavax/mail/Message$RecipientType;
const-string v1, "To"
invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V
sput-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
new-instance v0, Ljavax/mail/Message$RecipientType;
const-string v1, "Cc"
invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V
sput-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;
new-instance v0, Ljavax/mail/Message$RecipientType;
const-string v1, "Bcc"
invoke-direct {v0, v1}, Ljavax/mail/Message$RecipientType;-><init>(Ljava/lang/String;)V
sput-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;
return-void
.end method
.method protected constructor <init>(Ljava/lang/String;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;
return-void
.end method
.method protected readResolve()Ljava/lang/Object;
.registers 4
iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;
const-string v1, "To"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_d
sget-object v0, Ljavax/mail/Message$RecipientType;->TO:Ljavax/mail/Message$RecipientType;
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;
const-string v1, "Cc"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1a
sget-object v0, Ljavax/mail/Message$RecipientType;->CC:Ljavax/mail/Message$RecipientType;
goto :goto_c
:cond_1a
iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;
const-string v1, "Bcc"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_27
sget-object v0, Ljavax/mail/Message$RecipientType;->BCC:Ljavax/mail/Message$RecipientType;
goto :goto_c
:cond_27
new-instance v0, Ljava/io/InvalidObjectException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Attempt to resolve unknown RecipientType: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public toString()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/Message$RecipientType;->type:Ljava/lang/String;
return-object v0
.end method