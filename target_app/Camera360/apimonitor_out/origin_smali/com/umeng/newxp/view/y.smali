.class Lcom/umeng/newxp/view/Y;
.super Ljava/lang/Object;
.source "FloatDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/X;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/X;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/Y;->a:Lcom/umeng/newxp/view/X;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/Y;->a:Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/X;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/umeng/newxp/view/Y;->a:Lcom/umeng/newxp/view/X;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/X;->dismiss()V

    :cond_d
    return-void
.end method
