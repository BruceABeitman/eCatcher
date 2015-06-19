.class final Lcom/bbm/ui/voice/j;
.super Ljava/lang/Object;
.source "OutgoingCallActionBar.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/i;


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/i;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/voice/j;->a:Lcom/bbm/ui/voice/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/voice/j;->a:Lcom/bbm/ui/voice/i;

    iget-object v0, v0, Lcom/bbm/ui/voice/i;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/n/b;->a()V

    iget-object v0, p0, Lcom/bbm/ui/voice/j;->a:Lcom/bbm/ui/voice/i;

    iget-object v0, v0, Lcom/bbm/ui/voice/i;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/voice/j;->a:Lcom/bbm/ui/voice/i;

    iget-object v1, v1, Lcom/bbm/ui/voice/i;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-static {v1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/meetings/a;->a(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method
