.class final Lcom/facebook/widget/ToolTipPopup$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ToolTipPopup;->a()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/ToolTipPopup;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ToolTipPopup;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ToolTipPopup$2;->a:Lcom/facebook/widget/ToolTipPopup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ToolTipPopup$2;->a:Lcom/facebook/widget/ToolTipPopup;

    invoke-virtual {v0}, Lcom/facebook/widget/ToolTipPopup;->b()V

    return-void
.end method
