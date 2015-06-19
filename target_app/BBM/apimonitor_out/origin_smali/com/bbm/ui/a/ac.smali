.class final Lcom/bbm/ui/a/ac;
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

    iput-object p1, p0, Lcom/bbm/ui/a/ac;->b:Lcom/bbm/ui/a/z;

    iput-object p2, p0, Lcom/bbm/ui/a/ac;->a:Lcom/bbm/util/ep;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "mHypeButtonOnClickListener Clicked"

    const-class v1, Lcom/bbm/ui/a/z;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    iget-object v0, p0, Lcom/bbm/ui/a/ac;->a:Lcom/bbm/util/ep;

    iget-object v2, v0, Lcom/bbm/util/ep;->e:Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/a/ac;->a:Lcom/bbm/util/ep;

    iget-boolean v0, v0, Lcom/bbm/util/ep;->h:Z

    if-nez v0, :cond_22

    const/4 v0, 0x1

    :goto_16
    iget-object v3, p0, Lcom/bbm/ui/a/ac;->a:Lcom/bbm/util/ep;

    iget-object v3, v3, Lcom/bbm/util/ep;->f:Ljava/lang/String;

    invoke-static {v2, v0, v3}, Lcom/bbm/d/z;->a(Ljava/lang/String;ZLjava/lang/String;)Lcom/bbm/d/au;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void

    :cond_22
    const/4 v0, 0x0

    goto :goto_16
.end method
