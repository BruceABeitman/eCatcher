.class Lcom/twidroid/c/i;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/twidroid/c/f;

.field private final b:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Lcom/twidroid/c/f;Ljava/lang/Throwable;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/c/i;->a:Lcom/twidroid/c/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/twidroid/c/i;->b:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Throwable;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/c/i;->b:Ljava/lang/Throwable;

    return-object v0
.end method
