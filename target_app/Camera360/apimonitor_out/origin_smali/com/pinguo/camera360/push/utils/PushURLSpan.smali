.class public Lcom/pinguo/camera360/push/utils/PushURLSpan;
.super Landroid/text/style/ClickableSpan;
.source "PushURLSpan.java"


# instance fields
.field private context:Landroid/content/Context;

.field private mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->mUrl:Ljava/lang/String;

    iput-object p1, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->context:Landroid/content/Context;

    const-class v2, Lcom/pinguo/camera360/push/business/web/PushWebActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "url"

    iget-object v2, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/pinguo/camera360/push/utils/PushURLSpan;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
