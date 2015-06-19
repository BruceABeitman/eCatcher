.class final Lcom/bbm/ui/a/ab;
.super Ljava/lang/Object;
.source "UpdatesAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/util/ep;

.field final synthetic b:Lcom/bbm/ui/a/z;


# direct methods
.method constructor <init>(Lcom/bbm/ui/a/z;Lcom/bbm/util/ep;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/a/ab;->b:Lcom/bbm/ui/a/z;

    iput-object p2, p0, Lcom/bbm/ui/a/ab;->a:Lcom/bbm/util/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/a/ab;->b:Lcom/bbm/ui/a/z;

    invoke-static {v0}, Lcom/bbm/ui/a/z;->b(Lcom/bbm/ui/a/z;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/a/ab;->a:Lcom/bbm/util/ep;

    iget-object v1, v1, Lcom/bbm/util/ep;->f:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/ui/a/ab;->a:Lcom/bbm/util/ep;

    iget-object v2, v2, Lcom/bbm/util/ep;->e:Ljava/lang/String;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/ac;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method
