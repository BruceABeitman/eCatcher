.class final Lcom/bbm/ui/ao;
.super Ljava/lang/Object;
.source "ConferenceHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/d/gp;

.field final synthetic b:Lcom/bbm/ui/an;


# direct methods
.method constructor <init>(Lcom/bbm/ui/an;Lcom/bbm/d/gp;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/ao;->b:Lcom/bbm/ui/an;

    iput-object p2, p0, Lcom/bbm/ui/ao;->a:Lcom/bbm/d/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const-string v0, "Avatar Clicked"

    const-class v1, Lcom/bbm/ui/am;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    new-instance v0, Lcom/bbm/ui/ar;

    iget-object v1, p0, Lcom/bbm/ui/ao;->b:Lcom/bbm/ui/an;

    iget-object v1, v1, Lcom/bbm/ui/an;->a:Lcom/bbm/ui/am;

    iget-object v2, p0, Lcom/bbm/ui/ao;->a:Lcom/bbm/d/gp;

    invoke-direct {v0, v1, v2}, Lcom/bbm/ui/ar;-><init>(Lcom/bbm/ui/am;Lcom/bbm/d/gp;)V

    invoke-virtual {v0}, Lcom/bbm/ui/ar;->c()V

    return-void
.end method
