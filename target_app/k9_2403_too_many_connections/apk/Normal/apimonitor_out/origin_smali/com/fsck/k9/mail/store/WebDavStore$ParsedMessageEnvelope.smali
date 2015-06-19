.class public Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;
.super Ljava/lang/Object;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ParsedMessageEnvelope"
.end annotation


# instance fields
.field private final mHeaderMappings:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMessageHeaders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReadStatus:Z

.field private mUid:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;

    invoke-direct {v0, p0}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope$1;-><init>(Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;)V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaderMappings:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mReadStatus:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mUid:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mMessageHeaders:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaders:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaderMappings:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_20

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mMessageHeaders:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaderMappings:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaders:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaderMappings:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_20
    return-void
.end method

.method public getHeaderList()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mHeaders:Ljava/util/ArrayList;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method public getMessageHeaders()Ljava/util/HashMap;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mMessageHeaders:Ljava/util/HashMap;

    return-object v0
.end method

.method public getReadStatus()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mReadStatus:Z

    return v0
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public setReadStatus(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mReadStatus:Z

    return-void
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    if-eqz p1, :cond_4

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->mUid:Ljava/lang/String;

    :cond_4
    return-void
.end method
