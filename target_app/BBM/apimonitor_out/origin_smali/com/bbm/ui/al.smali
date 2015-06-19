.class final Lcom/bbm/ui/al;
.super Ljava/lang/Object;
.source "ChatHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/ae;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/al;->a:Lcom/bbm/ui/ae;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ActionBar Clicked"

    const-class v1, Lcom/bbm/ui/ae;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/al;->a:Lcom/bbm/ui/ae;

    invoke-static {v0}, Lcom/bbm/ui/ae;->k(Lcom/bbm/ui/ae;)Lcom/bbm/j/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method
