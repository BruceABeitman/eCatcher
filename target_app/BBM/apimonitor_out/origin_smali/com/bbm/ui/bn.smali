.class final Lcom/bbm/ui/bn;
.super Ljava/lang/Object;
.source "EmoticonInputPanel.java"


# instance fields
.field a:Landroid/widget/ImageButton;

.field b:Lcom/bbm/ui/QuickShareBaseView;

.field c:Z


# direct methods
.method public constructor <init>(Landroid/widget/ImageButton;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bbm/ui/bn;->c:Z

    iput-object p1, p0, Lcom/bbm/ui/bn;->a:Landroid/widget/ImageButton;

    return-void
.end method
