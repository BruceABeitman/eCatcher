.class  Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljavax/security/auth/callback/CallbackHandler;
.field final synthetic this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
.field private final synthetic val$p0:Ljava/lang/String;
.field private final synthetic val$r0:Ljava/lang/String;
.field private final synthetic val$u0:Ljava/lang/String;
.method constructor <init>(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
iput-object p2, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;
iput-object p3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;
iput-object p4, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public handle([Ljavax/security/auth/callback/Callback;)V
.registers 9
const/4 v2, 0x0
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
#getter for: Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z
invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
move-result v0
if-eqz v0, :cond_22
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
#getter for: Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;
invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
const-string v3, "IMAP SASL DEBUG: callback length: "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
array-length v3, p1
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_22
move v1, v2
:goto_23
array-length v0, p1
if-lt v1, v0, :cond_27
return-void
:cond_27
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
#getter for: Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->debug:Z
invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$0(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Z
move-result v0
if-eqz v0, :cond_53
iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->this$0:Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;
#getter for: Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->out:Ljava/io/PrintStream;
invoke-static {v0}, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;->access$1(Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator;)Ljava/io/PrintStream;
move-result-object v0
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "IMAP SASL DEBUG: callback "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
aget-object v4, p1, v1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:cond_53
aget-object v0, p1, v1
instance-of v0, v0, Ljavax/security/auth/callback/NameCallback;
if-eqz v0, :cond_66
aget-object v0, p1, v1
check-cast v0, Ljavax/security/auth/callback/NameCallback;
iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$u0:Ljava/lang/String;
invoke-virtual {v0, v3}, Ljavax/security/auth/callback/NameCallback;->setName(Ljava/lang/String;)V
:cond_62
:goto_62
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_23
:cond_66
aget-object v0, p1, v1
instance-of v0, v0, Ljavax/security/auth/callback/PasswordCallback;
if-eqz v0, :cond_7a
aget-object v0, p1, v1
check-cast v0, Ljavax/security/auth/callback/PasswordCallback;
iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$p0:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C
move-result-object v3
invoke-virtual {v0, v3}, Ljavax/security/auth/callback/PasswordCallback;->setPassword([C)V
goto :goto_62
:cond_7a
aget-object v0, p1, v1
instance-of v0, v0, Ljavax/security/sasl/RealmCallback;
if-eqz v0, :cond_93
aget-object v0, p1, v1
check-cast v0, Ljavax/security/sasl/RealmCallback;
iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;
if-eqz v3, :cond_8e
iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;
:goto_8a
invoke-virtual {v0, v3}, Ljavax/security/sasl/RealmCallback;->setText(Ljava/lang/String;)V
goto :goto_62
:cond_8e
invoke-virtual {v0}, Ljavax/security/sasl/RealmCallback;->getDefaultText()Ljava/lang/String;
move-result-object v3
goto :goto_8a
:cond_93
aget-object v0, p1, v1
instance-of v0, v0, Ljavax/security/sasl/RealmChoiceCallback;
if-eqz v0, :cond_62
aget-object v0, p1, v1
check-cast v0, Ljavax/security/sasl/RealmChoiceCallback;
iget-object v3, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;
if-nez v3, :cond_a9
invoke-virtual {v0}, Ljavax/security/sasl/RealmChoiceCallback;->getDefaultChoice()I
move-result v3
invoke-virtual {v0, v3}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V
goto :goto_62
:cond_a9
invoke-virtual {v0}, Ljavax/security/sasl/RealmChoiceCallback;->getChoices()[Ljava/lang/String;
move-result-object v4
move v3, v2
:goto_ae
array-length v5, v4
if-ge v3, v5, :cond_62
aget-object v5, v4, v3
iget-object v6, p0, Lcom/sun/mail/imap/protocol/IMAPSaslAuthenticator$1;->val$r0:Ljava/lang/String;
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_bf
invoke-virtual {v0, v3}, Ljavax/security/sasl/RealmChoiceCallback;->setSelectedIndex(I)V
goto :goto_62
:cond_bf
add-int/lit8 v3, v3, 0x1
goto :goto_ae
.end method