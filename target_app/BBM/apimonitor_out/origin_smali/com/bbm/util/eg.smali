.class final Lcom/bbm/util/eg;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/util/ef;


# direct methods
.method constructor <init>(Lcom/bbm/util/ef;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/util/eg;->a:Lcom/bbm/util/ef;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    invoke-static {}, Lcom/bbm/util/fb;->a()V

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/util/eg;->a:Lcom/bbm/util/ef;

    iget-object v1, v1, Lcom/bbm/util/ef;->b:Lcom/bbm/d/fy;

    iget-object v1, v1, Lcom/bbm/d/fy;->b:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/bbm/d/z;->a(Ljava/lang/String;Z)Lcom/bbm/d/am;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    return-void
.end method
