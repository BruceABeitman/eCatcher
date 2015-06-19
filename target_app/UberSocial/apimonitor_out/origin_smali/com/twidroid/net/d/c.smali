.class public Lcom/twidroid/net/d/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Lcom/twidroid/model/twitter/User;

.field b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>(Lcom/twidroid/model/twitter/User;Ljava/lang/Exception;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/twidroid/net/d/c;->a:Lcom/twidroid/model/twitter/User;

    iput-object p2, p0, Lcom/twidroid/net/d/c;->b:Ljava/lang/Exception;

    return-void
.end method
