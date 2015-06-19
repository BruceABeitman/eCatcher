.class Lcom/twidroid/c/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/c;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/c;


# direct methods
.method constructor <init>(Lcom/twidroid/c/c;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/c$1;->a:Lcom/twidroid/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/c$1;->a:Lcom/twidroid/c/c;

    invoke-virtual {v0}, Lcom/twidroid/c/c;->dismiss()V

    iget-object v0, p0, Lcom/twidroid/c/c$1;->a:Lcom/twidroid/c/c;

    invoke-virtual {v0}, Lcom/twidroid/c/c;->a()V

    return-void
.end method
