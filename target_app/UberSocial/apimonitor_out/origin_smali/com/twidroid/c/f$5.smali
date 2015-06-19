.class Lcom/twidroid/c/f$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/f;->p()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/f;


# direct methods
.method constructor <init>(Lcom/twidroid/c/f;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/f$5;->a:Lcom/twidroid/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/c/f$5;->a:Lcom/twidroid/c/f;

    invoke-virtual {v0}, Lcom/twidroid/c/f;->a()V

    iget-object v0, p0, Lcom/twidroid/c/f$5;->a:Lcom/twidroid/c/f;

    invoke-virtual {v0}, Lcom/twidroid/c/f;->dismiss()V

    return-void
.end method
