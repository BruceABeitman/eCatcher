.class abstract Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;
.super Ljava/lang/Object;
.source "ProGuard"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "ButtonListener"
.end annotation


# instance fields
.field a:Landroid/app/Dialog;

.field final synthetic b:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;Landroid/app/Dialog;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;->b:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;->a:Landroid/app/Dialog;

    return-void
.end method
