.class public Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;
.super Lcom/fsck/k9/mail/internet/TextBody;
.source "LocalStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/LocalStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalTextBody"
.end annotation


# instance fields
.field private mBodyForDisplay:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0, p2}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->this$0:Lcom/fsck/k9/mail/store/LocalStore;

    invoke-direct {p0, p2}, Lcom/fsck/k9/mail/internet/TextBody;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->mBodyForDisplay:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getBodyForDisplay()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->mBodyForDisplay:Ljava/lang/String;

    return-object v0
.end method

.method public setBodyForDisplay(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalTextBody;->mBodyForDisplay:Ljava/lang/String;

    return-void
.end method
