.class public Lcom/sun/mail/util/LineOutputStream;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"
.field private static newline:[B
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [B
sput-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B
sget-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B
const/4 v1, 0x0
const/16 v2, 0xd
aput-byte v2, v0, v1
sget-object v0, Lcom/sun/mail/util/LineOutputStream;->newline:[B
const/4 v1, 0x1
const/16 v2, 0xa
aput-byte v2, v0, v1
return-void
.end method
.method public constructor <init>(Ljava/io/OutputStream;)V
.registers 2
invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V
return-void
.end method
.method public writeln()V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;
sget-object v1, Lcom/sun/mail/util/LineOutputStream;->newline:[B
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
:try_end_7
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_7} :catch_8
return-void
:catch_8
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "IOException"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method
.method public writeln(Ljava/lang/String;)V
.registers 5
:try_start_0
invoke-static {p1}, Lcom/sun/mail/util/ASCIIUtility;->getBytes(Ljava/lang/String;)[B
move-result-object v0
iget-object v1, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;
invoke-virtual {v1, v0}, Ljava/io/OutputStream;->write([B)V
iget-object v0, p0, Lcom/sun/mail/util/LineOutputStream;->out:Ljava/io/OutputStream;
sget-object v1, Lcom/sun/mail/util/LineOutputStream;->newline:[B
invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write([B)V
:try_end_10
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_11
return-void
:catch_11
move-exception v0
new-instance v1, Ljavax/mail/MessagingException;
const-string v2, "IOException"
invoke-direct {v1, v2, v0}, Ljavax/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V
throw v1
.end method