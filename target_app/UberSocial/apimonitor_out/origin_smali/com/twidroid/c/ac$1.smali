.class Lcom/twidroid/c/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/ac;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/ac;


# direct methods
.method constructor <init>(Lcom/twidroid/c/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/ac$1;->a:Lcom/twidroid/c/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/c/ac$1;->a:Lcom/twidroid/c/ac;

    iget-object v0, v0, Lcom/twidroid/c/ac;->b:Landroid/content/Context;

    iget-object v1, p0, Lcom/twidroid/c/ac$1;->a:Lcom/twidroid/c/ac;

    iget-object v1, v1, Lcom/twidroid/c/ac;->a:Ljava/lang/String;

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/twidroid/c/ac$1;->a:Lcom/twidroid/c/ac;

    invoke-virtual {v0}, Lcom/twidroid/c/ac;->dismiss()V

    return-void
.end method
