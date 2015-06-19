.class final Landroid/support/v4/widget/an;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/support/v4/widget/al;


# direct methods
.method constructor <init>(Landroid/support/v4/widget/al;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/al;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Landroid/support/v4/widget/an;->a:Landroid/support/v4/widget/al;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/al;->a(I)V

    return-void
.end method
