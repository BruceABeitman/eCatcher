.class Lcom/umeng/newxp/view/k;
.super Ljava/lang/Object;
.source "CloudDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/i;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/i;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/k;->a:Lcom/umeng/newxp/view/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/k;->a:Lcom/umeng/newxp/view/i;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/i;->a()V

    return-void
.end method
