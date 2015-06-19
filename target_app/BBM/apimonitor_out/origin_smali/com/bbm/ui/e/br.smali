.class final Lcom/bbm/ui/e/br;
.super Ljava/lang/Object;
.source "ReinviteHolder.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/e/bp;


# direct methods
.method constructor <init>(Lcom/bbm/ui/e/bp;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/e/br;->a:Lcom/bbm/ui/e/bp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Accept Clicked"

    const-class v1, Lcom/bbm/ui/e/bp;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/e/br;->a:Lcom/bbm/ui/e/bp;

    invoke-static {v0}, Lcom/bbm/ui/e/bp;->g(Lcom/bbm/ui/e/bp;)Lcom/bbm/j/u;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    return-void
.end method
