.class final Lcom/twidroid/c/e$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/e;->a(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;)Landroid/app/AlertDialog;
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/e$2;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/e$2;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/twidroid/c/e$2;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :cond_9
    return-void
.end method
