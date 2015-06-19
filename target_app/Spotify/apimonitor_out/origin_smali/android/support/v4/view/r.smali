.class final Landroid/support/v4/view/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/view/p;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(II)I
    .registers 4

    invoke-static {p1, p2}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v0

    return v0
.end method
