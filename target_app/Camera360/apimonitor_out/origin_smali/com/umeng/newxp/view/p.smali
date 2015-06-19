.class Lcom/umeng/newxp/view/P;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    iget-object v0, p0, Lcom/umeng/newxp/view/P;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/ExchangeViewManager;->hideBanner()V

    return-void
.end method
