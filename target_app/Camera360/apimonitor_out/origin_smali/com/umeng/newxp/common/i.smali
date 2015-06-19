.class Lcom/umeng/newxp/common/i;
.super Ljava/lang/Object;
.source "XpUtils.java"

# interfaces
.implements Lcom/umeng/common/net/p$a;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/common/h;

.field private final synthetic b:Lcom/umeng/newxp/common/g$a;

.field private final synthetic c:Landroid/widget/ImageView;

.field private final synthetic d:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/common/h;Lcom/umeng/newxp/common/g$a;Landroid/widget/ImageView;Ljava/util/List;)V
    .registers 5

    iput-object p1, p0, Lcom/umeng/newxp/common/i;->a:Lcom/umeng/newxp/common/h;

    iput-object p2, p0, Lcom/umeng/newxp/common/i;->b:Lcom/umeng/newxp/common/g$a;

    iput-object p3, p0, Lcom/umeng/newxp/common/i;->c:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/umeng/newxp/common/i;->d:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/umeng/common/net/o$a;)V
    .registers 4

    sget-object v0, Lcom/umeng/common/net/o$a;->a:Lcom/umeng/common/net/o$a;

    if-ne p1, v0, :cond_17

    iget-object v0, p0, Lcom/umeng/newxp/common/i;->c:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/umeng/newxp/common/i;->c:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClickable(Z)V

    iget-object v0, p0, Lcom/umeng/newxp/common/i;->b:Lcom/umeng/newxp/common/g$a;

    iget-object v1, p0, Lcom/umeng/newxp/common/i;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/umeng/newxp/common/g$a;->a(Ljava/util/List;)V

    :cond_17
    return-void
.end method

.method public a(Lcom/umeng/common/net/p$b;)V
    .registers 4

    iget-object v0, p0, Lcom/umeng/newxp/common/i;->b:Lcom/umeng/newxp/common/g$a;

    iget-object v1, p0, Lcom/umeng/newxp/common/i;->c:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Lcom/umeng/newxp/common/g$a;->a(Landroid/widget/ImageView;)V

    return-void
.end method
