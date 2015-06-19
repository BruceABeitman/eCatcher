.class final Lcom/bbm/ui/aq;
.super Ljava/lang/Object;
.source "ConferenceHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/an;


# direct methods
.method constructor <init>(Lcom/bbm/ui/an;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/aq;->a:Lcom/bbm/ui/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Start Meeting Clicked"

    const-class v1, Lcom/bbm/ui/am;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/aq;->a:Lcom/bbm/ui/an;

    iget-object v0, v0, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    invoke-virtual {v0}, Lcom/bbm/ui/am;->b()V

    return-void
.end method
