.class Lcom/sun/mail/imap/IMAPFolder$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->setSubscribed(Z)V
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$subscribe:Z


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Z)V
    .registers 3

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$5;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-boolean p2, p0, Lcom/sun/mail/imap/IMAPFolder$5;->val$subscribe:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .registers 3

    iget-boolean v0, p0, Lcom/sun/mail/imap/IMAPFolder$5;->val$subscribe:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$5;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->subscribe(Ljava/lang/String;)V

    :goto_b
    const/4 v0, 0x0

    return-object v0

    :cond_d
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$5;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->unsubscribe(Ljava/lang/String;)V

    goto :goto_b
.end method
