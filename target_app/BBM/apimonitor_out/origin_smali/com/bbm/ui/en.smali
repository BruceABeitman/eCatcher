.class final Lcom/bbm/ui/en;
.super Ljava/lang/Object;
.source "ProfileIconHelper.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/o;

.field final synthetic b:Landroid/app/Activity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/b/o;Landroid/app/Activity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/en;->a:Lcom/bbm/ui/b/o;

    iput-object p2, p0, Lcom/bbm/ui/en;->b:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/en;->a:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->cancel()V

    iget-object v0, p0, Lcom/bbm/ui/en;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
