.class final Landroid/support/v4/app/t$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/t;
.end annotation


# instance fields
.field final synthetic a:Landroid/support/v4/app/t;


# direct methods
.method constructor <init>(Landroid/support/v4/app/t;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v4/app/t$1;->a:Landroid/support/v4/app/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Landroid/support/v4/app/t$1;->a:Landroid/support/v4/app/t;

    invoke-virtual {v0}, Landroid/support/v4/app/t;->h()Z

    return-void
.end method
