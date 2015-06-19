.class Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;
.super Lcom/fsck/k9/mail/internet/MimeBodyPart;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapBodyPart"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V

    return-void
.end method


# virtual methods
.method public setSize(I)V
    .registers 2

    iput p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;->mSize:I

    return-void
.end method
