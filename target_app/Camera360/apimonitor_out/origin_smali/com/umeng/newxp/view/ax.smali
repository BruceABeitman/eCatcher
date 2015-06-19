.class Lcom/umeng/newxp/view/ax;
.super Ljava/lang/Object;
.source "ListDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/au;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/au;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/au;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/ax;->a:Lcom/umeng/newxp/view/au;

    invoke-static {v0}, Lcom/umeng/newxp/view/au;->g(Lcom/umeng/newxp/view/au;)V

    return-void
.end method
