.class Lcom/pinguo/lib/util/ViewUtils$1;
.super Ljava/lang/Object;
.source "ViewUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/lib/util/ViewUtils;->setDelayedClickable(Landroid/view/View;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$clickable:Z

.field private final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/lib/util/ViewUtils$1;->val$v:Landroid/view/View;

    iput-boolean p2, p0, Lcom/pinguo/lib/util/ViewUtils$1;->val$clickable:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/pinguo/lib/util/ViewUtils$1;->val$v:Landroid/view/View;

    iget-boolean v1, p0, Lcom/pinguo/lib/util/ViewUtils$1;->val$clickable:Z

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method
