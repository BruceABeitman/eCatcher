.class Lcom/twidroid/c/ac$3;
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

    iput-object p1, p0, Lcom/twidroid/c/ac$3;->a:Lcom/twidroid/c/ac;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10

    iget-object v0, p0, Lcom/twidroid/c/ac$3;->a:Lcom/twidroid/c/ac;

    iget-object v0, v0, Lcom/twidroid/c/ac;->b:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "@"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/c/ac$3;->a:Lcom/twidroid/c/ac;

    iget-object v2, v2, Lcom/twidroid/c/ac;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/4 v6, 0x0

    const-string v7, ""

    invoke-static/range {v0 .. v7}, Lcom/twidroid/d/a;->a(Landroid/content/Context;Ljava/lang/CharSequence;JIILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/twidroid/c/ac$3;->a:Lcom/twidroid/c/ac;

    invoke-virtual {v0}, Lcom/twidroid/c/ac;->dismiss()V

    return-void
.end method
