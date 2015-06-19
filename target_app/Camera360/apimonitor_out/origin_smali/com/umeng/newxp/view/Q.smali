.class Lcom/umeng/newxp/view/q;
.super Ljava/lang/Object;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/o;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/o;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/q;->a:Lcom/umeng/newxp/view/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/q;->a:Lcom/umeng/newxp/view/o;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/o;->cancel()V

    return-void
.end method
