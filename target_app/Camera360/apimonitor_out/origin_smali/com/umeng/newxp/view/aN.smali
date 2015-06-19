.class Lcom/umeng/newxp/view/aN;
.super Ljava/lang/Object;
.source "WapActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/umeng/newxp/view/aL;


# direct methods
.method constructor <init>(Lcom/umeng/newxp/view/aL;)V
    .registers 2

    iput-object p1, p0, Lcom/umeng/newxp/view/aN;->a:Lcom/umeng/newxp/view/aL;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/umeng/newxp/view/aN;->a:Lcom/umeng/newxp/view/aL;

    invoke-virtual {v0}, Lcom/umeng/newxp/view/aL;->finish()V

    return-void
.end method
