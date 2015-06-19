.class Lcom/facebook/katana/MailboxMessagesActivity$5;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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

    iput-object p1, p0, Lcom/facebook/katana/MailboxMessagesActivity$5;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$5;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    #calls: Lcom/facebook/katana/MailboxMessagesActivity;->handleReply()V
    invoke-static {v1}, Lcom/facebook/katana/MailboxMessagesActivity;->access$20(Lcom/facebook/katana/MailboxMessagesActivity;)V

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$5;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const v2, 0x7f0b0064

    invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v1, p0, Lcom/facebook/katana/MailboxMessagesActivity$5;->this$0:Lcom/facebook/katana/MailboxMessagesActivity;

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Lcom/facebook/katana/MailboxMessagesActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method
