.class public Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "WebDavHandler"
.end annotation


# instance fields
.field private mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

.field private mOpenTags:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
    .registers 4

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mOpenTags:Ljava/util/Stack;

    return-void
.end method


# virtual methods
.method public characters([CII)V
    .registers 7

    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mOpenTags:Ljava/util/Stack;

    invoke-virtual {v2}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {v1, v0, p0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->addValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public endDocument()V
    .registers 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mOpenTags:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const-string v0, "response"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;->finish()V

    :cond_12
    return-void
.end method

.method public getDataSet()Lcom/fsck/k9/mail/store/WebDavStore$DataSet;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    return-object v0
.end method

.method public startDocument()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$DataSet;-><init>(Lcom/fsck/k9/mail/store/WebDavStore;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mDataSet:Lcom/fsck/k9/mail/store/WebDavStore$DataSet;

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavHandler;->mOpenTags:Ljava/util/Stack;

    invoke-virtual {v0, p2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
