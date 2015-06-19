.class final Landroid/support/v4/app/t$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/t;->c()V
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/t;


# direct methods
.method constructor <init>(Landroid/support/v4/app/t;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/t$2;->a:Landroid/support/v4/app/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/t$2;->a:Landroid/support/v4/app/t;

    iget-object v1, p0, Landroid/support/v4/app/t$2;->a:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/t;->a(II)Z

    return-void
.end method
