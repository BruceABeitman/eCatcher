.class Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;
.super Ljava/util/HashMap;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;)V
    .registers 4

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->this$1:Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "mime-version"

    const-string v1, "MIME-Version"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "content-type"

    const-string v1, "Content-Type"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "subject"

    const-string v1, "Subject"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "date"

    const-string v1, "Date"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "thread-topic"

    const-string v1, "Thread-Topic"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "thread-index"

    const-string v1, "Thread-Index"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "from"

    const-string v1, "From"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "to"

    const-string v1, "To"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "in-reply-to"

    const-string v1, "In-Reply-To"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "cc"

    const-string v1, "Cc"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "getcontentlength"

    const-string v1, "Content-Length"

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
