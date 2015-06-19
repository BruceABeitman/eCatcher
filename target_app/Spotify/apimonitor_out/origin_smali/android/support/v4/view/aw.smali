.class Landroid/support/v4/view/aw;
.super Landroid/support/v4/view/av;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/support/v4/view/av;-><init>()V

    return-void
.end method


# virtual methods
.method public final b(Landroid/view/View;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getOverScrollMode()I

    move-result v0

    return v0
.end method
