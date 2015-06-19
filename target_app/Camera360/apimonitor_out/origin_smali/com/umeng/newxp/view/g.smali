.class Lcom/umeng/newxp/view/G;
.super Ljava/lang/Object;
.source "ExchangeViewManager.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/ExchangeViewManager;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/ExchangeViewManager;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/G;->a:Lcom/umeng/newxp/view/ExchangeViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
