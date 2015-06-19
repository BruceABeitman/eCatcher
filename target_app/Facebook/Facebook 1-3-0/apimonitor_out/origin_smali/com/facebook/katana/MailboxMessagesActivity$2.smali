.class Lcom/facebook/katana/MailboxMessagesActivity$2;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/katana/MailboxMessagesActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/katana/MailboxMessagesActivity;


# direct methods
.method constructor <init>(Lcom/facebook/katana/MailboxMessagesActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity$2;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/MailboxMessagesActivity$2;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v1, 0x7f0b0065

    invoke-virtual {v0, v1}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz p2, :cond_10

    const/4 v1, 0x0

    :goto_c
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_10
    const/16 v1, 0x8

    goto :goto_c
.end method
