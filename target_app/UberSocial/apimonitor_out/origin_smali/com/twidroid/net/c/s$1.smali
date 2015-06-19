.class Lcom/twidroid/net/c/s$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/c/s;-><init>(Landroid/content/Context;I)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/net/c/s;


# direct methods
.method constructor <init>(Lcom/twidroid/net/c/s;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/net/c/s$1;->a:Lcom/twidroid/net/c/s;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/net/c/s$1;->a:Lcom/twidroid/net/c/s;

    invoke-virtual {v0}, Lcom/twidroid/net/c/s;->dismiss()V

    return-void
.end method
