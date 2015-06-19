.class Lcom/sun/mail/imap/IMAPFolder$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->isSubscribed()Z
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$lname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$4;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput-object p2, p0, Lcom/sun/mail/imap/IMAPFolder$4;->val$lname:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .registers 4

    const-string v0, ""

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$4;->val$lname:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->lsub(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    return-object v0
.end method
