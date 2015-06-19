.class final Lcom/bbm/util/eb;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/bbm/util/ea;


# direct methods
.method constructor <init>(Lcom/bbm/util/ea;Z)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/eb;->b:Lcom/bbm/util/ea;

    iput-boolean p2, p0, Lcom/bbm/util/eb;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    invoke-static {}, Lcom/bbm/util/fb;->a()V

    invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;

    iget-boolean v1, p0, Lcom/bbm/util/eb;->a:Z

    iget-object v2, p0, Lcom/bbm/util/eb;->b:Lcom/bbm/util/ea;

    iget-object v2, v2, Lcom/bbm/util/ea;->b:Lcom/bbm/d/ga;

    invoke-static {v2}, Lcom/bbm/util/dy;->a(Lcom/bbm/d/ga;)Lcom/bbm/d/gt;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/util/eb;->b:Lcom/bbm/util/ea;

    iget-object v3, v3, Lcom/bbm/util/ea;->c:Lcom/bbm/d/gp;

    iget-object v3, v3, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Lcom/bbm/util/dy;->a(ZLcom/bbm/d/gt;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    const-string v2, "userBlockedItem"

    invoke-static {v1, v2}, Lcom/bbm/d/z;->d(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/dc;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void
.end method
