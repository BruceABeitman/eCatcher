.class Lcom/sun/mail/imap/IMAPFolder$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->setQuota(Ljavax/mail/Quota;)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$quota:Ljavax/mail/Quota;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljavax/mail/Quota;)V
    .registers 3

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$13;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPFolder$13;->val$quota:Ljavax/mail/Quota;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$13;->val$quota:Ljavax/mail/Quota;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->setQuota(Ljavax/mail/Quota;)V

    const/4 v0, 0x0

    return-object v0
.end method
