.class Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;
.super Ljava/lang/Object;
.source "MimeMessage.java"

# interfaces
.implements Lorg/apache/james/mime4j/ContentHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/internet/MimeMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MimeMessageBuilder"
.end annotation


# instance fields
.field private stack:Ljava/util/Stack;

.field final synthetic this$0:Lcom/fsck/k9/mail/internet/MimeMessage;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    return-void
.end method

.method private expect(Ljava/lang/Class;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal stack error: Expected \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_47
    return-void
.end method


# virtual methods
.method public body(Lorg/apache/james/mime4j/BodyDescriptor;Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v2, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    invoke-virtual {p1}, Lorg/apache/james/mime4j/BodyDescriptor;->getTransferEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Lcom/fsck/k9/mail/internet/MimeUtility;->decodeBody(Ljava/io/InputStream;Ljava/lang/String;)Lcom/fsck/k9/mail/Body;

    move-result-object v0

    :try_start_d
    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/mail/Part;

    invoke-interface {p0, v0}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V
    :try_end_18
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_d .. :try_end_18} :catch_19

    return-void

    :catch_19
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public endBodyPart()V
    .registers 2

    const-class v0, Lcom/fsck/k9/mail/BodyPart;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endHeader()V
    .registers 2

    const-class v0, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    return-void
.end method

.method public endMessage()V
    .registers 2

    const-class v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public endMultipart()V
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    return-void
.end method

.method public epilogue(Ljava/io/InputStream;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    :goto_a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_16

    int-to-char v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_16
    return-void
.end method

.method public field(Ljava/lang/String;)V
    .registers 6

    const-class v2, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    :try_start_5
    const-string v2, ":"

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/mail/Part;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    const/4 v3, 0x1

    aget-object v3, v1, v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v2, v3}, Lcom/fsck/k9/mail/Part;->addHeader(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_21
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_21} :catch_22

    return-void

    :catch_22
    move-exception v2

    move-object v0, v2

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public preamble(Ljava/io/InputStream;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-class v3, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    :goto_a
    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_16

    int-to-char v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_a

    :cond_16
    :try_start_16
    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/fsck/k9/mail/internet/MimeMultipart;->setPreamble(Ljava/lang/String;)V
    :try_end_25
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_16 .. :try_end_25} :catch_26

    return-void

    :catch_26
    move-exception v3

    move-object v1, v3

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public raw(Ljava/io/InputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public startBodyPart()V
    .registers 4

    const-class v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    :try_start_5
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeBodyPart;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-virtual {v2, v0}, Lcom/fsck/k9/mail/internet/MimeMultipart;->addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1a
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_5 .. :try_end_1a} :catch_1b

    return-void

    :catch_1b
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startHeader()V
    .registers 2

    const-class v0, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v0}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    return-void
.end method

.method public startMessage()V
    .registers 5

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->this$0:Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    return-void

    :cond_10
    const-class v2, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v2}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    :try_start_15
    new-instance v0, Lcom/fsck/k9/mail/internet/MimeMessage;

    invoke-direct {v0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fsck/k9/mail/Part;

    invoke-interface {v2, v0}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    iget-object v2, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2a
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_15 .. :try_end_2a} :catch_2b

    goto :goto_f

    :catch_2b
    move-exception v2

    move-object v1, v2

    new-instance v2, Ljava/lang/Error;

    invoke-direct {v2, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public startMultipart(Lorg/apache/james/mime4j/BodyDescriptor;)V
    .registers 6

    const-class v3, Lcom/fsck/k9/mail/Part;

    invoke-direct {p0, v3}, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->expect(Ljava/lang/Class;)V

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/Part;

    :try_start_d
    new-instance v2, Lcom/fsck/k9/mail/internet/MimeMultipart;

    invoke-interface {v0}, Lcom/fsck/k9/mail/Part;->getContentType()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/fsck/k9/mail/internet/MimeMultipart;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v2}, Lcom/fsck/k9/mail/Part;->setBody(Lcom/fsck/k9/mail/Body;)V

    iget-object v3, p0, Lcom/fsck/k9/mail/internet/MimeMessage$MimeMessageBuilder;->stack:Ljava/util/Stack;

    invoke-virtual {v3, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1e
    .catch Lcom/fsck/k9/mail/MessagingException; {:try_start_d .. :try_end_1e} :catch_1f

    return-void

    :catch_1f
    move-exception v3

    move-object v1, v3

    new-instance v3, Ljava/lang/Error;

    invoke-direct {v3, v1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
