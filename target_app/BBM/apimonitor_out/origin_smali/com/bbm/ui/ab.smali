.class final Lcom/bbm/ui/ab;
.super Ljava/lang/Object;
.source "ChannelHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/z;


# direct methods
.method constructor <init>(Lcom/bbm/ui/z;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/ab;->a:Lcom/bbm/ui/z;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ActionBar Clicked"

    const-class v1, Lcom/bbm/ui/z;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/ab;->a:Lcom/bbm/ui/z;

    invoke-virtual {v0}, Lcom/bbm/ui/z;->a_()V

    return-void
.end method
