.class abstract Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;
.super Ljava/lang/Object;
.source "ProGuard"
.implements Landroid/view/View$OnClickListener;
.field  a:Landroid/app/Dialog;
.field final synthetic b:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;
.method constructor <init>(Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;Landroid/app/Dialog;)V
.registers 3
iput-object p1, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;->b:Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/tencent/connect/auth/AuthAgent$FeedConfirmListener$ButtonListener;->a:Landroid/app/Dialog;
return-void
.end method