.class public Lcom/sun/mail/dsn/multipart_report;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/activation/DataContentHandler;


# instance fields
.field private myDF:Ljavax/activation/ActivationDataFlavor;


# direct methods
.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljavax/activation/ActivationDataFlavor;

    const-class v1, Lcom/sun/mail/dsn/MultipartReport;

    const-string v2, "multipart/report"

    const-string v3, "Multipart Report"

    invoke-direct {v0, v1, v2, v3}, Ljavax/activation/ActivationDataFlavor;-><init>(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sun/mail/dsn/multipart_report;->myDF:Ljavax/activation/ActivationDataFlavor;

    return-void
.end method


# virtual methods
.method public getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 5

    :try_start_0
    new-instance v0, Lcom/sun/mail/dsn/MultipartReport;

    invoke-direct {v0, p1}, Lcom/sun/mail/dsn/MultipartReport;-><init>(Ljavax/activation/DataSource;)V
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_5} :catch_6

    return-object v0

    :catch_6
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Exception while constructing MultipartReport"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/io/IOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    throw v1
.end method

.method public getTransferData(Lc/a/a/a;Ljavax/activation/DataSource;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Lcom/sun/mail/dsn/multipart_report;->myDF:Ljavax/activation/ActivationDataFlavor;

    invoke-virtual {v0, p1}, Ljavax/activation/ActivationDataFlavor;->equals(Lc/a/a/a;)Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0, p2}, Lcom/sun/mail/dsn/multipart_report;->getContent(Ljavax/activation/DataSource;)Ljava/lang/Object;

    move-result-object v0

    :goto_c
    return-object v0

    :cond_d
    const/4 v0, 0x0

    goto :goto_c
.end method

.method public getTransferDataFlavors()[Lc/a/a/a;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Lc/a/a/a;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/sun/mail/dsn/multipart_report;->myDF:Ljavax/activation/ActivationDataFlavor;

    aput-object v2, v0, v1

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 6

    instance-of v0, p1, Lcom/sun/mail/dsn/MultipartReport;

    if-eqz v0, :cond_9

    :try_start_4
    check-cast p1, Lcom/sun/mail/dsn/MultipartReport;

    invoke-virtual {p1, p3}, Lcom/sun/mail/dsn/MultipartReport;->writeTo(Ljava/io/OutputStream;)V
    :try_end_9
    .catch Ljavax/mail/MessagingException; {:try_start_4 .. :try_end_9} :catch_a

    :cond_9
    return-void

    :catch_a
    move-exception v0

    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljavax/mail/MessagingException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
