.class Lcom/twidroid/c/a$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/c/a;->onStart()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/c/a;


# direct methods
.method constructor <init>(Lcom/twidroid/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/c/a$2;->a:Lcom/twidroid/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/c/a$2;->a:Lcom/twidroid/c/a;

    invoke-virtual {v0}, Lcom/twidroid/c/a;->dismiss()V

    return-void
.end method
