.class Lcom/tencent/connect/avatar/d$1;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/connect/avatar/d;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/avatar/d;


# direct methods
.method constructor <init>(Lcom/tencent/connect/avatar/d;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/connect/avatar/d$1;->a:Lcom/tencent/connect/avatar/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/connect/avatar/d$1;->a:Lcom/tencent/connect/avatar/d;

    iget-object v0, v0, Lcom/tencent/connect/avatar/d;->a:Lcom/tencent/connect/avatar/ImageActivity;

    invoke-static {v0}, Lcom/tencent/connect/avatar/ImageActivity;->g(Lcom/tencent/connect/avatar/ImageActivity;)V

    return-void
.end method
