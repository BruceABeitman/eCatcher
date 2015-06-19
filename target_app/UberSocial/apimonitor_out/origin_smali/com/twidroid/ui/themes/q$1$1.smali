.class Lcom/twidroid/ui/themes/q$1$1;
.super Lcom/ubermedia/net/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/themes/q$1;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/themes/q$1;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/themes/q$1;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .registers 6

    iput-object p1, p0, Lcom/twidroid/ui/themes/q$1$1;->a:Lcom/twidroid/ui/themes/q$1;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/ubermedia/net/f;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .registers 2

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 2

    return-void
.end method
