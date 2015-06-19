.class Lcom/twidroid/fragments/f$15;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/ubermedia/ui/d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f;->y()V
.end annotation


# instance fields
.field final synthetic a:Lcom/ubermedia/ui/StringSpanInfo;

.field final synthetic b:Lcom/twidroid/fragments/f;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f;Lcom/ubermedia/ui/StringSpanInfo;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/f$15;->b:Lcom/twidroid/fragments/f;

    iput-object p2, p0, Lcom/twidroid/fragments/f$15;->a:Lcom/ubermedia/ui/StringSpanInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/twidroid/fragments/f$15;->b:Lcom/twidroid/fragments/f;

    iget-object v1, p0, Lcom/twidroid/fragments/f$15;->a:Lcom/ubermedia/ui/StringSpanInfo;

    invoke-static {v0, v1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Lcom/ubermedia/ui/StringSpanInfo;)V

    iget-object v0, p0, Lcom/twidroid/fragments/f$15;->b:Lcom/twidroid/fragments/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Landroid/view/View;)V

    return-void
.end method
