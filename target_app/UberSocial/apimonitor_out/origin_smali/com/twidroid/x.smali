.class Lcom/twidroid/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lcom/twidroid/fragments/a/c;

.field final synthetic b:Lcom/twidroid/TwidroidClient;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient;Lcom/twidroid/fragments/a/c;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/x;->b:Lcom/twidroid/TwidroidClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/x;->a:Lcom/twidroid/fragments/a/c;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 1

    return-void
.end method
