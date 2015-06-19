.class final Lcom/bbm/util/al;
.super Ljava/lang/Object;
.source "ChannelUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/bbm/ui/b/o;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/bbm/ui/b/o;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/util/al;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/bbm/util/al;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/bbm/util/al;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/bbm/util/al;->d:Lcom/bbm/ui/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/util/al;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/bbm/util/al;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/bbm/util/al;->c:Ljava/lang/String;

    new-instance v4, Lcom/bbm/d/bq;

    invoke-direct {v4, v1, v2, v3}, Lcom/bbm/d/bq;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V

    iget-object v0, p0, Lcom/bbm/util/al;->d:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V

    return-void
.end method
