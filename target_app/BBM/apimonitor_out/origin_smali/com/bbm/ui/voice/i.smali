.class final Lcom/bbm/ui/voice/i;
.super Ljava/lang/Object;
.source "OutgoingCallActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/OutgoingCallActionBar;


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/voice/i;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "Start Meeting Clicked"

    const-class v1, Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/voice/i;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/meetings/a;->b(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/bbm/ui/voice/i;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_50

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/bbm/ui/voice/i;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-virtual {v1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0e06c9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e06c8

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0553

    new-instance v2, Lcom/bbm/ui/voice/j;

    invoke-direct {v2, p0}, Lcom/bbm/ui/voice/j;-><init>(Lcom/bbm/ui/voice/i;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0e0171

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :goto_4f
    return-void

    :cond_50
    const-string v0, "OutgoingCallActionBar:startMeeting - no conversation uri"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_4f

    :cond_59
    iget-object v0, p0, Lcom/bbm/ui/voice/i;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/meetings/a;->a(Landroid/content/Context;)V

    goto :goto_4f
.end method
