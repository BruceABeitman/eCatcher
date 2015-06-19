.class final Lcom/bbm/ui/c/aq;
.super Ljava/lang/Object;
.source "ChannelsNotificationsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/d/ei;

.field final synthetic b:Lcom/bbm/ui/c/ap;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ap;Lcom/bbm/d/ei;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/aq;->b:Lcom/bbm/ui/c/ap;

    iput-object p2, p0, Lcom/bbm/ui/c/aq;->a:Lcom/bbm/d/ei;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/aq;->a:Lcom/bbm/d/ei;

    iget-object v0, v0, Lcom/bbm/d/ei;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/ac;->e(Ljava/lang/String;)V

    return-void
.end method
