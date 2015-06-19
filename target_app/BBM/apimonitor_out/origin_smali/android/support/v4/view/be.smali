.class final Landroid/support/v4/view/be;
.super Ljava/lang/Object;
.source "ViewConfigurationCompat.java"

# interfaces
.implements Landroid/support/v4/view/bf;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/ViewConfiguration;)I
    .registers 3

    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledPagingTouchSlop()I

    move-result v0

    return v0
.end method
