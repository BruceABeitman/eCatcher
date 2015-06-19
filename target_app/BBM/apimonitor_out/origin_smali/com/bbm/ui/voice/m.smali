.class final Lcom/bbm/ui/voice/m;
.super Ljava/lang/Object;
.source "OutgoingCallActionBar.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/voice/OutgoingCallActionBar;


# direct methods
.method constructor <init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/voice/m;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/voice/m;->a:Lcom/bbm/ui/voice/OutgoingCallActionBar;

    invoke-virtual {v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/n/b;->a()V

    return-void
.end method
