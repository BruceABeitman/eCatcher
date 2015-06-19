.class final Landroid/support/v4/app/t$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/t;->b(I)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/t;


# direct methods
.method constructor <init>(Landroid/support/v4/app/t;I)V
    .registers 4

    iput-object p1, p0, Landroid/support/v4/app/t$3;->c:Landroid/support/v4/app/t;

    iput p2, p0, Landroid/support/v4/app/t$3;->a:I

    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/t$3;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Landroid/support/v4/app/t$3;->c:Landroid/support/v4/app/t;

    iget-object v1, p0, Landroid/support/v4/app/t$3;->c:Landroid/support/v4/app/t;

    iget-object v1, v1, Landroid/support/v4/app/t;->o:Landroid/support/v4/app/FragmentActivity;

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->a:Landroid/os/Handler;

    iget v1, p0, Landroid/support/v4/app/t$3;->a:I

    iget v2, p0, Landroid/support/v4/app/t$3;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/t;->a(II)Z

    return-void
.end method
