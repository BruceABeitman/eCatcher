.class final Lcom/bbm/ui/voice/l;
.super Ljava/lang/Object;
.source "OutgoingCallActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/OutgoingCallActionBar;


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/voice/l;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/voice/l;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-static {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->e(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageButton;->isActivated()Z

    move-result v0

    if-nez v0, :cond_13

    const/4 v0, 0x1

    :goto_d
    iget-object v1, p0, Lcom/bbm/ui/voice/l;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-static {v1, v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c(Lcom/bbm/ui/voice/OutgoingCallActionBar;Z)V

    return-void

    :cond_13
    const/4 v0, 0x0

    goto :goto_d
.end method
