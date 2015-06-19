.class Lcom/sun/mail/imap/IMAPFolder$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/mail/imap/IMAPFolder$ProtocolCommand;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sun/mail/imap/IMAPFolder;->create(I)Z
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sun/mail/imap/IMAPFolder;

.field private final synthetic val$sep:C

.field private final synthetic val$type:I


# direct methods
.method constructor <init>(Lcom/sun/mail/imap/IMAPFolder;IC)V
    .registers 4

    iput-object p1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iput p2, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$type:I

    iput-char p3, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$sep:C

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doCommand(Lcom/sun/mail/imap/protocol/IMAPProtocol;)Ljava/lang/Object;
    .registers 4

    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$type:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_23

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-char v1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$sep:C

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->create(Ljava/lang/String;)V

    :cond_20
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object v0

    :cond_23
    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->create(Ljava/lang/String;)V

    iget v0, p0, Lcom/sun/mail/imap/IMAPFolder$6;->val$type:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_20

    const-string v0, ""

    iget-object v1, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v1, v1, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->list(Ljava/lang/String;Ljava/lang/String;)[Lcom/sun/mail/imap/protocol/ListInfo;

    move-result-object v0

    if-eqz v0, :cond_20

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-boolean v0, v0, Lcom/sun/mail/imap/protocol/ListInfo;->hasInferiors:Z

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/sun/mail/imap/IMAPFolder$6;->this$0:Lcom/sun/mail/imap/IMAPFolder;

    iget-object v0, v0, Lcom/sun/mail/imap/IMAPFolder;->fullName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/sun/mail/imap/protocol/IMAPProtocol;->delete(Ljava/lang/String;)V

    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "Unsupported type"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
