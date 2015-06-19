.class Lcom/twidroid/ac$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ac;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ac;


# direct methods
.method constructor <init>(Lcom/twidroid/ac;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ac$1;->a:Lcom/twidroid/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/ac$1;->a:Lcom/twidroid/ac;

    invoke-virtual {v0}, Lcom/twidroid/ac;->dismiss()V

    return-void
.end method
