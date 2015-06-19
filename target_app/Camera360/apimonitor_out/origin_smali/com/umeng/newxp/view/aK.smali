.class Lcom/umeng/newxp/view/aK;
.super Ljava/lang/Object;
.source "SimpleDownloadDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aI;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aI;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/aK;->a:Lcom/umeng/newxp/view/aI;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    return-void
.end method
